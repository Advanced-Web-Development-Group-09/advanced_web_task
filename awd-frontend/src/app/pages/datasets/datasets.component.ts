import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { TrainService } from './train.service';
import { timer, Subscription } from 'rxjs';
import { switchMap, takeWhile } from 'rxjs/operators';

@Component({
  selector: 'app-datasets',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './datasets.component.html'
})
export class DatasetsComponent implements OnInit {
  trains: any[] = [];
  isLoading = false;
  isUploading = false;
  uploadProgress = 0;
  pollingSubscription!: Subscription;

  constructor(private trainService: TrainService) {}

  ngOnInit(): void {
    this.loadDatasets();
  }

  loadDatasets(): void {
    this.isLoading = true;
    this.trainService.getTrains(0, 50).subscribe({
      next: (data: any) => {
        // Depending on your API pagination wrap, it might be `data` or `data.items`
        this.trains = data.items || data; 
        this.isLoading = false;
      },
      error: (err: any) => {
        console.error('Failed to load datasets', err);
        this.isLoading = false;
      }
    });
  }

  onFileUpload(event: Event): void {
    const input = event.target as HTMLInputElement;
    if (input.files && input.files.length > 0) {
      const file = input.files[0];
      this.isUploading = true;
      this.uploadProgress = 0;
      
      this.trainService.uploadTrainData(file).subscribe({
        next: (response: any) => {
          this.pollUploadStatus(response.task_id);
        },
        error: (err: any) => {
          console.error('Upload failed', err);
          this.isUploading = false;
        }
      });
    }
  }

  pollUploadStatus(taskId: string): void {
    // Ping the backend every 500ms until the status is 'completed' or 'failed'
    this.pollingSubscription = timer(0, 500).pipe(
      switchMap(() => this.trainService.getUploadStatus(taskId)),
      takeWhile((res: any) => res.status !== 'completed' && res.status !== 'failed', true)
    ).subscribe({
      next: (res: any) => {
        this.uploadProgress = res.progress_percentage || 0;
        if (res.status === 'completed') {
          this.isUploading = false;
          this.loadDatasets(); // Refresh the table with new data
          alert('Dataset successfully processed!');
        } else if (res.status === 'failed') {
          this.isUploading = false;
          alert('Error processing the dataset.');
        }
      },
      error: () => this.isUploading = false
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
      },
      error: (err: any) => console.error('Download failed', err)
    });
  }
}