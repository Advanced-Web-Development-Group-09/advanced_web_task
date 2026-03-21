import { Component, OnInit, inject, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { TrainService } from './train.service';

@Component({
  selector: 'app-train-data',
  standalone: true,
  imports: [CommonModule, FormsModule],
  template: `
    <div class="page-wrapper">
      <div class="page-header">
        <h2>Train Database</h2>
        <p>Manage and analyze your DB train datasets</p>
      </div>
      
      <!-- Drag and Drop Upload Card -->
      <div class="card upload-card">
        <h3>Dataset Upload</h3>
        <div class="drop-zone" (dragover)="onDragOver($event)" (dragleave)="onDragLeave($event)" (drop)="onDrop($event)" [class.drag-over]="isDragging" *ngIf="!selectedFile && (!uploadStatus || uploadStatus.status === 'failed')">
          <div class="upload-icon">📁</div>
          <p>Drag & Drop a CSV file here to upload, or <span class="text-link">browse</span>.</p>
          <input type="file" (change)="onFileSelect($event)" accept=".csv">
        </div>

        <div class="file-info" *ngIf="selectedFile && (!uploadStatus || uploadStatus.status === 'failed')">
          <div class="file-details">
            <span class="file-icon">📄</span>
            <span class="file-name">{{ selectedFile.name }}</span>
            <span class="file-size">({{(selectedFile.size / 1024).toFixed(2)}} KB)</span>
          </div>
          <div class="file-actions">
            <button class="btn-secondary" (click)="clearSelection()">Cancel</button>
            <button class="btn-primary" (click)="startUpload()">Start Processing</button>
          </div>
        </div>

        <div class="progress-container" *ngIf="uploadStatus">
          <div class="progress-bar">
            <div class="fill" [style.width.%]="uploadStatus.progress_percentage || 0"></div>
          </div>
          <span class="status-text">{{ uploadStatus.status | uppercase }} ({{ uploadStatus.progress_percentage || 0 }}%)</span>
        </div>
        <p *ngIf="uploadMessage" class="upload-msg" [class.error]="uploadStatus?.status === 'failed'">{{ uploadMessage }}</p>
      </div>

      <!-- Data Table Card -->
      <div class="card table-card">
        <div class="toolbar">
          <div class="search-box">
            <input type="text" [(ngModel)]="searchTerm" placeholder="Search by Station or ID..." (input)="loadData()">
          </div>
          <div class="toolbar-actions">
            <label class="sort-toggle">
              <input type="checkbox" [(ngModel)]="sortByDeparture" (change)="loadData()"> Sort by Departure
            </label>
            <button class="btn-primary" (click)="downloadCsv()">Export CSV</button>
          </div>
        </div>

        <div class="table-responsive">
          <table class="styled-table">
            <thead>
              <tr>
                <th>ID</th>
                <th>Station</th>
                <th>Planned Departure</th>
                <th class="actions-col">Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr *ngFor="let train of trains">
                <td class="font-mono">{{ train.id | slice:0:8 }}...</td>
                <td class="font-bold">{{ train.station }}</td>
                <td>{{ train.planned_departure | date:'medium' }}</td>
                <td class="actions-col">
                  <button class="btn-icon" (click)="viewDetails(train.id)" title="View Details">👁️</button>
                  <button class="btn-icon text-danger" *ngIf="train.upload_id" (click)="deleteUpload(train.upload_id)" title="Delete">🗑️</button>
                </td>
              </tr>
            </tbody>
          </table>
          <div *ngIf="trains.length === 0" class="empty-state">No train data found. Please upload a dataset.</div>
        </div>
      </div>

      <!-- Details Modal -->
      <div class="modal" *ngIf="selectedTrain">
        <div class="modal-content">
          <h3>Train Details ({{ selectedTrain.id }})</h3>
          <pre>{{ selectedTrain | json }}</pre>
          <button (click)="selectedTrain = null">Close</button>
        </div>
      </div>
    </div>
  `,
  styles: [`
    .page-wrapper { display: flex; flex-direction: column; gap: 1.5rem; }
    .page-header h2 { margin: 0; font-size: 2rem; color: #141E28; }
    body.dark-theme .page-header h2 { color: #f4f4f4; }
    .page-header p { margin: 0.5rem 0 0; color: #666; }
    
    .card { background: white; padding: 2rem; border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.04); border: 1px solid #eaeaea; }
    body.dark-theme .card { background: #1e1e1e; border-color: #333; color: #fff; }
    .card h3 { margin-top: 0; margin-bottom: 1.5rem; font-size: 1.25rem; color: #141E28; }
    body.dark-theme .card h3 { color: #eee; }

    .drop-zone { border: 2px dashed #ccc; padding: 3rem 2rem; text-align: center; border-radius: 8px; cursor: pointer; transition: all 0.3s ease; position: relative; background: #fafbfc; }
    body.dark-theme .drop-zone { background: #2a2a2a; border-color: #555; }
    .drop-zone:hover, .drop-zone.drag-over { border-color: #DB0000; background: #FFF0F0; }
    body.dark-theme .drop-zone:hover, body.dark-theme .drop-zone.drag-over { background: #3a1a1a; }
    .drop-zone input[type="file"] { position: absolute; width: 100%; height: 100%; top: 0; left: 0; opacity: 0; cursor: pointer; }
    .upload-icon { font-size: 3rem; margin-bottom: 1rem; color: #888; }
    .text-link { color: #DB0000; font-weight: 600; text-decoration: underline; }

    .file-info { display: flex; justify-content: space-between; align-items: center; padding: 1.5rem; background: #f8f9fa; border: 1px solid #e0e0e0; border-radius: 8px; margin-bottom: 1rem; flex-wrap: wrap; gap: 1rem;}
    body.dark-theme .file-info { background: #2a2a2a; border-color: #444; }
    .file-details { display: flex; align-items: center; gap: 10px; font-weight: 500; color: #333; }
    body.dark-theme .file-details { color: #eee; }
    .file-icon { font-size: 1.5rem; }
    .file-size { color: #888; font-size: 0.9rem; font-weight: 400; }
    .file-actions { display: flex; gap: 10px; }
    
    .btn-primary { background: #DB0000; color: white; border: none; padding: 10px 24px; border-radius: 50px; font-weight: 600; cursor: pointer; transition: background 0.2s; }
    .btn-primary:hover { background: #b30000; }
    .btn-secondary { background: white; color: #333; border: 1px solid #ccc; padding: 10px 24px; border-radius: 50px; font-weight: 600; cursor: pointer; transition: all 0.2s; }
    .btn-secondary:hover { background: #f0f0f0; }
    body.dark-theme .btn-secondary { background: #333; color: #eee; border-color: #555; }
    body.dark-theme .btn-secondary:hover { background: #444; }

    .toolbar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 1.5rem; flex-wrap: wrap; gap: 1rem; }
    .search-box input { padding: 10px 16px; width: 300px; border-radius: 50px; border: 1px solid #ccc; outline: none; font-size: 0.95rem; transition: border-color 0.2s; }
    .search-box input:focus { border-color: #DB0000; }
    body.dark-theme .search-box input { background: #2c2c2c; border-color: #444; color: #fff; }
    .toolbar-actions { display: flex; align-items: center; gap: 1.5rem; }
    .sort-toggle { font-size: 0.9rem; color: #555; display: flex; align-items: center; gap: 0.5rem; cursor: pointer; }
    body.dark-theme .sort-toggle { color: #aaa; }

    .btn-icon { background: transparent; border: none; font-size: 1.2rem; cursor: pointer; padding: 4px; opacity: 0.7; transition: opacity 0.2s; }
    .btn-icon:hover { opacity: 1; }
    .text-danger:hover { color: #DB0000; }

    .table-responsive { overflow-x: auto; }
    .styled-table { width: 100%; border-collapse: separate; border-spacing: 0; }
    .styled-table th, .styled-table td { padding: 1rem; text-align: left; border-bottom: 1px solid #eee; }
    .styled-table th { color: #888; font-weight: 600; font-size: 0.85rem; text-transform: uppercase; letter-spacing: 0.5px; }
    body.dark-theme .styled-table th, body.dark-theme .styled-table td { border-color: #333; }
    .styled-table tbody tr { transition: background 0.2s; }
    .styled-table tbody tr:hover { background: #fcfcfc; }
    body.dark-theme .styled-table tbody tr:hover { background: #252525; }
    .actions-col { text-align: right; white-space: nowrap; }
    .font-mono { font-family: monospace; color: #666; }
    .font-bold { font-weight: 600; color: #141E28; }
    body.dark-theme .font-bold { color: #fff; }
    .empty-state { text-align: center; padding: 3rem; color: #888; font-style: italic; }

    .progress-container { margin-top: 1.5rem; }
    .progress-bar { width: 100%; background: #e9ecef; border-radius: 50px; height: 8px; overflow: hidden; margin-bottom: 0.5rem; }
    body.dark-theme .progress-bar { background: #333; }
    .fill { height: 100%; background: #DB0000; transition: width 1s linear; }
    .status-text { font-size: 0.85rem; font-weight: 600; color: #555; }
    body.dark-theme .status-text { color: #aaa; }
    .upload-msg { margin-top: 0.5rem; font-size: 0.9rem; color: #28a745; font-weight: 500; }
    .upload-msg.error { color: #DB0000; }

    .modal { position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.5); display: flex; align-items: center; justify-content: center; }
    .modal-content { background: white; padding: 20px; border-radius: 8px; min-width: 400px; max-height: 80vh; overflow-y: auto; }
    body.dark-theme .modal-content { background: #222; color: #fff; }
  `]
})
export class TrainDataComponent implements OnInit {
  private trainService = inject(TrainService);
  private cdr = inject(ChangeDetectorRef);
  
  trains: any[] = [];
  searchTerm = '';
  sortByDeparture = false;
  selectedTrain: any = null;
  selectedFile: File | null = null;
  uploadStatus: any = null;
  isDragging = false;
  uploadMessage = '';

  ngOnInit() { this.loadData(); }

  loadData() {
    this.trainService.getTrains(this.searchTerm, this.sortByDeparture).subscribe(res => this.trains = res.data || res);
  }

  viewDetails(id: string) {
    this.trainService.getTrainDetails(id).subscribe(data => this.selectedTrain = data);
  }

  downloadCsv() {
    this.trainService.downloadCsv(this.searchTerm).subscribe(blob => {
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url; a.download = 'train_data.csv'; a.click();
    });
  }

  deleteUpload(uploadId: string) {
    if (window.confirm('Are you sure you want to delete this uploaded dataset?')) {
      this.trainService.deleteUpload(uploadId).subscribe(() => this.loadData());
    }
  }

  onDragOver(e: Event) { e.preventDefault(); this.isDragging = true; }
  onDragLeave(e: Event) { e.preventDefault(); this.isDragging = false; }
  onDrop(e: DragEvent) { e.preventDefault(); this.isDragging = false; const files = e.dataTransfer?.files; if (files?.length) this.selectedFile = files[0]; }
  onFileSelect(e: any) { const file = e.target.files[0]; if (file) this.selectedFile = file; }
  
  clearSelection() {
    this.selectedFile = null;
    this.uploadStatus = null;
    this.uploadMessage = '';
  }

  startUpload() {
    if (this.selectedFile) {
      this.handleUpload(this.selectedFile);
    }
  }

  private handleUpload(file: File) { 
    this.uploadMessage = ''; 
    this.uploadStatus = { status: 'starting', progress_percentage: 0 };
    this.trainService.uploadCsv(file).subscribe({ 
      next: (res) => { 
        this.uploadStatus = res;
        if (res.status === 'completed') { this.uploadMessage = 'Upload successful!'; this.loadData(); setTimeout(() => this.clearSelection(), 3000); }
        else if (res.status === 'failed') { this.uploadMessage = 'Upload failed! ' + (res.error || res.detail || res.message || JSON.stringify(res)); }
        this.cdr.detectChanges();
      }, 
      error: (err) => {
        this.uploadStatus = { status: 'failed', progress_percentage: 0 };
        
        let errorDetail = 'Incorrect format or Server Error.';
        if (err.error && err.error.detail) {
          errorDetail = typeof err.error.detail === 'string' ? err.error.detail : JSON.stringify(err.error.detail);
        }
        
        this.uploadMessage = 'Upload failed! ' + errorDetail;
        this.cdr.detectChanges();
      }
    }); 
  }
}