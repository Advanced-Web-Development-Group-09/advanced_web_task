import {
  AfterViewInit,
  ChangeDetectionStrategy,
  Component,
  OnInit,
  ViewChild,
} from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { MatSidenavModule } from '@angular/material/sidenav';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatTableDataSource, MatTableModule } from '@angular/material/table';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { provideNativeDateAdapter } from '@angular/material/core';
import { MatPaginator, MatPaginatorModule, PageEvent } from '@angular/material/paginator';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatSort, MatSortModule } from '@angular/material/sort';
import { MatAutocompleteModule } from '@angular/material/autocomplete';

import { SelectionModel } from '@angular/cdk/collections';
import { TranslatePipe } from '@ngx-translate/core';

import { Sidenav } from '../../shared/sidenav/sidenav';
import { TrainService, Train } from '../../services/train/train.service';

@Component({
  selector: 'app-dashboard',
  standalone: true,
  imports: [
    CommonModule,
    FormsModule,
    MatSidenavModule,
    MatIconModule,
    MatButtonModule,
    MatCardModule,
    MatTableModule,
    MatInputModule,
    MatFormFieldModule,
    MatDatepickerModule,
    MatPaginatorModule,
    MatCheckboxModule,
    MatSortModule,
    MatAutocompleteModule,
    TranslatePipe,
    Sidenav,
  ],
  providers: [provideNativeDateAdapter()],
  templateUrl: './dashboard.html',
  styleUrl: './dashboard.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Dashboard implements OnInit, AfterViewInit {
  // Table columns
  readonly displayedColumns: string[] = ['select', 'id', 'station', 'plannedDeparture'];
  readonly columnsToDisplayWithExpand = [...this.displayedColumns, 'expand'];

  // Data and state
  readonly dataSource = new MatTableDataSource<Train>([]);
  readonly selection = new SelectionModel<Train>(true, []);

  searchValue = '';
  lastSearches: string[] = [];
  total = 0;
  expandedElement: Train | null = null;

  private readonly STORAGE_KEY = 'searchHistory';

  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort) sort!: MatSort;

  constructor(private trainService: TrainService) {}

  // Load search history on init
  ngOnInit(): void {
    this.loadSearchHistory();
  }

  // Initialize paginator and fetch trains
  ngAfterViewInit(): void {
    this.loadTrains(0, this.paginator.pageSize || 10);

    this.paginator.page.subscribe((event: PageEvent) => {
      this.loadTrains(event.pageIndex, event.pageSize);
    });
  }

  // Fetch trains from service
  loadTrains(pageIndex: number, pageSize: number): void {
    const skip = pageIndex * pageSize;

    this.trainService.getTrains(skip, pageSize, this.searchValue).subscribe({
      next: (res) => {
        this.dataSource.data = res.items;
        this.total = res.total;
        this.selection.clear();
      },
      error: (err) => {
        console.error('Failed to load trains', err);
      },
    });
  }

  // Search and reset to first page
  onSearch(): void {
    const value = this.searchValue.trim();

    this.saveSearch(value);

    this.paginator.firstPage();
    this.loadTrains(0, this.paginator.pageSize || 10);
  }

  // Set search value from suggestion and search
  onSelect(value: string): void {
    this.searchValue = value;
    this.onSearch();
  }

  // Load search history from localStorage
  private loadSearchHistory(): void {
    const stored = localStorage.getItem(this.STORAGE_KEY);
    if (stored) {
      this.lastSearches = JSON.parse(stored);
    }
  }

  // Save search to history (max 5 unique)
  private saveSearch(value: string): void {
    if (!value) return;

    this.lastSearches = [value, ...this.lastSearches.filter((v) => v !== value)].slice(0, 5);

    localStorage.setItem(this.STORAGE_KEY, JSON.stringify(this.lastSearches));
  }

  // Check if all rows are selected
  isAllSelected(): boolean {
    return this.selection.selected.length === this.dataSource.data.length;
  }

  // Toggle all row selection
  toggleAllRows(): void {
    this.isAllSelected() ? this.selection.clear() : this.selection.select(...this.dataSource.data);
  }

  // Generate checkbox label for accessibility
  checkboxLabel(row?: Train): string {
    if (!row) {
      return `${this.isAllSelected() ? 'deselect' : 'select'} all`;
    }
    return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.id}`;
  }

  // Check if row is expanded
  isExpanded(element: Train): boolean {
    return this.expandedElement === element;
  }

  // Toggle row expansion
  toggle(element: Train): void {
    this.expandedElement = this.isExpanded(element) ? null : element;
  }

  // Export logic
  exportSelected(): void {
    const selectedIds = this.selection.selected.map((train) => train.id);

    this.trainService.exportSelectedTrains(selectedIds).subscribe((blob) => {
      const url = window.URL.createObjectURL(blob);
      const a = document.createElement('a');
      a.href = url;

      // adjust filename depending on backend
      a.download = 'trains_export.csv';

      a.click();
      window.URL.revokeObjectURL(url);
    });
  }
}
