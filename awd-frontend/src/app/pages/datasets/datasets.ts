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
import { MatDialog, MatDialogModule } from '@angular/material/dialog';
import { WrongFileTypeDialog } from '../../dialogs/wrong-file-type-dialog/wrong-file-type-dialog';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { TrainService } from './train.service';
import { timer, Subscription } from 'rxjs';
import { switchMap, takeWhile } from 'rxjs/operators';
import { HttpEventType } from '@angular/common/http';

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
    MatDialogModule,
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
