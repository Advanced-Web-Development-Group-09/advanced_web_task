import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Profile } from './profile';
import { ProfileService } from '../../services/profile/profile.service';
import { of, throwError } from 'rxjs';

describe('Profile', () => {
  let component: Profile;
  let fixture: ComponentFixture<Profile>;
  let mockProfileService: any;

  beforeEach(async () => {
    mockProfileService = {
      getProfile: jasmine.createSpy('getProfile').and.returnValue(of({ username: 'testuser' }))
    };

    await TestBed.configureTestingModule({
      imports: [Profile, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: ProfileService, useValue: mockProfileService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Profile);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create and load profile', () => {
    expect(component).toBeTruthy();
    expect(mockProfileService.getProfile).toHaveBeenCalled();
    expect(component.user).toEqual({ username: 'testuser' } as any);
  });

  it('should handle error when fetching profile', () => {
    mockProfileService.getProfile.and.returnValue(throwError(() => new Error('Error')));
    component.ngOnInit();
    expect(component.error).toBe('Failed to load profile');
  });
});
