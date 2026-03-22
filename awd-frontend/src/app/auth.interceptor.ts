import { HttpInterceptorFn, HttpErrorResponse } from '@angular/common/http';
import { inject } from '@angular/core';
import { Router } from '@angular/router';
import { catchError, throwError } from 'rxjs';

export const authInterceptor: HttpInterceptorFn = (req, next) => {
  // Check both 'access_token' and 'token' in case login.ts uses a different key
  const token = localStorage.getItem('access_token') || localStorage.getItem('token');
  const router = inject(Router);
  
  let authReq = req;
  if (token) {
    authReq = req.clone({
      setHeaders: { Authorization: `Bearer ${token}` }
    });
  }
  
  return next(authReq).pipe(
    catchError((error: HttpErrorResponse) => {
      // If we get a 401 Unauthorized, the token is invalid or missing
      if (error.status === 401) {
        console.error('401 Unauthorized on URL:', req.url);
        console.error('Token attached to this request was:', token);
        
        localStorage.removeItem('access_token');
        localStorage.removeItem('token');
        router.navigate(['/login']);
      }
      return throwError(() => error);
    })
  );
};