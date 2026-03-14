import { AfterViewInit, ChangeDetectionStrategy, Component, ViewChild } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { MatCardModule } from '@angular/material/card';
import { MatTableDataSource, MatTableModule } from '@angular/material/table';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { FormsModule } from '@angular/forms';
import { MatDatepickerModule } from '@angular/material/datepicker';
import { provideNativeDateAdapter } from '@angular/material/core';
import { MatPaginator, MatPaginatorModule } from '@angular/material/paginator';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatSort, MatSortModule } from '@angular/material/sort';
import { SelectionModel } from '@angular/cdk/collections';

export interface TrainElement {
  id: string;
  station: string;
  plannedDeparture: string;
}

const TRAIN_DATA: TrainElement[] = [
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
  imports: [
    MatSidenavModule,
    MatIconModule,
    MatButtonModule,
    MatCardModule,
    MatTableModule,
    MatInputModule,
    MatFormFieldModule,
    FormsModule,
    MatDatepickerModule,
    MatPaginatorModule,
    MatCheckboxModule,
    Sidenav,
    MatSortModule,
  ],
  providers: [provideNativeDateAdapter()],
  templateUrl: './dashboard.html',
  styleUrl: './dashboard.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Dashboard implements AfterViewInit {
  displayedColumns: string[] = ['select', 'id', 'station', 'plannedDeparture'];
  dataSource = new MatTableDataSource(TRAIN_DATA);
  selection = new SelectionModel<TrainElement>(true, []);

  @ViewChild(MatPaginator) paginator!: MatPaginator;
  @ViewChild(MatSort) sort!: MatSort;

  ngAfterViewInit() {
    this.dataSource.paginator = this.paginator;
    this.dataSource.sort = this.sort;
  }

  // Search filter

  applyFilter(event: Event) {
    const filterValue = (event.target as HTMLInputElement).value;
    this.dataSource.filter = filterValue.trim().toLowerCase();

    if (this.dataSource.paginator) {
      this.dataSource.paginator.firstPage();
    }
  }

  // Checkbox selection

  /** Whether the number of selected elements matches the total number of rows. */
  isAllSelected() {
    const numSelected = this.selection.selected.length;
    const numRows = this.dataSource.data.length;
    return numSelected === numRows;
  }

  /** Selects all rows if they are not all selected; otherwise clear selection. */
  toggleAllRows() {
    if (this.isAllSelected()) {
      this.selection.clear();
      return;
    }

    this.selection.select(...this.dataSource.data);
  }

  /** The label for the checkbox on the passed row */
  checkboxLabel(row?: TrainElement): string {
    if (!row) {
      return `${this.isAllSelected() ? 'deselect' : 'select'} all`;
    }
    return `${this.selection.isSelected(row) ? 'deselect' : 'select'} row ${row.id}`;
  }

  // Expanded row details

  columnsToDisplayWithExpand = [...this.displayedColumns, 'expand'];
  expandedElement: TrainElement | null = null;

  /** Checks whether an element is expanded. */
  isExpanded(element: TrainElement) {
    return this.expandedElement === element;
  }

  /** Toggles the expanded state of an element. */
  toggle(element: TrainElement) {
    this.expandedElement = this.isExpanded(element) ? null : element;
  }
}
