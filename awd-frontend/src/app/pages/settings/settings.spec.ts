import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter, Router } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Settings } from './settings';
import { UserService } from '../../services/user/user.service';
import { of } from 'rxjs';
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
});
