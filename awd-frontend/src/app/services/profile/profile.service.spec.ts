import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { ProfileComponent } from './profile.service';
import { UserService } from '../user.service';
import { of, throwError } from 'rxjs';
import { FormsModule } from '@angular/forms';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { provideRouter } from '@angular/router';
import { TranslateModule } from '@ngx-translate/core';

describe('ProfileComponent (Services)', () => {
  let component: ProfileComponent;
  let fixture: ComponentFixture<ProfileComponent>;
  let userService: any;

  beforeEach(async () => {
    userService = {
      getUserProfile: jasmine.createSpy('getUserProfile').and.returnValue(of({ username: 'testuser', status: 'Available' })),
      updateProfile: jasmine.createSpy('updateProfile').and.returnValue(of({ status: 'Busy' }))
    };

    await TestBed.configureTestingModule({
      imports: [ProfileComponent, FormsModule, NoopAnimationsModule, TranslateModule.forRoot()],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: UserService, useValue: userService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(ProfileComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create and load profile', () => {
    expect(component).toBeTruthy();
    expect(userService.getUserProfile).toHaveBeenCalled();
    expect(component.currentStatus).toBe('Available');
  });

  it('should update profile successfully', async () => {
    component.currentStatus = 'Busy';
    component.onUpdateProfile();
    expect(userService.updateProfile).toHaveBeenCalled();
    expect(component.statusMessage).toBe('Profile updated successfully!');
    expect(component.isUpdating).toBeFalse();
  });

  it('should clear success message after 3 seconds', () => {
    jasmine.clock().install();
    component.currentStatus = 'Busy';
    component.onUpdateProfile();
    jasmine.clock().tick(3001);
    expect(component.statusMessage).toBe('');
    jasmine.clock().uninstall();
  });

  it('should handle update profile error', () => {
    userService.updateProfile.and.returnValue(throwError(() => new Error('Error')));
    component.currentStatus = 'Away';
    component.onUpdateProfile();
    expect(component.isUpdating).toBeFalse();
    expect(component.statusMessage).toBe('Failed to update profile.');
  });

  it('should handle get profile error', () => {
    userService.getUserProfile.and.returnValue(throwError(() => new Error('Net error')));
    spyOn(console, 'error');
    component.loadProfile();
    expect(console.error).toHaveBeenCalled();
  });

  it('should handle get profile with no status', () => {
    userService.getUserProfile.and.returnValue(of({ username: 'testuser' }));
    component.loadProfile();
    expect(component.currentStatus).toBe('');
  });
});