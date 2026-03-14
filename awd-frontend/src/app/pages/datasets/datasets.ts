import { Component } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatTableModule } from '@angular/material/table';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';

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
];

const EXPORTED_DATA: DatasetElement[] = [
  { name: 'export_1.csv', size: '3mb', date: '2023-01-01 00:01:00' },
  { name: 'export_2.csv', size: '1mb', date: '2023-01-02 00:17:00' },
  { name: 'export_3.csv', size: '7mb', date: '2023-01-03 00:04:00' },
  { name: 'export_4.csv', size: '0.5mb', date: '2023-01-04 00:21:00' },
  { name: 'export_5.csv', size: '10mb', date: '2023-01-05 00:21:00' },
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
  ],
  templateUrl: './datasets.html',
  styleUrl: './datasets.css',
})
export class Datasets {
  displayedColumns: string[] = ['name', 'size', 'date', 'button'];
  dataSourceUploaded = UPLOADED_DATA;
  dataSourceExported = EXPORTED_DATA;

  isDragging = false;

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
    alert(`File "${file.name}" selected for upload`);
    console.log('Uploaded file:', file);

    // Example: upload to backend later
  }
}
