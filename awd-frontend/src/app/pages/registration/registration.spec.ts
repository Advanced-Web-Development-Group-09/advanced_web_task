import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule, TranslateService } from '@ngx-translate/core';
import { provideRouter, Router } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Registration } from './registration';
import { RegisterService } from '../../services/register/register.service';
import { LoginService } from '../../services/login/login.service';
import { of, throwError } from 'rxjs';

describe('Registration', () => {
  let component: Registration;
  let fixture: ComponentFixture<Registration>;
  let registerService: any;
  let loginService: any;
  let router: Router;

  beforeEach(async () => {
    registerService = {
      register: jasmine.createSpy('register').and.returnValue(of({}))
    };
    loginService = {
      login: jasmine.createSpy('login').and.returnValue(of({ access_token: 'fake-token' }))
    };

    await TestBed.configureTestingModule({
      imports: [Registration, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: RegisterService, useValue: registerService },
        { provide: LoginService, useValue: loginService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Registration);
    component = fixture.componentInstance;
    router = TestBed.inject(Router);
    spyOn(router, 'navigate');
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should not sign up if form is invalid', () => {
    spyOn(component.registerForm, 'markAllAsTouched');
    component.onSignUp();
    expect(registerService.register).not.toHaveBeenCalled();
    expect(component.registerForm.markAllAsTouched).toHaveBeenCalled();
  });

  it('should sign up, login, and navigate on success', () => {
    spyOn(localStorage, 'setItem');
    component.registerForm.controls.username.setValue('testuser');
    component.registerForm.controls.email.setValue('test@test.com');
    component.registerForm.controls.password.setValue('Password123');
    component.onSignUp();
    expect(registerService.register).toHaveBeenCalled();
    expect(loginService.login).toHaveBeenCalled();
  });

  it('should toggle language', () => {
    const translate = TestBed.inject(TranslateService);
    spyOn(translate, 'use');
    spyOn(translate, 'getCurrentLang').and.returnValue('en');
    component.toggleLanguage();
    expect(translate.use).toHaveBeenCalledWith('de');
  });

  it('should toggle language to en if no lang is set', () => {
    const translate = TestBed.inject(TranslateService);
    spyOn(translate, 'use');
    spyOn(translate, 'getCurrentLang').and.returnValue(undefined as any);
    spyOn(translate, 'getFallbackLang').and.returnValue(undefined as any);
    component.toggleLanguage();
    expect(translate.use).toHaveBeenCalledWith('en');
  });

  it('should toggle dark mode', () => {
    component.isDarkMode = 'light';
    component.toggleDarkMode();
    expect(component.isDarkMode).toBe('dark');
  });

  it('should handle registration errors for taken username and email', () => {
    registerService.register.and.returnValue(throwError(() => ({ error: { detail: 'Email already registered' } })));
    component.registerForm.controls.username.setValue('test');
    component.registerForm.controls.email.setValue('test@test.com');
    component.registerForm.controls.password.setValue('Password123');
    component.onSignUp();
    expect(component.registerForm.controls.email.hasError('alreadyTaken')).toBeTrue();

    component.registerForm.controls.email.setValue('test2@test.com');
    expect(component.registerForm.controls.email.hasError('alreadyTaken')).toBeFalse();

    registerService.register.and.returnValue(throwError(() => ({ error: { detail: 'Username already registered' } })));
    component.onSignUp();
    expect(component.registerForm.controls.username.hasError('alreadyTaken')).toBeTrue();
  });

  it('should handle generic registration error', () => {
    registerService.register.and.returnValue(throwError(() => ({ error: { detail: 'Some other error' } })));
    component.registerForm.controls.username.setValue('test');
    component.registerForm.controls.email.setValue('test@test.com');
    component.registerForm.controls.password.setValue('Password123');
    spyOn(console, 'error');
    component.onSignUp();
    expect(console.error).toHaveBeenCalled();
  });

  it('should handle registration error with no detail', () => {
    registerService.register.and.returnValue(throwError(() => null));
    component.registerForm.controls.username.setValue('test');
    component.registerForm.controls.email.setValue('test@test.com');
    component.registerForm.controls.password.setValue('Password123');
    spyOn(console, 'error');
    component.onSignUp();
    expect(console.error).toHaveBeenCalled();
  });

  it('should clear alreadyTaken error on value change', () => {
    component.registerForm.controls.email.setErrors({ alreadyTaken: true });
    component.registerForm.controls.email.setValue('new@test.com');
    expect(component.registerForm.controls.email.hasError('alreadyTaken')).toBeFalse();

    component.registerForm.controls.username.setErrors({ alreadyTaken: true });
    component.registerForm.controls.username.setValue('newuser');
    expect(component.registerForm.controls.username.hasError('alreadyTaken')).toBeFalse();
  });
});
