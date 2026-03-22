import { Component, ChangeDetectorRef } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';

import { FormControl, FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Observable } from 'rxjs';
import { map, startWith } from 'rxjs/operators';
import { AsyncPipe, CommonModule } from '@angular/common';
import { MatAutocompleteModule } from '@angular/material/autocomplete';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { TranslatePipe } from '@ngx-translate/core';
import { HttpClient } from '@angular/common/http';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { MatListModule } from '@angular/material/list';
import { MatDividerModule } from '@angular/material/divider';

@Component({
  selector: 'app-analytics',
  imports: [
    CommonModule,
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
    MatProgressBarModule,
    MatListModule,
    MatDividerModule,
    TranslatePipe,
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

  cancellationLoading = false;
  cancellationProgress = 0;
  cancellationResult: any = null;

  reasonsLoading = false;
  reasonsProgress = 0;
  reasonsResult: string[] | null = null;

  delayLoading = false;
  delayProgress = 0;
  delayResult: any = null;

  constructor(private http: HttpClient, private cdr: ChangeDetectorRef) {
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

  startCancellationOdds(): void {
    const stationA = this.myControl.value;
    const stationB = this.myControl2.value;
    if (!stationA || !stationB) return;

    this.cancellationLoading = true;
    this.cancellationProgress = 0;
    this.cancellationResult = null;
    
    this.http.post<{task_id: string}>('http://127.0.0.1:8000/api/analytics/cancellation-odds', {
      station_a: stationA,
      station_b: stationB
    }).subscribe({
      next: (res) => this.pollTask(res.task_id, 'cancellation'),
      error: () => { this.cancellationLoading = false; this.cdr.markForCheck(); }
    });
  }

  startAverageStateDelay(): void {
    const bundesland = this.myControl3.value;
    if (!bundesland) return;

    this.delayLoading = true;
    this.delayProgress = 0;
    this.delayResult = null;
    
    this.http.post<{task_id: string}>('http://127.0.0.1:8000/api/analytics/average-delay', {
      bundesland: bundesland
    }).subscribe({
      next: (res) => this.pollTask(res.task_id, 'delay'),
      error: () => { this.delayLoading = false; this.cdr.markForCheck(); }
    });
  }

  startDelayStatistics(): void {
    this.reasonsLoading = true;
    this.reasonsProgress = 0;
    this.reasonsResult = null;
    
    this.http.post<{task_id: string}>('http://127.0.0.1:8000/api/analytics/delay-reasons', {}).subscribe({
      next: (res) => this.pollTask(res.task_id, 'reasons'),
      error: () => { this.reasonsLoading = false; this.cdr.markForCheck(); }
    });
  }

  private pollTask(taskId: string, type: 'cancellation' | 'delay' | 'reasons'): void {
    this.http.get<any>(`http://127.0.0.1:8000/api/analytics/status/${taskId}`).subscribe({
      next: (res) => {
        if (type === 'cancellation') this.cancellationProgress = res.progress_percentage;
        else if (type === 'delay') this.delayProgress = res.progress_percentage;
        else if (type === 'reasons') this.reasonsProgress = res.progress_percentage;
        
        this.cdr.markForCheck();

        if (res.status === 'completed') {
          if (type === 'cancellation') { this.cancellationResult = res.result; this.cancellationLoading = false; }
          else if (type === 'delay') { this.delayResult = res.result; this.delayLoading = false; }
          else if (type === 'reasons') { 
            // Transforms "Signal Failure" into standard translation keys like "SIGNAL_FAILURE"
            this.reasonsResult = res.result.map((reason: string) => reason.trim().toUpperCase().replace(/\s+/g, '_')); 
            this.reasonsLoading = false; 
          }
          this.cdr.markForCheck();
        } else if (res.status === 'failed') {
          if (type === 'cancellation') this.cancellationLoading = false;
          else if (type === 'delay') this.delayLoading = false;
          else if (type === 'reasons') this.reasonsLoading = false;
          this.cdr.markForCheck();
        } else {
          setTimeout(() => this.pollTask(taskId, type), 500);
        }
      },
      error: () => {
        if (type === 'cancellation') this.cancellationLoading = false;
        else if (type === 'delay') this.delayLoading = false;
        else if (type === 'reasons') this.reasonsLoading = false;
        this.cdr.markForCheck();
      }
    });
  }
}
