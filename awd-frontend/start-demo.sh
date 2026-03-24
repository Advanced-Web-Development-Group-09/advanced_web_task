#!/bin/bash
# Master Demo Script for Mr. Holger

echo "====================================================="
echo "🚀 Starting Advanced Web Task Demo for Mr. Holger..."
echo "====================================================="

# 1. Start the Python Backend
echo "-> [1/5] Starting Python Backend in the background..."
FRONTEND_DIR=$(pwd)

# Navigate to the backend directory (assuming it is a sibling folder)
cd ../awd-backend 2>/dev/null || cd ../backend 2>/dev/null || cd ../advanced_web_task_backend 2>/dev/null || echo "⚠️ Warning: Backend folder not found! Please check folder structure."

# Activate virtual environment if it exists
if [ -d ".venv" ]; then
    source .venv/bin/activate
elif [ -d "venv" ]; then
    source venv/bin/activate
fi

# Start the backend (FastAPI/uvicorn on port 8000)
python3 -m uvicorn main:app --host 127.0.0.1 --port 8000 &
BACKEND_PID=$!

echo "-> [2/5] Waiting 5 seconds for backend to initialize on port 8000..."
sleep 5

# 2. Start the Angular Frontend
cd "$FRONTEND_DIR" || exit
echo "-> [3/5] Starting Angular Frontend in the background..."
npx ng serve --host 0.0.0.0 --port 4200 &
FRONTEND_PID=$!

echo "-> Waiting 15 seconds for Angular to compile and start fully..."
sleep 15

# 3. Open Application in Mozilla Firefox
echo "-> [4/5] Opening the application in Mozilla Firefox..."
if command -v firefox &> /dev/null; then
    firefox "http://localhost:4200" &
else
    xdg-open "http://localhost:4200" &
fi

# 4. Open Tests in a New Terminal
echo "-> [5/5] Opening test coverage in a new terminal window..."
if command -v gnome-terminal &> /dev/null; then
    gnome-terminal --title="Angular Tests & Coverage" -- bash -c "cd \"$FRONTEND_DIR\" && ./run-tests.sh; echo ''; echo '🏁 Tests complete! Press Enter to close this window...'; read"
elif command -v xterm &> /dev/null; then
    xterm -title "Angular Tests & Coverage" -e bash -c "cd \"$FRONTEND_DIR\" && ./run-tests.sh; echo ''; echo '🏁 Tests complete! Press Enter to close this window...'; read"
else
    echo "⚠️ No supported terminal emulator found for a new window. Running tests here instead:"
    ./run-tests.sh
fi

echo "====================================================="
echo "✅ Application is fully running!"
echo "🔗 Access the Frontend at: http://localhost:4200"
echo "🛑 Press [CTRL+C] here in this terminal to stop both the Backend and Frontend servers."
echo "====================================================="

# Trap Ctrl+C to kill the background processes gracefully
trap "echo -e '\n🛑 Stopping servers...'; kill $BACKEND_PID $FRONTEND_PID 2>/dev/null; exit" INT TERM
wait