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

The FastAPI backend provides a full REST API for the Angular frontend, automatically generating interactive API documentation using Swagger UI. Once the backend is running, you can access it at:

[http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

Below is the complete breakdown of the REST API endpoints, their CRUD operations, and how they map to the project requirements.

### Authentication & User Management
*   **POST** `/api/auth/register`
    *   **Description:** Register a new user account.
    *   **Payload (JSON):**
        ```json
        {
          "username": "johndoe",
          "email": "john@example.com",
          "password": "StrongPassword123!"
        }
        ```
    *   **Requirements:** MR22, MR25
*   **POST** `/api/auth/login`
    *   **Description:** Authenticate a user and return a JWT access token.
    *   **Payload (application/x-www-form-urlencoded):**
        `username=john@example.com`
        `password=StrongPassword123!`
    *   **Requirements:** MR23, MR27
*   **POST** `/api/auth/logout`
    *   **Description:** Invalidate the user's active session/token.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR24
*   **GET** `/api/users/me`
    *   **Description:** Retrieve the logged-in user's profile information.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR26, SR8, SR9, CR05
*   **PUT** `/api/users/me/password`
    *   **Description:** Change user password.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Payload (JSON):**
        ```json
        {
          "current_password": "OldPassword123!",
          "new_password": "NewStrongPassword456!"
        }
        ```
    *   **Requirements:** MR28
*   **DELETE** `/api/users/me`
    *   **Description:** Permanently delete the user account.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR29, MR42
*   **GET** `/api/users/leaderboard`
    *   **Description:** Retrieve the top 5 users based on reward points accumulated from data uploads.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** CR06

### Train Data (CRUD)
*   **GET** `/api/trains`
    *   **Description:** Retrieve paginated train data.
    *   **Query Params:** `?search=Berlin&sort_by_departure=true&skip=0&limit=50`
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR30, MR32, MR39, SR12
*   **GET** `/api/trains/{train_id}`
    *   **Description:** Retrieve all detailed attributes for a specific train record.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR31
*   **POST** `/api/trains/upload`
    *   **Description:** Upload a CSV file of train data as a background task.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Payload (multipart/form-data):** `file=@your_file.csv`
    *   **Returns:** `{"message": "Upload started...", "task_id": "task_upload_xyz"}`
    *   **Requirements:** MR33, MR34, SR7, CR4
*   **GET** `/api/trains/upload/status/{task_id}`
    *   **Description:** Poll the progress of the background CSV upload task.
    *   **Headers:** `Authorization: Bearer <token>`
*   **DELETE** `/api/trains/uploads/{upload_id}`
    *   **Description:** Delete train data previously uploaded by the user.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR40, MR42
*   **GET** `/api/trains/download/csv`
    *   **Description:** Download the currently filtered list of train data as a CSV file. Adds an entry to the user's export history.
    *   **Query Params:** `?search=Berlin&sort_by_departure=true`
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR35, SR11

### Routing & Map (Virtual Map)
*   **GET** `/api/routing/stations`
    *   **Description:** Retrieve all indexed stations with coordinates to render the map.
    *   **Headers:** `Authorization: Bearer <token>`
*   **GET** `/api/routing/bundeslands`
    *   **Description:** Retrieve indexed stations categorized hierarchically by Bundesland and City.
    *   **Headers:** `Authorization: Bearer <token>`
*   **GET** `/api/routing/route`
    *   **Description:** Calculate the optimal DB train route between two stations.
    *   **Query Params:** `?source=Berlin Hbf&destination=München Hbf`
    *   **Headers:** `Authorization: Bearer <token>`

### Calculations & Analytics
*   **POST** `/api/analytics/cancellation-odds`
    *   **Description:** Start a long-running calculation task to determine cancellation odds between two stations. Returns a `task_id`.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Payload (JSON):**
        ```json
        {
          "station_a": "Berlin Hbf",
          "station_b": "München Hbf"
        }
        ```
    *   **Requirements:** MR36
*   **POST** `/api/analytics/average-delay`
    *   **Description:** Start a background task to calculate the average delay of trains for a given Bundesland.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Payload (JSON):**
        ```json
        {
          "bundesland": "Bayern"
        }
        ```
    *   **Requirements:** MR37
*   **POST** `/api/analytics/delay-reasons`
    *   **Description:** Start a background task to retrieve an overview of the 5 most common reasons for train delays.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Payload:** `{}` (Empty JSON object)
    *   **Requirements:** SR10
*   **GET** `/api/analytics/status/{task_id}`
    *   **Description:** Poll the progress status of any background calculation task. Returns `progress_percentage` and `status`.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** MR38

### User History
*   **GET** `/api/users/me/exports`
    *   **Description:** Retrieve a history list of past data exports/downloads and their timestamps.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** SR11
*   **GET** `/api/users/me/searches`
    *   **Description:** Retrieve the user's 5 most recent search queries.
    *   **Headers:** `Authorization: Bearer <token>`
    *   **Requirements:** SR12

---

## Connecting the Angular Frontend to the Backend

To connect your Angular application to this FastAPI backend, follow these integration steps:

### 1. Configure the API Base URL
Store your backend URL in your Angular environment files.
```typescript
// src/environments/environment.ts
export const environment = {
  production: false,
  apiUrl: 'http://127.0.0.1:8000/api'
};
```

### 2. Automatically Attach the JWT Token (HttpInterceptor)
Create an Angular Interceptor to pull the token from `localStorage` and attach it to the `Authorization` header of every outgoing request.
```typescript
// auth.interceptor.ts
import { HttpInterceptorFn } from '@angular/common/http';

export const authInterceptor: HttpInterceptorFn = (req, next) => {
  const token = localStorage.getItem('access_token');
  if (token) {
    req = req.clone({
      setHeaders: { Authorization: `Bearer ${token}` }
    });
  }
  return next(req);
};
```
Register it in your `app.config.ts`:
```typescript
import { provideHttpClient, withInterceptors } from '@angular/common/http';
import { authInterceptor } from './auth.interceptor';

export const appConfig: ApplicationConfig = {
  providers: [
    provideHttpClient(withInterceptors([authInterceptor]))
  ]
};
```

### 3. Handle Polling for Background Tasks (Progress Bars)
For endpoints that trigger long calculations (e.g. `/api/analytics/average-delay`) or heavy file processing (e.g. `/api/trains/upload`), use **RxJS** to automatically ping the status endpoint. Bind the `progress_percentage` result directly to your Angular HTML (e.g. `<mat-progress-bar [value]="progress">`).

```typescript
import { HttpClient } from '@angular/common/http';
import { Injectable, inject } from '@angular/core';
import { Observable, timer } from 'rxjs';
import { switchMap, takeWhile } from 'rxjs/operators';
import { environment } from '../environments/environment';

@Injectable({ providedIn: 'root' })
export class AnalyticsService {
  private http = inject(HttpClient);

  calculateAverageDelay(bundesland: string): Observable<any> {
    // 1. Start the POST request
    return this.http.post<{task_id: string}>(`${environment.apiUrl}/analytics/average-delay`, { bundesland })
      .pipe(
        switchMap(res => 
          // 2. Poll the status endpoint every 500 milliseconds
          timer(0, 500).pipe(
            switchMap(() => this.http.get<any>(`${environment.apiUrl}/analytics/status/${res.task_id}`)),
            // 3. Automatically stop polling when 'completed' or 'failed'
            takeWhile(status => status.status !== 'completed' && status.status !== 'failed', true)
          )
        )
      );
  }
}
```

---

## Technical Requirements & Frontend Integration Checklist

*   **T01:** The frontend is built using **Angular**.
*   **T02:** The system provides full navigation via the **Angular Router** (MR41).
*   **T03:** Integration is seamlessly tied to this **FastAPI** backend via HTTP standard requests (JWT Bearer Auth).
*   **T04 & T05:** Test coverage (>60%) is maintained using **Karma** for unit tests and E2E frameworks (like Cypress/Protractor).
*   **T06 & T08:** Environment is prepared for VirtualBox VM deployment.

### Frontend UI/UX Mappings
*   **Router & Navigation:** Implements `RouterModule` to navigate between Dashboard, Data Table, Upload, Analytics, and Profile (MR41).
*   **Theme & Language Switcher:** Angular services toggle CSS variables and `ngx-translate` based on Profile API data (SR8, SR9).
*   **Drag-and-Drop:** Angular directives handle visual feedback and file parsing before sending `FormData` to `/api/trains/upload` (SR7).
*   **Dialogs:** Irreversible actions (account deletion, data deletion) trigger an Angular Material (or equivalent) Dialog to satisfy MR42.
*   **Long-Polling / WebSockets:** Uses RxJS intervals to poll `/api/analytics/tasks/{task_id}` to update an Angular Progress Bar component for long computations (MR38).
