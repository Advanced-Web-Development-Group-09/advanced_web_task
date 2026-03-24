import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

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
  private apiUrl = 'http://127.0.0.1:8000/api/users';

  constructor(private http: HttpClient) {}

  getUserProfile(): Observable<UserProfile> {
    return this.http.get<UserProfile>(`${this.apiUrl}/me`);
  }

  updateProfile(profileData: {username: string, email: string, status: string}): Observable<UserProfile> {
    return this.http.put<UserProfile>(`${this.apiUrl}/me`, profileData);
  }

  updateStatus(newStatus: string): Observable<{message: string, status: string}> {
    return this.http.put<{message: string, status: string}>(`${this.apiUrl}/me/status`, { 
      status: newStatus 
    });
  }
}