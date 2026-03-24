import { ComponentFixture, TestBed } from '@angular/core/testing';
import { provideHttpClientTesting } from '@angular/common/http/testing';
import { provideHttpClient, HttpResponse, HttpEventType } from '@angular/common/http';
import { TranslateModule } from '@ngx-translate/core';
import { provideRouter } from '@angular/router';
import { NoopAnimationsModule } from '@angular/platform-browser/animations';
import { Datasets } from './datasets';
import { TrainService } from './train.service';
import { of, throwError } from 'rxjs';

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

    spyOn(window, 'alert').and.stub(); // Prevent hanging Karma runner
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should trigger downloads for all filetypes', () => {
    spyOn(window.URL, 'createObjectURL').and.returnValue('blob:url');
    spyOn(window.URL, 'revokeObjectURL');
    
    const mockAnchor = document.createElement('a');
    spyOn(document, 'createElement').and.returnValue(mockAnchor);
    spyOn(mockAnchor, 'click'); // Prevent actual browser navigation!
    
    component.downloadCsv();
    expect(mockTrainService.downloadCsv).toHaveBeenCalled();
    expect(mockAnchor.click).toHaveBeenCalled();

    component.downloadJson();
    expect(mockTrainService.downloadJson).toHaveBeenCalled();
    expect(mockAnchor.click).toHaveBeenCalledTimes(2);

    component.downloadExcel();
    expect(mockTrainService.downloadExcel).toHaveBeenCalled();
    expect(mockAnchor.click).toHaveBeenCalledTimes(3);

    component.downloadExportsZip();
    expect(mockTrainService.downloadExportsZip).toHaveBeenCalled();
    expect(mockAnchor.click).toHaveBeenCalledTimes(4);
  });

  it('should delete dataset', () => {
    component.deleteDataset('1');
    expect(mockTrainService.deleteUpload).toHaveBeenCalledWith('1');
  });

  it('should handle drag leave', () => {
    const event = new DragEvent('dragleave');
    spyOn(event, 'preventDefault');
    component.onDragLeave(event);
    expect(event.preventDefault).toHaveBeenCalled();
    expect(component.isDragging).toBeFalse();
  });

  it('should handle drag events', () => {
    const event = new DragEvent('dragover');
    spyOn(event, 'preventDefault');
    component.onDragOver(event);
    expect(event.preventDefault).toHaveBeenCalled();
    expect(component.isDragging).toBeTrue();
  });

  it('should reject invalid file drops and selections', () => {
    const dialogSpy = spyOn(component.dialog, 'open');
    const validFile = new File([''], 'data.csv');
    const invalidFile = new File([''], 'data.txt');

    // Test invalid drop
    component.onDrop({ preventDefault: () => {}, dataTransfer: { files: [invalidFile] } } as any);
    expect(dialogSpy).toHaveBeenCalled();

    // Test valid drop
    component.onDrop({ preventDefault: () => {}, dataTransfer: { files: [validFile] } } as any);
    expect(component.uploadedFiles.length).toBeGreaterThan(0);

    // Test invalid selection
    component.uploadedFiles = [];
    component.onFileSelected({ target: { files: [invalidFile], value: '' } } as any);
    expect(dialogSpy).toHaveBeenCalledTimes(2);
  });

  it('should ignore drops and selections without files', () => {
    component.onDrop({ preventDefault: () => {}, dataTransfer: { files: [] } } as any);
    expect(component.uploadedFiles.length).toBe(0);

    component.onFileSelected({ target: { files: [] } } as any);
    expect(component.uploadedFiles.length).toBe(0);
    
    component.onFileSelected({ target: {} } as any);
    expect(component.uploadedFiles.length).toBe(0);
    
    // Test null dataTransfer
    component.onDrop({ preventDefault: () => {}, dataTransfer: null } as any);
    expect(component.uploadedFiles.length).toBe(0);
    
    // Test null target files
    component.onFileSelected({ target: { files: null } } as any);
    expect(component.uploadedFiles.length).toBe(0);

    // Test no file drop or uploading state skips
    component.isUploading = true;
    const validFile = new File([''], 'data.csv');
    component.onDrop({ preventDefault: () => {}, dataTransfer: { files: [validFile] } } as any);
    component.onFileSelected({ target: { files: [validFile] } } as any);
    expect(component.uploadedFiles.length).toBe(0); // Ignored due to isUploading
  });

  it('should handle file selection and drop events', () => {
    const file = new File([''], 'data.csv');
    component.handleFile(file);
    expect(component.uploadedFiles.length).toBe(1);
    
    component.deleteFile(0);
    expect(component.uploadedFiles.length).toBe(0);
  });

  it('should resume polling on init if task_id exists', async () => {
    localStorage.setItem('upload_task_id', 'task_resume');
    component.ngOnInit();
    expect(component.isUploading).toBeTrue();
    await new Promise(resolve => setTimeout(resolve, 600));
    expect(mockTrainService.getUploadStatus).toHaveBeenCalledWith('task_resume');
  });

  it('should not resume polling on init if no task_id exists', () => {
    localStorage.removeItem('upload_task_id');
    component.ngOnInit();
    expect(component.isUploading).toBeFalse();
  });

  it('should upload a file and poll status', async () => {
    const file = new File([''], 'data.csv');
    component.uploadFile(file);
    await new Promise(resolve => setTimeout(resolve, 600));
    expect(mockTrainService.uploadTrainData).toHaveBeenCalled();
    expect(mockTrainService.getUploadStatus).toHaveBeenCalledWith('task123');
  });

  it('should handle UploadProgress events', () => {
    mockTrainService.uploadTrainData.and.returnValue(of({ type: HttpEventType.UploadProgress, loaded: 50, total: 100 }));
    const file = new File([''], 'data.csv');
    component.uploadFile(file);
    expect(component.uploadProgress).toBe(50);
  });

  it('should handle UploadProgress events without total size', () => {
    mockTrainService.uploadTrainData.and.returnValue(of({ type: HttpEventType.UploadProgress, loaded: 50 }));
    const file = new File([''], 'data.csv');
    component.uploadFile(file);
    expect(component.uploadProgress).toBe(100);
  });

  it('should confirm upload of a specific file', () => {
    const file = new File([''], 'test.csv');
    component.uploadedFiles = [file];
    component.confirmUpload(file, 0);
    expect(mockTrainService.uploadTrainData).toHaveBeenCalled();
  });

  it('should handle file upload failure', () => {
    mockTrainService.uploadTrainData.and.returnValue(throwError(() => new Error('Upload failed')));
    const file = new File([''], 'data.csv');
    component.uploadFile(file);
    expect(component.isUploading).toBeFalse();
  });

  it('should handle polling error', async () => {
    mockTrainService.getUploadStatus.and.returnValue(throwError(() => new Error('Polling failed')));
    const file = new File([''], 'data.csv');
    component.uploadFile(file);
    await new Promise(resolve => setTimeout(resolve, 600));
    expect(component.isUploading).toBeFalse();
  });

  it('should handle load datasets and exports errors', () => {
    mockTrainService.getUploadedDatasets.and.returnValue(throwError(() => new Error('Error')));
    mockTrainService.getExports.and.returnValue(throwError(() => new Error('Error')));
    component.loadDatasets();
    component.loadExports();
    expect(mockTrainService.getUploadedDatasets).toHaveBeenCalled();
  });

  it('should handle delete dataset error', () => {
    mockTrainService.deleteUpload.and.returnValue(throwError(() => new Error('Error')));
    component.deleteDataset('1');
    expect(mockTrainService.deleteUpload).toHaveBeenCalledWith('1');
  });

  it('should handle download errors for all filetypes', () => {
    spyOn(console, 'error');
    mockTrainService.downloadCsv.and.returnValue(throwError(() => new Error('DL Error')));
    mockTrainService.downloadJson.and.returnValue(throwError(() => new Error('DL Error')));
    mockTrainService.downloadExcel.and.returnValue(throwError(() => new Error('DL Error')));
    mockTrainService.downloadExportsZip.and.returnValue(throwError(() => new Error('DL Error')));

    component.downloadCsv();
    component.downloadJson();
    component.downloadExcel();
    component.downloadExportsZip();
    
    expect(console.error).toHaveBeenCalledTimes(4);
  });
});
