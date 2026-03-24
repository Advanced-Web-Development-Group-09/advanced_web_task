import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Profile } from './profile';
import { UserService } from '../../services/user.service';
import { of, throwError } from 'rxjs';

describe('Profile', () => {
  let component: Profile;
  let fixture: ComponentFixture<Profile>;
  let mockUserService: any;

  beforeEach(async () => {
    mockUserService = {
      getUserProfile: jasmine.createSpy('getUserProfile').and.returnValue(of({ username: 'testuser', email: 'test@example.com', status: 'Active', reward_points: 100 })),
      updateStatus: jasmine.createSpy('updateStatus').and.returnValue(of({}))
    };

    await TestBed.configureTestingModule({
      imports: [Profile, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: UserService, useValue: mockUserService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Profile);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create and load profile', () => {
    expect(component).toBeTruthy();
    expect(mockUserService.getUserProfile).toHaveBeenCalled();
    expect(component.userProfile()?.username).toBe('testuser');
    expect(component.currentStatus()).toBe('Active');
  });

  it('should handle error when fetching profile', () => {
    mockUserService.getUserProfile.and.returnValue(throwError(() => new Error('Error')));
    spyOn(console, 'error');
    component.loadProfile();
    expect(console.error).toHaveBeenCalledWith('Error fetching profile', jasmine.any(Error));
  });

  it('should update status successfully', () => {
    jasmine.clock().install();
    component.currentStatus.set('New Status');
    component.onUpdateStatus();
    
    expect(mockUserService.updateStatus).toHaveBeenCalledWith('New Status');
    expect(component.isUpdating()).toBeFalse();
    expect(component.statusMessage()).toBe('Status updated successfully!');
    expect(component.userProfile()?.status).toBe('New Status');

    jasmine.clock().tick(3001);
    expect(component.statusMessage()).toBe('');
    
    jasmine.clock().uninstall();
  });

  it('should handle error when updating status', () => {
    mockUserService.updateStatus.and.returnValue(throwError(() => new Error('Update Error')));
    spyOn(console, 'error');
    component.currentStatus.set('Failed Status');
    component.onUpdateStatus();

    expect(mockUserService.updateStatus).toHaveBeenCalledWith('Failed Status');
    expect(component.isUpdating()).toBeFalse();
    expect(component.statusMessage()).toBe('Failed to update status.');
    expect(console.error).toHaveBeenCalledWith('Failed to update status', jasmine.any(Error));
  });
});
