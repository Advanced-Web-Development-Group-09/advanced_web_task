import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from '../../environments/environment';

export interface UserProfile {
  id: number;
  username: string;
  email: string;
  status: string;
  reward_points: number;
}

@Injectable({
  providedIn: 'root'
})
export class UserService {
  private apiUrl = `${environment.apiUrl}/users`;

  constructor(private http: HttpClient) {}

  getUserProfile(): Observable<UserProfile> {
    return this.http.get<UserProfile>(`${this.apiUrl}/me`);
  }

  updateStatus(newStatus: string): Observable<{message: string, status: string}> {
    return this.http.put<{message: string, status: string}>(`${this.apiUrl}/me/status`, { 
      status: newStatus 
    });
  }
}