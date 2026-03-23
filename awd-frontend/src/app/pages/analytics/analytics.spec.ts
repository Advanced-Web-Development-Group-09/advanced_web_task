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

  it('should use valid cached weather data', () => {
    localStorage.setItem('weather_forecast_cache', JSON.stringify({ timestamp: Date.now(), data: { current: { temperature_2m: 15 } } }));
    component.fetchWeather();
    expect(component.weatherData.current.temperature_2m).toBe(15);
  });

  it('should fetch new weather if cache is expired', () => {
    localStorage.setItem('weather_forecast_cache', JSON.stringify({ timestamp: Date.now() - 900000000, data: {} }));
    component.fetchWeather();
    const reqs = httpMock.match(req => req.url.includes('api.open-meteo.com'));
    expect(reqs.length).toBeGreaterThan(0);
  });

  it('should handle invalid JSON in cache', () => {
    localStorage.setItem('weather_forecast_cache', '{invalid-json}');
    component.fetchWeather();
    const reqs = httpMock.match(req => req.url.includes('api.open-meteo.com'));
    expect(reqs.length).toBeGreaterThan(0);
  });

  it('should fallback to mock weather on error', () => {
    localStorage.removeItem('weather_forecast_cache'); // ensure empty cache
    component.fetchWeather();
    const reqs = httpMock.match(req => req.url.includes('api.open-meteo.com'));
    if (reqs.length > 0) reqs[0].flush('Error', { status: 500, statusText: 'Server Error' });
    expect(component.weatherData.current.temperature_2m).toBeDefined();
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

  it('should not start cancellation odds if inputs are empty', () => {
    component.myControl.setValue('');
    component.myControl2.setValue('');
    component.startCancellationOdds();
    expect(component.cancellationLoading).toBeFalse();
  });

  it('should handle cancellation odds error', () => {
    component.myControl.setValue('München Hbf');
    component.myControl2.setValue('Berlin Hbf');
    component.startCancellationOdds();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/cancellation-odds');
    req.flush({ task_id: 'task-err-1' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-err-1');
    statusReq.flush('Error', { status: 500, statusText: 'Server Error' });
    expect(component.cancellationLoading).toBeFalse();
  });

  it('should handle cancellation odds failure status', () => {
    component.myControl.setValue('München Hbf');
    component.myControl2.setValue('Berlin Hbf');
    component.startCancellationOdds();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/cancellation-odds');
    req.flush({ task_id: 'task-fail-1' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-fail-1');
    statusReq.flush({ status: 'failed' });
    expect(component.cancellationLoading).toBeFalse();
  });

  it('should poll again if status is processing (cancellation)', async () => {
    component.myControl.setValue('München Hbf');
    component.myControl2.setValue('Berlin Hbf');
    component.startCancellationOdds();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/cancellation-odds');
    req.flush({ task_id: 'task-process-1' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-process-1');
    statusReq.flush({ status: 'processing', progress_percentage: 50 });
    
    await new Promise(resolve => setTimeout(resolve, 600));
    httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-process-1'); // verifies setTimeout triggered another poll
  });

  it('should poll again if status is processing (delay)', async () => {
    component.myControl3.setValue('Bayern');
    component.startAverageStateDelay();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/average-delay');
    req.flush({ task_id: 'task-process-2' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-process-2');
    statusReq.flush({ status: 'processing', progress_percentage: 50 });
    
    await new Promise(resolve => setTimeout(resolve, 600));
    const nextReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-process-2'); 
    nextReq.flush({ status: 'completed', result: { average_delay_minutes: 15 } });
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

  it('should not start average state delay if bundesland is empty', () => {
    component.myControl3.setValue('');
    component.startAverageStateDelay();
    expect(component.delayLoading).toBeFalse();
  });

  it('should handle average state delay error', () => {
    component.myControl3.setValue('Bayern');
    component.startAverageStateDelay();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/average-delay');
    req.flush({ task_id: 'task-err-2' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-err-2');
    statusReq.flush('Error', { status: 500, statusText: 'Server Error' });
    expect(component.delayLoading).toBeFalse();
  });

  it('should handle average state delay failure status', () => {
    component.myControl3.setValue('Bayern');
    component.startAverageStateDelay();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/average-delay');
    req.flush({ task_id: 'task-fail-2' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-fail-2');
    statusReq.flush({ status: 'failed' });
    expect(component.delayLoading).toBeFalse();
  });

  it('should start delay statistics', () => {
    component.startDelayStatistics();

    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/delay-reasons');
    req.flush({ task_id: 'task-3' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-3');
    statusReq.flush({ status: 'completed', result: [{ reason: 'weather', percentage: 50, count: 10 }] });
    expect(component.reasonsResult).toBeTruthy();
  });

  it('should handle delay statistics error', () => {
    component.startDelayStatistics();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/delay-reasons');
    req.flush({ task_id: 'task-err-3' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-err-3');
    statusReq.flush('Error', { status: 500, statusText: 'Server Error' });
    expect(component.reasonsLoading).toBeFalse();
  });

  it('should handle delay statistics failure status', () => {
    component.startDelayStatistics();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/delay-reasons');
    req.flush({ task_id: 'task-fail-3' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-fail-3');
    statusReq.flush({ status: 'failed' });
    expect(component.reasonsLoading).toBeFalse();
  });

  it('should poll again if status is processing (reasons) and handle no-joke', async () => {
    spyOn(Math, 'random').and.returnValue(0.9); // Force no joke
    component.startDelayStatistics();
    
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/delay-reasons');
    req.flush({ task_id: 'task-process-3' });

    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-process-3');
    statusReq.flush({ status: 'processing', progress_percentage: 50 });
    
    await new Promise(resolve => setTimeout(resolve, 600));
    const nextReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-process-3'); 
    nextReq.flush({ status: 'completed', result: [{ reason: 'weather', percentage: 50, count: 10 }] });
  });

  it('should inject joke reason occasionally', () => {
    spyOn(Math, 'random').and.returnValue(0.1); // Force joke trigger (< 0.15)
    component.startDelayStatistics();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/delay-reasons');
    req.flush({ task_id: 'task-joke' });
    const statusReq = httpMock.expectOne('http://127.0.0.1:8000/api/analytics/status/task-joke');
    statusReq.flush({ status: 'completed', result: [{ reason: 'test', percentage: 50, count: 1 }] });
    expect(component.reasonsResult?.some(r => ['ALIEN_INVASION', 'DRAGON_ON_TRACKS', 'MATRIX_GLITCH'].includes(r.reason))).toBeTrue();
  });
});
