from fastapi import APIRouter, Depends, HTTPException
from sqlalchemy.orm import Session
from app.database import get_db
from app.models import Train, User
from app.api.deps import get_current_user
from collections import defaultdict, deque

router = APIRouter()

# In-memory cache for the routing graph to prevent heavy DB loads on every request
graph_cache = {
    "is_built": False,
    "stations": [],
    "graph": defaultdict(set),
    "bundeslands": defaultdict(lambda: defaultdict(list))
}

def build_graph(db: Session):
    """Indexes the map and connections by building an adjacency list."""
    if graph_cache["is_built"]:
        return
        
    # 1. Fetch unique stations with coordinates, state, and city for the virtual map
    stations_query = db.query(Train.station, Train.latitude, Train.longitude, Train.state, Train.city).filter(
        Train.station.isnot(None),
        Train.latitude.isnot(None), 
        Train.longitude.isnot(None)
    ).distinct().all()
    
    seen = set()
    for s, lat, lng, state, city in stations_query:
        if s not in seen and s != "":
            graph_cache["stations"].append({"station": s, "lat": lat, "lng": lng, "state": state, "city": city})
            seen.add(s)
            if state and city:
                graph_cache["bundeslands"][state][city].append({"station": s, "lat": lat, "lng": lng})

    # 2. Build adjacency list for routing based on journey_id
    # Trains sharing the same journey_id represent a connected path
    trains = db.query(Train.journey_id, Train.station).order_by(Train.departure_plan).all()
    
    journeys = defaultdict(list)
    for t in trains:
        if t.station:
            journeys[t.journey_id].append(t.station)
            
    # 3. Create the connections between stations
    for j_id, stations in journeys.items():
        for i in range(len(stations) - 1):
            graph_cache["graph"][stations[i]].add(stations[i+1])
            # Make bidirectional so the traveler can find a way back
            graph_cache["graph"][stations[i+1]].add(stations[i])
            
    graph_cache["is_built"] = True

@router.get("/stations")
def get_map_stations(db: Session = Depends(get_db), current_user: User = Depends(get_current_user)):
    """Retrieve all indexed stations and their coordinates to render on a virtual map."""
    build_graph(db)
    return graph_cache["stations"]

@router.get("/bundeslands")
def get_map_bundeslands(db: Session = Depends(get_db), current_user: User = Depends(get_current_user)):
    """Retrieve indexed stations categorized by Bundesland and City."""
    build_graph(db)
    return {state: dict(cities) for state, cities in graph_cache["bundeslands"].items()}

@router.get("/route")
def calculate_route(source: str, destination: str, db: Session = Depends(get_db), current_user: User = Depends(get_current_user)):
    """Calculate the shortest train route between two stations (DB Traveler)."""
    build_graph(db)
    
    graph = graph_cache["graph"]
    if source not in graph:
        raise HTTPException(status_code=404, detail="Source station not found or has no connections.")
        
    # BFS for shortest path (fewest stops) - Faster than Dijkstra for unweighted graphs
    queue = deque([(source, 0)])
    visited = {source}
    parents = {source: None}
    
    while queue:
        current_station, cost = queue.popleft()
        
        if current_station == destination:
            # Reconstruct the optimal path using the parents dictionary
            path = []
            curr = destination
            while curr is not None:
                path.append(curr)
                curr = parents[curr]
            path.reverse()
            return {"route": path, "total_stops": cost}
            
        for neighbor in graph.get(current_station, []):
            if neighbor not in visited:
                visited.add(neighbor)
                parents[neighbor] = current_station
                queue.append((neighbor, cost + 1))
                
    raise HTTPException(status_code=404, detail="No route found between these stations.")