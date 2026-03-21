import { Injectable, inject } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { Observable, timer } from 'rxjs';
import { switchMap, takeWhile } from 'rxjs/operators';
import { environment } from './environment';

@Injectable({ providedIn: 'root' })
export class TrainService {
  private http = inject(HttpClient);
  private apiUrl = environment.apiUrl;

  getTrains(search?: string, sortByDeparture?: boolean, skip = 0, limit = 50): Observable<any> {
    let params = new HttpParams().set('skip', skip).set('limit', limit);
    if (search) params = params.set('search', search);
    if (sortByDeparture) params = params.set('sort_by_departure', sortByDeparture);
    return this.http.get(`${this.apiUrl}/trains`, { params });
  }

  getTrainDetails(id: string): Observable<any> {
    return this.http.get(`${this.apiUrl}/trains/${id}`);
  }

  uploadCsv(file: File): Observable<any> {
    const formData = new FormData();
    formData.append('file', file);
    return this.http.post<{task_id: string}>(`${this.apiUrl}/trains/upload`, formData).pipe(
      switchMap(res => 
        timer(0, 1000).pipe(
          switchMap(() => this.http.get<any>(`${this.apiUrl}/trains/upload/status/${res.task_id}`)),
          takeWhile(status => status.status !== 'completed' && status.status !== 'failed', true)
        )
      )
    );
  }

  downloadCsv(search?: string): Observable<Blob> {
    return this.http.get(`${this.apiUrl}/trains/download/csv`, { params: search ? {search} : {}, responseType: 'blob' });
  }

  deleteUpload(uploadId: string): Observable<any> {
    return this.http.delete(`${this.apiUrl}/trains/uploads/${uploadId}`);
  }
}