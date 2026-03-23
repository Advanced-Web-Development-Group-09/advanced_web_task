import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting, HttpTestingController } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Leaderboard } from './leaderboard';

describe('Leaderboard', () => {
  let component: Leaderboard;
  let fixture: ComponentFixture<Leaderboard>;
  let httpMock: HttpTestingController;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Leaderboard, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [provideHttpClient(), provideHttpClientTesting(), provideRouter([])]
    }).compileComponents();

    fixture = TestBed.createComponent(Leaderboard);
    component = fixture.componentInstance;
    httpMock = TestBed.inject(HttpTestingController);
    fixture.detectChanges();
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should fetch leaderboard and populate tables', () => {
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/users/leaderboard');
    expect(req.request.method).toBe('GET');
    req.flush([
      { username: 'user1', points: 100, status: 'Active' },
      { username: 'user2', points: 90, status: 'Active' },
      { username: 'user3', points: 80, status: 'Active' },
      { username: 'user4', points: 70, status: 'Active' }
    ]);
    
    expect(component.topUsers.length).toBe(3);
    expect(component.dataSource.length).toBe(1);
    expect(component).toBeTruthy();
  });

  it('should handle error when fetching leaderboard', () => {
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/users/leaderboard');
    req.flush('Error', { status: 500, statusText: 'Server Error' });
    expect(component.topUsers.length).toBe(0);
  });
});
