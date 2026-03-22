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
import { MatPaginator, MatPaginatorModule } from '@angular/material/paginator';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatSort, MatSortModule } from '@angular/material/sort';
import { MatAutocompleteModule } from '@angular/material/autocomplete';

import { SelectionModel } from '@angular/cdk/collections';
import { TranslatePipe } from '@ngx-translate/core';

import { Sidenav } from '../../shared/sidenav/sidenav';

export interface TrainElement {
  id: string;
  station: string;
  plannedDeparture: string;
}

const TRAIN_DATA: readonly TrainElement[] = [
  {
    id: '1573967790757085557-2407072312-14',
    station: 'Aachen Hbf',
    plannedDeparture: '2024-07-08 00:01:00',
  },
  {
    id: '349781417030375472-2407080017-1',
    station: 'Aachen Hbf',
    plannedDeparture: '2024-07-08 00:17:00',
  },
  {
    id: '7157250219775883918-2407072120-25',
    station: 'Aachen-Rothe Erde',
    plannedDeparture: '2024-07-08 00:04:00',
  },
  {
    id: '349781417030375472-2407080017-2',
    station: 'Aachen West',
    plannedDeparture: '2024-07-08 00:21:00',
  },
  {
    id: '1983158592123451570-2407080010-3',
    station: 'Aachen West',
    plannedDeparture: '2024-07-08 00:21:00',
  },
  {
    id: '-5293934437045765939-2407080023-2',
    station: 'Aachen West',
    plannedDeparture: '2024-07-08 00:31:00',
  },
  {
    id: '6845762881043426854-2407072357-6',
    station: 'Aachen West',
    plannedDeparture: '2024-07-08 00:58:00',
  },
  {
    id: '-2100556839975301087-2407072307-13',
    station: 'Aachen West',
    plannedDeparture: '2024-07-08 00:41:00',
  },
  {
    id: '-7696913984968518161-2407080037-1',
    station: 'Aalen Hbf',
    plannedDeparture: '2024-07-08 00:37:00',
  },
  {
    id: '-6027587483204218492-2407080013-4',
    station: 'Achim',
    plannedDeparture: '2024-07-08 00:27:00',
  },
  {
    id: '-7723223610149163054-2407072310-9',
    station: 'Ahlen (Han)',
    plannedDeparture: '2024-07-08 00:16:00',
  },
  {
    id: '5729393359484274537-2407080007-8',
    station: 'Ahlen (Han)',
    plannedDeparture: '2024-07-08 00:39:00',
  },
  {
    id: '1640260421649276864-2407080004-5',
    station: 'Ahlen (Han)',
    plannedDeparture: '2024-07-08 00:16:00',
  },
  {
    id: '8352762151701721590-2407080034-5',
    station: 'Ahlen (Han)',
    plannedDeparture: '2024-07-08 00:46:00',
  },
  {
    id: '-1113872591615872448-2407072343-6',
    station: 'Ahlen (Han)',
    plannedDeparture: '2024-07-08 00:11:00',
  },
];

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
  readonly displayedColumns: string[] = ['select', 'id', 'station', 'plannedDeparture'];
  readonly columnsToDisplayWithExpand = [...this.displayedColumns, 'expand'];

  readonly dataSource = new MatTableDataSource<TrainElement>([...TRAIN_DATA]);
  readonly selection = new SelectionModel<TrainElement>(true, []);

  searchValue = '';
  lastSearches: string[] = [];

  expandedElement: TrainElement | null = null;

  private readonly STORAGE_KEY = 'searchHistory';

  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort) sort!: MatSort;

  // Initial load

  ngOnInit(): void {
    this.loadSearchHistory();
    this.setupFilter();
  }

  ngAfterViewInit(): void {
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  // filtering

  private setupFilter(): void {
    this.dataSource.filterPredicate = (data, filter) => {
      const search = filter.trim().toLowerCase();

      return (
        data.id.toLowerCase().includes(search) ||
        data.station.toLowerCase().includes(search) ||
        data.plannedDeparture.toLowerCase().includes(search)
      );
    };
  }

  onSearch(): void {
    const value = this.searchValue.trim().toLowerCase();

    this.dataSource.filter = value;
    this.paginator?.firstPage();

    this.saveSearch(value);
  }

  onSelect(value: string): void {
    this.searchValue = value;
    this.onSearch();
  }

  // search history

  private loadSearchHistory(): void {
    const stored = localStorage.getItem(this.STORAGE_KEY);
    if (stored) {
      this.lastSearches = JSON.parse(stored);
    }
  }

  private saveSearch(value: string): void {
    if (!value) return;

    this.lastSearches = [value, ...this.lastSearches.filter((v) => v !== value)].slice(0, 5);

    localStorage.setItem(this.STORAGE_KEY, JSON.stringify(this.lastSearches));
  }

  // selection

  isAllSelected(): boolean {
    return this.selection.selected.length === this.dataSource.data.length;
  }

  toggleAllRows(): void {
    this.isAllSelected() ? this.selection.clear() : this.selection.select(...this.dataSource.data);
  }

  checkboxLabel(row?: TrainElement): string {
    if (!row) {
      return `${this.isAllSelected() ? 'deselect' : 'select'} all`;
    }
    return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.id}`;
  }

  // expansion

  isExpanded(element: TrainElement): boolean {
    return this.expandedElement === element;
  }

  toggle(element: TrainElement): void {
    this.expandedElement = this.isExpanded(element) ? null : element;
  }
}
