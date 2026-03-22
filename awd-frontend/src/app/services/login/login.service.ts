import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface LoginPayload {
  username: string; // can be username OR email
  password: string;
}

@Injectable({
  providedIn: 'root',
})
export class LoginService {
  private apiUrl = 'http://127.0.0.1:8000/api/auth/login';

  constructor(private http: HttpClient) {}

  login(data: LoginPayload): Observable<any> {
    const body = new URLSearchParams();
    body.set('username', data.username);
    body.set('password', data.password);

    const headers = new HttpHeaders({
      'Content-Type': 'application/x-www-form-urlencoded',
    });

    return this.http.post(this.apiUrl, body.toString(), { headers });
  }

  isLoggedIn(): boolean {
    return !!localStorage.getItem('token');
  }
}
