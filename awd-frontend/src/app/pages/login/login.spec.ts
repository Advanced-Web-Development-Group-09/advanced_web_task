import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule, TranslateService } from '@ngx-translate/core';
import { provideRouter, Router } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Login } from './login';
import { LoginService } from '../../services/login/login.service';
import { of, throwError } from 'rxjs';

describe('Login', () => {
  let component: Login;
  let fixture: ComponentFixture<Login>;
  let loginService: any;
  let router: Router;

  beforeEach(async () => {
    loginService = {
      login: jasmine.createSpy('login').and.returnValue(of({ access_token: 'fake-token' }))
    };

    await TestBed.configureTestingModule({
      imports: [Login, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: LoginService, useValue: loginService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Login);
    component = fixture.componentInstance;
    router = TestBed.inject(Router);
    spyOn(router, 'navigate');
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should not login if form is invalid', () => {
    component.loginForm.controls.username.setValue('');
    component.onLogin();
    expect(loginService.login).not.toHaveBeenCalled();
  });

  it('should login, set token, and navigate', () => {
    spyOn(localStorage, 'setItem');
    component.loginForm.controls.username.setValue('test');
    component.loginForm.controls.password.setValue('password');
    component.onLogin();
    expect(loginService.login).toHaveBeenCalled();
    expect(localStorage.setItem).toHaveBeenCalledWith('token', 'fake-token');
    expect(router.navigate).toHaveBeenCalledWith(['/dashboard']);
  });

  it('should toggle language', () => {
    const translate = TestBed.inject(TranslateService);
    spyOn(translate, 'use');
    spyOn(translate, 'getCurrentLang').and.returnValue('en');
    component.toggleLanguage();
    expect(translate.use).toHaveBeenCalledWith('de');
  });

  it('should toggle dark mode', () => {
    component.isDarkMode = 'light';
    component.toggleDarkMode();
    expect(component.isDarkMode).toBe('dark');
  });

  it('should handle login error and clear invalid credentials', () => {
    loginService.login.and.returnValue(throwError(() => ({ error: { detail: 'Incorrect login credentials' } })));
    component.loginForm.controls.username.setValue('test');
    component.loginForm.controls.password.setValue('wrong');
    component.onLogin();
    expect(component.loginForm.hasError('invalidCredentials')).toBeTrue();
    
    component.loginForm.controls.username.setValue('test2');
    expect(component.loginForm.hasError('invalidCredentials')).toBeFalse();
  });

  it('should handle generic login error', () => {
    loginService.login.and.returnValue(throwError(() => ({ error: { detail: 'Some other error' } })));
    component.loginForm.controls.username.setValue('test');
    component.loginForm.controls.password.setValue('wrong');
    spyOn(console, 'error');
    component.onLogin();
    expect(console.error).toHaveBeenCalled();
  });
});
