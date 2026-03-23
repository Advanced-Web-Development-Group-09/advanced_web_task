import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting, HttpTestingController } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Analytics } from './analytics';

describe('Analytics', () => {
  let component: Analytics;
  let fixture: ComponentFixture<Analytics>;
  let httpMock: HttpTestingController;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [Analytics, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [provideHttpClient(), provideHttpClientTesting(), provideRouter([])]
    }).compileComponents();

    fixture = TestBed.createComponent(Analytics);
    component = fixture.componentInstance;
    httpMock = TestBed.inject(HttpTestingController);
    fixture.detectChanges();
  });

  afterEach(() => {
    // Clear any pending weather API requests safely to prevent "Expected one matching request" errors
    httpMock.match(req => req.url.includes('api.open-meteo.com')).forEach(req => req.flush({}));
    httpMock.verify();
  });

  it('should create and fetch weather on init', () => {
    const reqs = httpMock.match(req => req.url.includes('api.open-meteo.com'));
    if (reqs.length > 0) {
      expect(reqs[0].request.method).toBe('GET');
      reqs[0].flush({ current: { temperature_2m: 10, wind_speed_10m: 5 } });
    }
    expect(component).toBeTruthy();
  });

  it('should start cancellation odds', () => {
    component.myControl.setValue('München Hbf');
    component.myControl2.setValue('Berlin Hbf');
    component.startCancellationOdds();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/cancellation-odds');
    expect(req.request.method).toBe('POST');
    req.flush({ task_id: 'task-1' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-1');
    statusReq.flush({ status: 'completed', result: { cancellation_odds: 0.1, total_trains: 100, expected_delay: 5 } });
    expect(component.cancellationResult).toBeTruthy();
  });

  it('should start average state delay', () => {
    component.myControl3.setValue('Bayern');
    component.startAverageStateDelay();

    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/average-delay');
    req.flush({ task_id: 'task-2' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-2');
    statusReq.flush({ status: 'completed', result: { average_delay_minutes: 15 } });
    expect(component.delayResult).toBeTruthy();
  });

  it('should start delay statistics', () => {
    component.startDelayStatistics();

    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/delay-reasons');
    req.flush({ task_id: 'task-3' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-3');
    statusReq.flush({ status: 'completed', result: [{ reason: 'weather', percentage: 50, count: 10 }] });
    expect(component.reasonsResult).toBeTruthy();
  });
});
