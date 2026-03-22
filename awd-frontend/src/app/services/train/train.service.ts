import { Injectable } from '@angular/core';
import { HttpClient, HttpParams, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface Train {
  id: string;
  journey_id: string;
  line: string;
  station: string;
  city: string;
  departure_plan: string;
}

export interface TrainResponse {
  total: number;
  items: Train[];
}

@Injectable({
  providedIn: 'root',
})
export class TrainService {
  private readonly apiUrl = 'http://localhost:8000/api/trains';

  constructor(private http: HttpClient) {}

  getTrains(skip: number = 0, limit: number = 100, search?: string): Observable<TrainResponse> {
    const token = localStorage.getItem('token');

    let params = new HttpParams().set('skip', skip).set('limit', limit);

    // Add search param only if it exists
    if (search && search.trim().length > 0) {
      params = params.set('search', search.trim());
    }

    const headers = new HttpHeaders({
      Authorization: `Bearer ${token}`,
    });

    return this.http.get<TrainResponse>(this.apiUrl, {
      params,
      headers,
    });
  }

  exportSelectedTrains(ids: string[]): Observable<Blob> {
    const token = localStorage.getItem('token');

    const headers = new HttpHeaders({
      Authorization: `Bearer ${token}`,
      'Content-Type': 'application/json',
    });

    return this.http.post(
      `${this.apiUrl}/download/csv`,
      { ids },
      {
        headers,
        responseType: 'blob', // important for file download
      },
    );
  }
}
