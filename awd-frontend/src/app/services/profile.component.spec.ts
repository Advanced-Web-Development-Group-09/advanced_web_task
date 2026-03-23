import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { ProfileComponent } from './profile.component';
import { UserService } from './user.service';
import { of, throwError } from 'rxjs';
import { FormsModule } from '@angular/forms';

describe('ProfileComponent (Services)', () => {
  let component: ProfileComponent;
  let fixture: ComponentFixture<ProfileComponent>;
  let userService: any;

  beforeEach(async () => {
    userService = {
      getUserProfile: jasmine.createSpy('getUserProfile').and.returnValue(of({ username: 'testuser', status: 'Available' })),
      updateStatus: jasmine.createSpy('updateStatus').and.returnValue(of({ status: 'Busy' }))
    };

    await TestBed.configureTestingModule({
      imports: [ProfileComponent, FormsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
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

  it('should update status successfully', async () => {
    component.currentStatus = 'Busy';
    component.onUpdateStatus();
    expect(userService.updateStatus).toHaveBeenCalledWith('Busy');
    expect(component.statusMessage).toBe('Status updated successfully!');
    expect(component.isUpdating).toBeFalse();
  });

  it('should handle update status error', () => {
    userService.updateStatus.and.returnValue(throwError(() => new Error('Error')));
    component.currentStatus = 'Away';
    component.onUpdateStatus();
    expect(component.isUpdating).toBeFalse();
    expect(component.statusMessage).toBe('Failed to update status.');
  });

  it('should not update if status has not changed', () => {
    component.currentStatus = 'Available';
    component.onUpdateStatus();
    expect(userService.updateStatus).not.toHaveBeenCalled();
  });

  it('should not update if currentStatus is empty', () => {
    component.currentStatus = '';
    component.onUpdateStatus();
    expect(userService.updateStatus).not.toHaveBeenCalled();
  });

  it('should handle get profile error', () => {
    userService.getUserProfile.and.returnValue(throwError(() => new Error('Net error')));
    spyOn(console, 'error');
    component.loadProfile();
    expect(console.error).toHaveBeenCalled();
  });
});