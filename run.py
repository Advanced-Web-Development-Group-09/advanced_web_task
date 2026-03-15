import subprocess
import os
import platform

def print_instructions(message):
    print("="*50)
    print(message)
    print("="*50)

def main():
    """
    This script automates the startup of the backend and frontend servers.
    """
    backend_dir = "backend"
    frontend_dir = "awd-frontend"

    # --- Backend Setup ---
    backend_venv = os.path.join(backend_dir, ".venv")
    if not os.path.isdir(backend_venv):
        print_instructions(
            "Backend virtual environment not found.
"
            "Please run the following commands in the 'backend' directory:
"
            "1. python -m venv .venv
"
            "2. source .venv/bin/activate (or .venv\Scripts\activate on Windows)
"
            "3. pip install -r requirements.txt"
        )
        return

    # --- Frontend Setup ---
    frontend_node_modules = os.path.join(frontend_dir, "node_modules")
    if not os.path.isdir(frontend_node_modules):
        print_instructions(
            "Frontend dependencies not found.
"
            "Please run 'npm install' in the 'awd-frontend' directory."
        )
        return

    # --- Start Servers ---
    print("Starting servers...")

    # Start backend
    backend_command = [
        os.path.join(backend_venv, "bin", "uvicorn"),
        "main:app",
        "--reload"
    ]
    if platform.system() == "Windows":
        backend_command[0] = os.path.join(backend_venv, "Scripts", "uvicorn.exe")

    backend_process = subprocess.Popen(backend_command, cwd=backend_dir)
    print(f"Backend server started with PID: {backend_process.pid}")


    # Start frontend
    frontend_command = ["npm", "start"]
    if platform.system() == "Windows":
        frontend_command.insert(0, "cmd")
        frontend_command.insert(1, "/c")

    frontend_process = subprocess.Popen(frontend_command, cwd=frontend_dir)
    print(f"Frontend server started with PID: {frontend_process.pid}")


    print_instructions(
        "Backend and frontend servers are starting.
"
        "Backend will be at http://127.0.0.1:8000
"
        "Frontend will be at http://localhost:4200/

"
        "To stop the servers, press Ctrl+C in this terminal."
    )

    try:
        backend_process.wait()
        frontend_process.wait()
    except KeyboardInterrupt:
        print("
Shutting down servers...")
        backend_process.terminate()
        frontend_process.terminate()
        print("Servers shut down.")


if __name__ == "__main__":
    main()
