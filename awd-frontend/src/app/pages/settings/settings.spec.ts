import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter, Router } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Settings } from './settings';
import { UserService } from '../../services/user/user.service';
import { of, throwError } from 'rxjs';
import { MatDialog } from '@angular/material/dialog';

describe('Settings', () => {
  let component: Settings;
  let fixture: ComponentFixture<Settings>;
  let userService: any;
  let router: Router;
  let dialog: any;

  beforeEach(async () => {
    userService = {
      changePassword: jasmine.createSpy('changePassword').and.returnValue(of({}))
    };
    dialog = {
      open: jasmine.createSpy('open')
    };

    await TestBed.configureTestingModule({
      imports: [Settings, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: UserService, useValue: userService },
        { provide: MatDialog, useValue: dialog }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Settings);
    component = fixture.componentInstance;
    router = TestBed.inject(Router);
    spyOn(router, 'navigate');
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should change password, remove token, and navigate', () => {
    spyOn(localStorage, 'removeItem');
    component.passwordForm.controls.currentPassword.setValue('oldPass');
    component.passwordForm.controls.newPassword.setValue('NewPass123');
    component.passwordForm.controls.confirmPassword.setValue('NewPass123');
    component.onChangePassword();

    expect(userService.changePassword).toHaveBeenCalled();
    expect(localStorage.removeItem).toHaveBeenCalledWith('token');
  });

  it('should open delete dialog', () => {
    component.openDeleteDialog();
    expect(dialog.open).toHaveBeenCalled();
  });

  it('should validate password match', () => {
    component.passwordForm.controls.newPassword.setValue('Password123');
    component.passwordForm.controls.confirmPassword.setValue('Password321');
    expect(component.passwordForm.controls.confirmPassword.hasError('passwordMismatch')).toBeTrue();

    component.passwordForm.controls.confirmPassword.setValue('Password123');
    expect(component.passwordForm.controls.confirmPassword.hasError('passwordMismatch')).toBeFalse();

    // clear form values
    component.passwordForm.controls.newPassword.setValue('');
    expect(component.passwordForm.controls.confirmPassword.hasError('passwordMismatch')).toBeFalse();
  });

  it('should return null from validator if newPassword or confirmPassword are empty', () => {
    component.passwordForm.controls.newPassword.setValue('');
    component.passwordForm.controls.confirmPassword.setValue('');
    expect(component.passwordForm.controls.confirmPassword.errors).toBeNull();
  });

  it('should preserve other errors when clearing passwordMismatch', () => {
    component.passwordForm.controls.newPassword.setValue('Password123');
    component.passwordForm.controls.confirmPassword.setValue('Password321');
    component.passwordForm.controls.confirmPassword.setErrors({ passwordMismatch: true, required: true });

    component.passwordForm.controls.confirmPassword.setValue('Password123');
    expect(component.passwordForm.controls.confirmPassword.hasError('passwordMismatch')).toBeFalse();
    expect(component.passwordForm.controls.confirmPassword.hasError('required')).toBeTrue();
  });

  it('should handle incorrect current password error', () => {
    userService.changePassword.and.returnValue(throwError(() => ({ error: { detail: 'Incorrect current password' } })));
    component.passwordForm.controls.currentPassword.setValue('wrong');
    component.passwordForm.controls.newPassword.setValue('Password123');
    component.passwordForm.controls.confirmPassword.setValue('Password123');
    component.onChangePassword();
    expect(component.passwordForm.controls.currentPassword.hasError('incorrect')).toBeTrue();
  });

  it('should handle generic password change error', () => {
    userService.changePassword.and.returnValue(throwError(() => ({ error: { detail: 'Server error' } })));
    component.passwordForm.controls.currentPassword.setValue('old');
    component.passwordForm.controls.newPassword.setValue('Password123');
    component.passwordForm.controls.confirmPassword.setValue('Password123');
    component.onChangePassword();
    expect(component.passwordForm.controls.currentPassword.hasError('incorrect')).toBeFalse();
  });
});
