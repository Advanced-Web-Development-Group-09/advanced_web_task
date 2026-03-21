import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';

export interface RegisterPayload {
  username: string;
  email: string;
  password: string;
}

@Injectable({
  providedIn: 'root',
})
export class RegisterService {
  private apiUrl = 'http://127.0.0.1:8000/api/auth/register';

  constructor(private http: HttpClient) {}

  register(data: RegisterPayload): Observable<any> {
    return this.http.post(this.apiUrl, data);
  }
}
