import { Injectable, inject } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Observable } from 'rxjs';
import { environment } from './environment';

@Injectable({
  providedIn: 'root'
})
export class AuthService {
  private http = inject(HttpClient);
  private apiUrl = environment.apiUrl;

  register(userData: any): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/register`, userData);
  }

  login(credentials: any): Observable<any> {
    // FastAPI OAuth2PasswordRequestForm expects application/x-www-form-urlencoded
    const body = new HttpParams()
      .set('username', credentials.username) // For this API, username acts as the email
      .set('password', credentials.password);

    return this.http.post(`${this.apiUrl}/auth/login`, body.toString(), {
      headers: new HttpHeaders().set('Content-Type', 'application/x-www-form-urlencoded')
    });
  }

  logout(): Observable<any> {
    return this.http.post(`${this.apiUrl}/auth/logout`, {});
  }

  getProfile(): Observable<any> {
    return this.http.get(`${this.apiUrl}/users/me`);
  }

  changePassword(passwordData: any): Observable<any> {
    return this.http.put(`${this.apiUrl}/users/me/password`, passwordData);
  }

  deleteAccount(): Observable<any> {
    return this.http.delete(`${this.apiUrl}/users/me`);
  }

  getLeaderboard(): Observable<any> {
    return this.http.get(`${this.apiUrl}/users/leaderboard`);
  }

  getExports(): Observable<any> {
    return this.http.get(`${this.apiUrl}/users/me/exports`);
  }

  getSearches(): Observable<any> {
    return this.http.get(`${this.apiUrl}/users/me/searches`);
  }
}