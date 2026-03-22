import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from './environment';

@Injectable({
  providedIn: 'root',
})
export class TrainService {
  private apiUrl = 'http://127.0.0.1:8000/api/trains';

  constructor(private http: HttpClient) {}

  getTrains(skip: number = 0, limit: number = 50, search?: string): Observable<any> {
    let params = new HttpParams().set('skip', skip.toString()).set('limit', limit.toString());

    if (search) {
      params = params.set('search', search);
    }

    return this.http.get(this.apiUrl, { params });
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
    return this.http.get(`${environment.apiUrl}/users/me/exports`);
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
