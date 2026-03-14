import { Component } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';

import { FormControl, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Observable } from 'rxjs';
import { map, startWith } from 'rxjs/operators';
import { AsyncPipe } from '@angular/common';
import { MatAutocompleteModule } from '@angular/material/autocomplete';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';

@Component({
  selector: 'app-analytics',
  imports: [
    MatSidenavModule,
    Sidenav,
    MatCardModule,
    MatIconModule,
    MatButtonModule,
    FormsModule,
    ReactiveFormsModule,
    AsyncPipe,
    MatAutocompleteModule,
    MatInputModule,
    MatFormFieldModule,
  ],
  templateUrl: './analytics.html',
  styleUrl: './analytics.css',
})
export class Analytics {
  myControl = new FormControl('');
  myControl2 = new FormControl('');
  myControl3 = new FormControl('');
  options: string[] = ['Hildesheim Hbf', 'Hannover Hbf', 'Braunschweig Hbf', 'Göttingen Hbf'];
  optionsStates: string[] = [
    'Bayern',
    'Sachsen',
    'Nordrhein-Westfalen',
    'Baden-Württemberg',
    'Hessen',
  ];
  filteredOptions: Observable<string[]>;
  filteredOptions2: Observable<string[]>;
  filteredOptions3: Observable<string[]>;

  constructor() {
    this.filteredOptions = this.myControl.valueChanges.pipe(
      startWith(''),
      map((value) => this._filter(value || '')),
    );
    this.filteredOptions2 = this.myControl2.valueChanges.pipe(
      startWith(''),
      map((value) => this._filter(value || '')),
    );
    this.filteredOptions3 = this.myControl3.valueChanges.pipe(
      startWith(''),
      map((value) => this._filterStates(value || '')),
    );
  }

  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();
    return this.options.filter((option) => option.toLowerCase().includes(filterValue));
  }

  private _filterStates(value: string): string[] {
    const filterValue = value.toLowerCase();
    return this.optionsStates.filter((state) => state.toLowerCase().includes(filterValue));
  }
}
