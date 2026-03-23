import { TestBed } from '@angular/core/testing';
import { HttpTestingController, provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { UserService } from './user.service';

describe('UserService', () => {
  let service: UserService;
  let httpMock: HttpTestingController;

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [provideHttpClient(), provideHttpClientTesting(), UserService]
    });
    service = TestBed.inject(UserService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should fetch user profile', () => {
    service.getUserProfile().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/users/me');
    expect(req.request.method).toBe('GET');
  });

  it('should update user status', () => {
    service.updateStatus('Busy').subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/users/me/status');
    expect(req.request.method).toBe('PUT');
  });
});