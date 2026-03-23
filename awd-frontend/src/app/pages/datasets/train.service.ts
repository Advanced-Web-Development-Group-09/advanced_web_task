import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class TrainService {
  // Adjust the base URL if your backend endpoints differ slightly
  private apiUrl = 'http://127.0.0.1:8000/api/trains';

  constructor(private http: HttpClient) {}

  getUploadedDatasets(): Observable<any> {
    return this.http.get(`${this.apiUrl}/datasets`);
  }

  getExports(): Observable<any> {
    return this.http.get(`${this.apiUrl}/exports`);
  }

  uploadTrainData(file: File): Observable<any> {
    const formData = new FormData();
    formData.append('file', file);
    return this.http.post(`${this.apiUrl}/upload`, formData, {
      reportProgress: true,
      observe: 'events'
    });
  }

  getUploadStatus(taskId: string): Observable<any> {
    return this.http.get(`${this.apiUrl}/upload/status/${taskId}`);
  }

  downloadExportsZip(): Observable<Blob> {
    return this.http.get(`${this.apiUrl}/download/exports/zip`, { 
      responseType: 'blob' 
    });
  }

  downloadCsv(): Observable<Blob> {
    return this.http.get(`${this.apiUrl}/download/csv`, { 
      responseType: 'blob' 
    });
  }

  downloadJson(): Observable<Blob> {
    return this.http.get(`${this.apiUrl}/download/json`, { 
      responseType: 'blob' 
    });
  }

  downloadExcel(): Observable<Blob> {
    return this.http.get(`${this.apiUrl}/download/excel`, { 
      responseType: 'blob' 
    });
  }

  deleteUpload(uploadId: string | number): Observable<any> {
    return this.http.delete(`${this.apiUrl}/datasets/${uploadId}`);
  }
}