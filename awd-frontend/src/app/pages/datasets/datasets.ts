import { AfterViewInit, ChangeDetectionStrategy, Component, ViewChild } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatTableDataSource, MatTableModule } from '@angular/material/table';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatPaginator, MatPaginatorModule } from '@angular/material/paginator';

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
    CommonModule,
  ],
  templateUrl: './datasets.html',
  styleUrl: './datasets.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Datasets implements AfterViewInit {
  // Table Logic
  displayedColumns: string[] = ['name', 'size', 'date', 'button'];

  dataSourceUploaded = new MatTableDataSource<DatasetElement>(UPLOADED_DATA);
  dataSourceExported = new MatTableDataSource<DatasetElement>(EXPORTED_DATA);

  // Paginator Logic

  @ViewChild('uploadedPaginator') uploadedPaginator!: MatPaginator;
  @ViewChild('exportedPaginator') exportedPaginator!: MatPaginator;

  ngAfterViewInit() {
    this.dataSourceUploaded.paginator = this.uploadedPaginator;
    this.dataSourceExported.paginator = this.exportedPaginator;
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

    if (event.dataTransfer?.files.length) {
      const file = event.dataTransfer.files[0];
      if (
        !file.name.endsWith('.csv') &&
        !file.name.endsWith('.xlsx') &&
        !file.name.endsWith('.json')
      ) {
        alert('Only CSV, XLSX, and JSON files allowed');
        return;
      }
      this.handleFile(file);
    }
  }

  onFileSelected(event: Event) {
    const input = event.target as HTMLInputElement;

    if (input.files && input.files.length > 0) {
      const file = input.files[0];
      if (
        !file.name.endsWith('.csv') &&
        !file.name.endsWith('.xlsx') &&
        !file.name.endsWith('.json')
      ) {
        alert('Only CSV, XLSX, and JSON files allowed');
        return;
      }
      this.handleFile(file);
    }
  }

  handleFile(file: File) {
    this.uploadedFiles.push(file);
    // Example: upload to backend later
  }
}
