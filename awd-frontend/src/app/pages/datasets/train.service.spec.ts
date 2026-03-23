import { TestBed } from '@angular/core/testing';
import { HttpTestingController, provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient } from '@angular/common/http';
import { TrainService } from './train.service';

describe('TrainService', () => {
  let service: TrainService;
  let httpMock: HttpTestingController;

  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [provideHttpClient(), provideHttpClientTesting(), TrainService]
    });
    service = TestBed.inject(TrainService);
    httpMock = TestBed.inject(HttpTestingController);
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should fetch uploaded datasets', () => {
    service.getUploadedDatasets().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/datasets');
    expect(req.request.method).toBe('GET');
    req.flush([]);
  });

  it('should fetch exports', () => {
    service.getExports().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/exports');
    expect(req.request.method).toBe('GET');
    req.flush([]);
  });

  it('should upload train data', () => {
    const file = new File([''], 'test.csv');
    service.uploadTrainData(file).subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/upload');
    expect(req.request.method).toBe('POST');
    req.flush({});
  });

  it('should get upload status', () => {
    service.getUploadStatus('task123').subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/upload/status/task123');
    expect(req.request.method).toBe('GET');
    req.flush({});
  });

  it('should download exports zip', () => {
    service.downloadExportsZip().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/download/exports/zip');
    expect(req.request.method).toBe('GET');
    req.flush(new Blob());
  });

  it('should download csv', () => {
    service.downloadCsv().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/download/csv');
    expect(req.request.method).toBe('GET');
    req.flush(new Blob());
  });

  it('should download json', () => {
    service.downloadJson().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/download/json');
    expect(req.request.method).toBe('GET');
    req.flush(new Blob());
  });

  it('should download excel', () => {
    service.downloadExcel().subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/download/excel');
    expect(req.request.method).toBe('GET');
    req.flush(new Blob());
  });

  it('should delete upload', () => {
    service.deleteUpload('1').subscribe();
    const req = httpMock.expectOne('http://127.0.0.1:8000/api/trains/datasets/1');
    expect(req.request.method).toBe('DELETE');
    req.flush({});
  });
});