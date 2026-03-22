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
  private readonly apiUrl = 'http://127.0.0.1:8000/api/trains';

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

    return this.http.get<TrainResponse>('http://127.0.0.1:8000/api/trains/two', {
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
      `${this.apiUrl}/download/csv/two`,
      { ids },
      {
        headers,
        responseType: 'blob', // important for file download
      },
    );
  }

  uploadTrainData(file: File): Observable<any> {
    const formData = new FormData();
    formData.append('file', file);
    return this.http.post(`${this.apiUrl}/upload`, formData, {
      reportProgress: true,
      observe: 'events',
    });
  }

  getUploadStatus(taskId: string): Observable<any> {
    return this.http.get(`${this.apiUrl}/upload/status/${taskId}`);
  }

  getExports(): Observable<any> {
    return this.http.get('http://127.0.0.1:8000/api/users/me/exports');
  }

  getUploadedDatasets(): Observable<any> {
    return this.http.get(`${this.apiUrl}/uploads`);
  }

  deleteUpload(uploadId: string): Observable<any> {
    return this.http.delete(`${this.apiUrl}/uploads/${uploadId}`);
  }

  downloadCsv(search?: string): Observable<Blob> {
    let params = new HttpParams();
    if (search) {
      params = params.set('search', search);
    }
    return this.http.get(`${this.apiUrl}/download/csv`, { params, responseType: 'blob' });
  }
}
