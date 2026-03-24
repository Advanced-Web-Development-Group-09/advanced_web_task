import { Component, ChangeDetectorRef, OnInit } from '@angular/core';
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
import { TranslateModule, TranslateService } from '@ngx-translate/core';
import { HttpClient } from '@angular/common/http';
import { MatProgressBarModule } from '@angular/material/progress-bar';
import { MatListModule } from '@angular/material/list';
import { MatDividerModule } from '@angular/material/divider';
import deTranslations from './de.json';
import enTranslations from './en.json';

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
    TranslateModule,
  ],
  templateUrl: './analytics.html',
  styleUrl: './analytics.css',
})
export class Analytics implements OnInit {
  myControl = new FormControl('');
  myControl2 = new FormControl('');
  myControl3 = new FormControl('');
  options: string[] = [
    'Berlin Hbf', 'Hamburg Hbf', 'München Hbf', 'Köln Hbf', 'Frankfurt (Main) Hbf', 
    'Stuttgart Hbf', 'Düsseldorf Hbf', 'Leipzig Hbf', 'Dortmund Hbf', 'Essen Hbf', 
    'Bremen Hbf', 'Hannover Hbf', 'Nürnberg Hbf', 'Duisburg Hbf', 'Bochum Hbf', 
    'Wuppertal Hbf', 'Bielefeld Hbf', 'Bonn Hbf', 'Münster (Westf) Hbf', 'Karlsruhe Hbf', 
    'Mannheim Hbf', 'Augsburg Hbf', 'Wiesbaden Hbf', 'Gelsenkirchen Hbf', 'Braunschweig Hbf', 
    'Chemnitz Hbf', 'Kiel Hbf', 'Halle (Saale) Hbf', 'Magdeburg Hbf', 'Freiburg Hbf', 
    'Lübeck Hbf', 'Erfurt Hbf', 'Mainz Hbf', 'Rostock Hbf', 'Kassel Hbf', 'Hildesheim Hbf',
    'Göttingen Hbf', 'Trier Hbf', 'Kaiserslautern Hbf', 'Koblenz Hbf', 'Aachen Hbf', 
    'Aschaffenburg Hbf', 'Bamberg', 'Bayreuth Hbf', 'Bocholt', 'Bremerhaven Hbf', 
    'Cottbus Hbf', 'Darmstadt Hbf', 'Dessau Hbf', 'Düren', 'Erlangen', 'Flensburg', 
    'Fulda', 'Fürth (Bay) Hbf', 'Gera Hbf', 'Gießen', 'Gütersloh Hbf', 'Hagen Hbf', 
    'Hamm (Westf) Hbf', 'Hanau Hbf', 'Heidelberg Hbf', 'Heilbronn Hbf', 'Herne', 
    'Homburg (Saar) Hbf', 'Ingolstadt Hbf', 'Jena Hbf', 'Kempten (Oberbay) Hbf', 
    'Landshut (Bay) Hbf', 'Leverkusen Mitte', 'Ludwigsburg', 'Ludwigshafen (Rhein) Hbf', 
    'Marburg (Lahn)', 'Minden (Westf)', 'Moers', 'Mönchengladbach Hbf', 'Mülheim (Ruhr) Hbf', 
    'Neumünster', 'Neuss Hbf', 'Oberhausen Hbf', 'Offenbach (Main) Hbf', 'Oldenburg (Holst)', 
    'Osnabrück Hbf', 'Paderborn Hbf', 'Pforzheim Hbf', 'Potsdam Hbf', 'Recklinghausen Hbf', 
    'Regensburg Hbf', 'Remscheid Hbf', 'Reutlingen Hbf', 'Rheine', 'Saarbrücken Hbf', 
    'Salzgitter-Lebenstedt', 'Schwerin Hbf', 'Siegen Hbf', 'Solingen Hbf', 'Stralsund Hbf', 
    'Suhl', 'Tübingen Hbf', 'Ulm Hbf', 'Villingen (Schwarzw)', 'Weimar', 'Wetzlar', 
    'Wolfsburg Hbf', 'Worms Hbf', 'Würzburg Hbf', 'Zwickau (Sachs) Hbf'
  ];
  optionsStates: string[] = [
    'Baden-Württemberg', 'Bayern', 'Berlin', 'Brandenburg', 'Bremen', 
    'Hamburg', 'Hessen', 'Mecklenburg-Vorpommern', 'Niedersachsen', 
    'Nordrhein-Westfalen', 'Rheinland-Pfalz', 'Saarland', 'Sachsen', 
    'Sachsen-Anhalt', 'Schleswig-Holstein', 'Thüringen'
  ];
  filteredOptions: Observable<string[]>;
  filteredOptions2: Observable<string[]>;
  filteredOptions3: Observable<string[]>;

  cancellationLoading = false;
  cancellationProgress = 0;
  cancellationResult: any = null;

  reasonsLoading = false;
  reasonsProgress = 0;
  reasonsResult: {reason: string, percentage: number, count: number}[] | null = null;
  weatherData: any = null;

  delayLoading = false;
  delayProgress = 0;
  delayResult: any = null;

  constructor(private http: HttpClient, private cdr: ChangeDetectorRef, private translate: TranslateService) {
    // Manually inject your local JSON files into the translation service
    this.translate.setTranslation('de', (deTranslations as any).default || deTranslations, true);
    this.translate.setTranslation('en', (enTranslations as any).default || enTranslations, true);

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

  ngOnInit(): void {
    this.fetchWeather();
    this.fetchDatabaseStations();
  }

  fetchDatabaseStations(): void {
    this.http.get<any>('http://127.0.0.1:8000/api/stations').subscribe({
      next: (res) => {
        let loadedStations: string[] = [];
        if (Array.isArray(res)) {
          loadedStations = res.map(s => typeof s === 'string' ? s : s.name || s.station);
        } else if (res && Array.isArray(res.items)) {
          loadedStations = res.items.map((s: any) => typeof s === 'string' ? s : s.name || s.station);
        } else if (res && Array.isArray(res.stations)) {
          loadedStations = res.stations.map((s: any) => typeof s === 'string' ? s : s.name || s.station);
        }
        
        if (loadedStations.length > 0) {
          this.options = Array.from(new Set([...this.options, ...loadedStations])); // Merge & unique
          // Trigger autocomplete refresh
          this.myControl.setValue(this.myControl.value);
          this.myControl2.setValue(this.myControl2.value);
          this.cdr.markForCheck();
        }
      },
      error: (err) => console.warn('Could not fetch stations from database, using fallback list', err)
    });
  }

  fetchWeather(): void {
    const cacheKey = 'weather_forecast_cache';
    const cached = localStorage.getItem(cacheKey);
    let offlineData = null;
    
    if (cached) {
      try {
        const parsed = JSON.parse(cached);
        offlineData = parsed.data;
        // Check if cache is younger than 10 days (10 * 24 * 60 * 60 * 1000 ms)
        if (Date.now() - parsed.timestamp < 864000000) {
          this.weatherData = parsed.data;
          return; // Using valid offline cache
        }
      } catch (e) {}
    }

    this.http.get('https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current=temperature_2m,wind_speed_10m&hourly=temperature_2m,relative_humidity_2m,wind_speed_10m').subscribe({
      next: (data) => {
        this.weatherData = data;
        localStorage.setItem(cacheKey, JSON.stringify({ timestamp: Date.now(), data }));
        this.cdr.markForCheck();
      },
      error: () => {
        if (offlineData) {
          this.weatherData = offlineData;
        } else {
          // Fallback mechanism: Create realistic mock data if no internet and no cache
          this.weatherData = {
            current: {
              temperature_2m: (Math.random() * 15 + 5).toFixed(1), // Random temp between 5.0 and 20.0
              wind_speed_10m: (Math.random() * 20).toFixed(1)      // Random wind between 0.0 and 20.0
            }
          };
        }
        this.cdr.markForCheck();
      }
    });
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
    // Extract just the city name (e.g., "München" instead of "München Hbf")
    // to significantly improve database matching accuracy
    const rawStationA = this.myControl.value || '';
    const rawStationB = this.myControl2.value || '';
    if (!rawStationA || !rawStationB) return;
    
    const stationA = rawStationA.split(' ')[0];
    const stationB = rawStationB.split(' ')[0];

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
          if (type === 'cancellation') { 
            let odds = res.result?.cancellation_odds || 0;
            let total = res.result?.total_trains || 0;
            let expectedDelay = res.result?.expected_delay || 0;
            
            this.cancellationResult = { ...res.result, total_trains: total, cancellation_odds: odds, expected_delay: expectedDelay }; 
            this.cancellationLoading = false; 
          }
          else if (type === 'delay') { 
            let avgDelay = res.result?.average_delay_minutes || 0;
            
            this.delayResult = { ...res.result, average_delay_minutes: avgDelay }; 
            this.delayLoading = false; 
          }
          else if (type === 'reasons') { 
            let reasons = res.result || [];
            let mappedReasons = reasons.map((item: any) => ({
              reason: item.reason.trim().toUpperCase().replace(/\s+/g, '_'),
              percentage: item.percentage,
              count: item.count
            }));

            // Joke Injection: ~15% chance to randomly add a very rare joke possibility!
            if (Math.random() < 0.15) {
               const jokes = ['ALIEN_INVASION', 'DRAGON_ON_TRACKS', 'MATRIX_GLITCH'];
               mappedReasons.push({
                 reason: jokes[Math.floor(Math.random() * jokes.length)],
                 percentage: 0.01,
                 count: 1
               });
            }
            this.reasonsResult = mappedReasons; 
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
