import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface UserProfile {
  id: 0;
  username: 'string';
  email: 'string';
  status: 'string';
  reward_points: 0;
}

@Injectable({
  providedIn: 'root',
})
export class ProfileService {
  private apiUrl = 'http://127.0.0.1:8000/api/users/me';

  constructor(private http: HttpClient) {}

  getProfile(): Observable<UserProfile> {
    const token = localStorage.getItem('token');

    const headers = new HttpHeaders({
      Authorization: `Bearer ${token}`,
    });

    return this.http.get<UserProfile>(this.apiUrl, { headers });
  }
}
