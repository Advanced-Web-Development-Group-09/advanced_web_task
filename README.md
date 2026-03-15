# AWD Project

This project consists of a Python FastAPI backend and an Angular frontend.

## How to Run the Application

### Prerequisites

- Python 3.7+
- Node.js and npm

### Backend

1.  **Navigate to the backend directory:**
    ```bash
    cd backend
    ```

2.  **Create a virtual environment:**
    ```bash
    python -m venv .venv
    ```

3.  **Activate the virtual environment:**
    -   On Windows:
        ```bash
        .venv\Scripts\activate
        ```
    -   On macOS and Linux:
        ```bash
        source .venv/bin/activate
        ```

4.  **Install the dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

5.  **Run the backend server:**
    ```bash
    uvicorn main:app --reload
    ```
    The backend will be running at `http://127.0.0.1:8000`.

### Frontend

1.  **Navigate to the frontend directory:**
    ```bash
    cd awd-frontend
    ```

2.  **Install the dependencies:**
    ```bash
    npm install
    ```

3.  **Run the frontend server:**
    ```bash
    npm start
    ```
    The frontend will be running at `http://localhost:4200/`.

## API Documentation

The FastAPI backend automatically generates interactive API documentation using Swagger UI. Once the backend is running, you can access it at:

[http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

This interface allows you to view all the API endpoints, see their request and response models, and test them directly from your browser.
