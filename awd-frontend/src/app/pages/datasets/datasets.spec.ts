import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient, HttpResponse } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Datasets } from './datasets';
import { TrainService } from './train.service';
import { of } from 'rxjs';

describe('Datasets', () => {
  let component: Datasets;
  let fixture: ComponentFixture<Datasets>;
  let mockTrainService: any;

  beforeEach(async () => {
    mockTrainService = {
      getUploadedDatasets: jasmine.createSpy('getUploadedDatasets').and.returnValue(of([])),
      getExports: jasmine.createSpy('getExports').and.returnValue(of([])),
      downloadCsv: jasmine.createSpy('downloadCsv').and.returnValue(of(new Blob())),
      downloadJson: jasmine.createSpy('downloadJson').and.returnValue(of(new Blob())),
      downloadExcel: jasmine.createSpy('downloadExcel').and.returnValue(of(new Blob())),
      downloadExportsZip: jasmine.createSpy('downloadExportsZip').and.returnValue(of(new Blob())),
      deleteUpload: jasmine.createSpy('deleteUpload').and.returnValue(of({})),
      uploadTrainData: jasmine.createSpy('uploadTrainData').and.returnValue(of(new HttpResponse({ body: { task_id: 'task123' } }))),
      getUploadStatus: jasmine.createSpy('getUploadStatus').and.returnValue(of({ status: 'completed' }))
    };

    await TestBed.configureTestingModule({
      imports: [Datasets, TranslateModule.forRoot(), NoopAnimationsModule],
      providers: [
        provideHttpClient(),
        provideHttpClientTesting(),
        provideRouter([]),
        { provide: TrainService, useValue: mockTrainService }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(Datasets);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should trigger downloads for all filetypes', () => {
    spyOn(window.URL, 'createObjectURL').and.returnValue('blob:url');
    spyOn(window.URL, 'revokeObjectURL');
    
    component.downloadCsv();
    expect(mockTrainService.downloadCsv).toHaveBeenCalled();

    component.downloadJson();
    expect(mockTrainService.downloadJson).toHaveBeenCalled();

    component.downloadExcel();
    expect(mockTrainService.downloadExcel).toHaveBeenCalled();

    component.downloadExportsZip();
    expect(mockTrainService.downloadExportsZip).toHaveBeenCalled();
  });

  it('should delete dataset', () => {
    component.deleteDataset('1');
    expect(mockTrainService.deleteUpload).toHaveBeenCalledWith('1');
  });

  it('should handle drag events', () => {
    const event = new DragEvent('dragover');
    spyOn(event, 'preventDefault');
    component.onDragOver(event);
    expect(event.preventDefault).toHaveBeenCalled();
    expect(component.isDragging).toBeTrue();
  });

  it('should handle file selection and drop events', () => {
    const file = new File([''], 'data.csv');
    component.handleFile(file);
    expect(component.uploadedFiles.length).toBe(1);
    
    component.deleteFile(0);
    expect(component.uploadedFiles.length).toBe(0);
  });

  it('should upload a file and poll status', async () => {
    spyOn(window, 'alert');
    const file = new File([''], 'data.csv');
    component.uploadFile(file);
    await new Promise(resolve => setTimeout(resolve, 600));
    expect(mockTrainService.uploadTrainData).toHaveBeenCalled();
    expect(mockTrainService.getUploadStatus).toHaveBeenCalledWith('task123');
  });
});
