import { HttpClient } from '@angular/common/http';
import { Injectable, inject } from '@angular/core';
import { Observable, timer } from 'rxjs';
import { switchMap, takeWhile } from 'rxjs/operators';
import { environment } from './environment';

@Injectable({ providedIn: 'root' })
export class AnalyticsService {
  private http = inject(HttpClient);

  calculateAverageDelay(bundesland: string): Observable<any> {
    return this.http.post<{task_id: string}>(`${environment.apiUrl}/analytics/average-delay`, { bundesland })
      .pipe(
        switchMap((res: {task_id: string}) => 
          timer(0, 1000).pipe(
            switchMap(() => this.http.get<any>(`${environment.apiUrl}/analytics/status/${res.task_id}`)),
            takeWhile(status => status.status !== 'completed' && status.status !== 'failed', true)
          )
        )
      );
  }

  calculateCancellationOdds(stationA: string, stationB: string): Observable<any> {
    return this.http.post<{task_id: string}>(`${environment.apiUrl}/analytics/cancellation-odds`, { station_a: stationA, station_b: stationB })
      .pipe(
        switchMap((res: {task_id: string}) => 
          timer(0, 1000).pipe(
            switchMap(() => this.http.get<any>(`${environment.apiUrl}/analytics/status/${res.task_id}`)),
            takeWhile(status => status.status !== 'completed' && status.status !== 'failed', true)
          )
        )
      );
  }

  getDelayReasons(): Observable<any> {
    return this.http.post<{task_id: string}>(`${environment.apiUrl}/analytics/delay-reasons`, {})
      .pipe(
        switchMap((res: {task_id: string}) => 
          timer(0, 1000).pipe(
            switchMap(() => this.http.get<any>(`${environment.apiUrl}/analytics/status/${res.task_id}`)),
            takeWhile(status => status.status !== 'completed' && status.status !== 'failed', true)
          )
        )
      );
  }
}