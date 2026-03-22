import {
  ChangeDetectionStrategy,
  Component,
  inject,
  OnInit,
  ChangeDetectorRef
} from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatTableDataSource, MatTableModule } from '@angular/material/table';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatPaginator, MatPaginatorModule } from '@angular/material/paginator';
import { TranslatePipe } from '@ngx-translate/core';
import { MatDialog } from '@angular/material/dialog';
<<<<<<< Updated upstream
import { WrongFileTypeDialog } from '../../dialogs/wrong-file-type-dialog/wrong-file-type-dialog';

export interface DatasetElement {
  name: string;
  size: string;
  date: string;
}

const UPLOADED_DATA: DatasetElement[] = [
  { name: 'data_set_1.csv', size: '145mb', date: '2023-01-01 00:01:00' },
  { name: 'data_set_2.csv', size: '90mb', date: '2023-01-02 00:17:00' },
  { name: 'data_set_3.csv', size: '137mb', date: '2023-01-03 00:04:00' },
  { name: 'data_set_4.csv', size: '49mb', date: '2023-01-04 00:21:00' },
  { name: 'data_set_5.csv', size: '3mb', date: '2023-01-05 00:21:00' },
  { name: 'data_set_6.csv', size: '200mb', date: '2023-01-06 10:11:00' },
  { name: 'data_set_7.csv', size: '75mb', date: '2023-01-07 12:22:00' },
  { name: 'data_set_8.csv', size: '120mb', date: '2023-01-08 14:33:00' },
  { name: 'data_set_9.csv', size: '60mb', date: '2023-01-09 16:44:00' },
  { name: 'data_set_10.csv', size: '5mb', date: '2023-01-10 18:55:00' },
];

const EXPORTED_DATA: DatasetElement[] = [
  { name: 'export_1.csv', size: '3mb', date: '2023-01-01 00:01:00' },
  { name: 'export_2.csv', size: '1mb', date: '2023-01-02 00:17:00' },
  { name: 'export_3.csv', size: '7mb', date: '2023-01-03 00:04:00' },
  { name: 'export_4.csv', size: '0.5mb', date: '2023-01-04 00:21:00' },
  { name: 'export_5.csv', size: '10mb', date: '2023-01-05 00:21:00' },
  { name: 'export_6.csv', size: '2mb', date: '2023-01-06 10:11:00' },
  { name: 'export_7.csv', size: '4mb', date: '2023-01-07 12:22:00' },
  { name: 'export_8.csv', size: '6mb', date: '2023-01-08 14:33:00' },
  { name: 'export_9.csv', size: '8mb', date: '2023-01-09 16:44:00' },
  { name: 'export_10.csv', size: '12mb', date: '2023-01-10 18:55:00' },
];
=======
import { WrongFileTypeDialog } from '../../dialogs/upload_dialog/wrong-file-type-dialog/wrong-file-type-dialog';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { TrainService } from './train.service';
import { timer, Subscription } from 'rxjs';
import { switchMap, takeWhile } from 'rxjs/operators';
import { HttpEventType } from '@angular/common/http';
>>>>>>> Stashed changes

@Component({
  selector: 'app-datasets',
  imports: [
    MatSidenavModule,
    Sidenav,
    MatCardModule,
    MatTableModule,
    MatIconModule,
    MatButtonModule,
    MatPaginatorModule,
    MatProgressBarModule,
    CommonModule,
    TranslatePipe,
  ],
  templateUrl: './datasets.html',
  styleUrl: './datasets.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Datasets implements OnInit {
  // Dialog Logic
  readonly dialog = inject(MatDialog);
  private trainService = inject(TrainService);
  private cdr = inject(ChangeDetectorRef);

  datasetColumns = ['name', 'size', 'uploader', 'timestamp', 'actions'];
  exportsColumns = ['timestamp', 'action'];
  dataSourceDatasets = new MatTableDataSource<any>([]);
  dataSourceExports = new MatTableDataSource<any>([]);

  isUploading = false;
  uploadProgress = 0;
  uploadStatusText = '';
  pollingSubscription!: Subscription;

  ngOnInit() {
    this.loadDatasets();
    this.loadExports();
    
    const savedTaskId = localStorage.getItem('upload_task_id');
    if (savedTaskId) {
      this.isUploading = true;
      this.pollUploadStatus(savedTaskId);
    }
  }

  loadDatasets(): void {
    this.trainService.getUploadedDatasets().subscribe({
      next: (data: any) => {
        this.dataSourceDatasets.data = data;
        this.cdr.markForCheck();
      },
      error: (err: any) => console.error('Failed to load datasets', err)
    });
  }

  loadExports(): void {
    this.trainService.getExports().subscribe({
      next: (data: any) => {
        this.dataSourceExports.data = data;
        this.cdr.markForCheck();
      },
      error: (err: any) => console.error('Failed to load export history', err)
    });
  }

  // Drag and Drop Logic
  isDragging = false;
  uploadedFiles: File[] = [];

  onDragOver(event: DragEvent) {
    event.preventDefault();
    this.isDragging = true;
  }

  onDragLeave(event: DragEvent) {
    event.preventDefault();
    this.isDragging = false;
  }

  onDrop(event: DragEvent) {
    event.preventDefault();
    this.isDragging = false;
    if (this.isUploading) return;

    if (event.dataTransfer?.files.length) {
      const file = event.dataTransfer.files[0];
      if (
        !file.name.endsWith('.csv') &&
        !file.name.endsWith('.xlsx') &&
        !file.name.endsWith('.json')
      ) {
        this.dialog.open(WrongFileTypeDialog);
        return;
      }
      this.handleFile(file);
    }
  }

  onFileSelected(event: Event) {
    const input = event.target as HTMLInputElement;

    if (this.isUploading) return;
    if (input.files && input.files.length > 0) {
      const file = input.files[0];
      input.value = ''; // clear value so same file can be selected again
      if (
        !file.name.endsWith('.csv') &&
        !file.name.endsWith('.xlsx') &&
        !file.name.endsWith('.json')
      ) {
        this.dialog.open(WrongFileTypeDialog);
        return;
      }
      this.handleFile(file);
    }
  }

  handleFile(file: File) {
    this.uploadedFiles.push(file);
    this.cdr.markForCheck();
  }

  deleteFile(index: number) {
    this.uploadedFiles.splice(index, 1);
    this.cdr.markForCheck();
  }

  confirmUpload(file: File, index: number) {
    this.uploadFile(file);
  }

  uploadFile(file: File): void {
    this.isUploading = true;
    this.uploadProgress = 0;
    this.uploadStatusText = 'Uploading to server...';
    this.cdr.markForCheck();
    this.trainService.uploadTrainData(file).subscribe({
      next: (response: any) => {
        if (response.type === HttpEventType.UploadProgress) {
          this.uploadProgress = Math.round(100 * response.loaded / (response.total || response.loaded));
          this.cdr.markForCheck();
        } else if (response.type === HttpEventType.Response) {
          const taskId = response.body.task_id;
          localStorage.setItem('upload_task_id', taskId);
          this.pollUploadStatus(taskId);
        }
      },
      error: (err: any) => {
        console.error('Upload failed', err);
        this.isUploading = false;
        this.uploadStatusText = '';
        localStorage.removeItem('upload_task_id');
        alert('File upload failed.');
        this.cdr.markForCheck();
      }
    });
  }

  pollUploadStatus(taskId: string): void {
    this.uploadStatusText = 'Processing Dataset in Background...';
    this.pollingSubscription = timer(0, 500).pipe(
      switchMap(() => this.trainService.getUploadStatus(taskId)),
      takeWhile((res: any) => res.status !== 'completed' && res.status !== 'failed', true)
    ).subscribe({
      next: (res: any) => {
        this.uploadProgress = Math.round(res.progress_percentage || 0);
        this.cdr.markForCheck();
        if (res.status === 'completed') {
          this.isUploading = false;
          this.uploadedFiles = [];
          this.uploadStatusText = '';
          localStorage.removeItem('upload_task_id');
          this.loadDatasets();
          alert('Dataset successfully processed!');
        } else if (res.status === 'failed') {
          this.isUploading = false;
          this.uploadStatusText = '';
          localStorage.removeItem('upload_task_id');
          alert('Error processing the dataset.');
        }
        this.cdr.markForCheck();
      },
      error: () => {
        this.isUploading = false;
        this.uploadStatusText = '';
        localStorage.removeItem('upload_task_id');
        this.cdr.markForCheck();
      }
    });
  }

  downloadCsv(): void {
    this.trainService.downloadCsv().subscribe({
      next: (blob: Blob) => {
        const url = window.URL.createObjectURL(blob);
        const anchor = document.createElement('a');
        anchor.href = url;
        anchor.download = 'train_data_export.csv';
        anchor.click();
        window.URL.revokeObjectURL(url);
        this.loadExports();
      },
      error: (err: any) => console.error('Download failed', err)
    });
  }

  deleteDataset(uploadId: string): void {
    this.trainService.deleteUpload(uploadId).subscribe({
      next: () => {
        this.loadDatasets();
      },
      error: (err: any) => console.error('Failed to delete dataset', err)
    });
  }
}
