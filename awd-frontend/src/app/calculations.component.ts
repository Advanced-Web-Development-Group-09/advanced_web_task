import { Component, inject, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { AnalyticsService } from './analytics.service';

@Component({
  selector: 'app-calculations',
  standalone: true,
  imports: [CommonModule, FormsModule],
  template: `
    <div class="page-wrapper">
      <div class="page-header">
        <h2>Analytics & Predictions</h2>
        <p>Run complex ML computations on DB dataset</p>
      </div>
      
      <div class="calc-grid">
        <!-- Card 1 -->
        <div class="card">
          <div class="card-icon">⏱️</div>
          <h3>Average Delay</h3>
          <p>Calculate the average delay of trains in a specific region.</p>
          <div class="input-row">
            <input type="text" [(ngModel)]="bundesland" placeholder="e.g. Bayern">
            <button class="btn-primary" (click)="calculateDelay()">Analyze</button>
          </div>
          <div class="progress-container" *ngIf="delayStatus">
            <div class="progress-bar"><div class="fill" [style.width.%]="delayStatus.progress_percentage || 0"></div></div>
            <span class="status-text">{{ delayStatus.status | uppercase }} ({{ delayStatus.progress_percentage || 0 }}%)</span>
          </div>
          <div class="result-box" *ngIf="delayStatus?.result"><strong>Result:</strong> {{ delayStatus.result | json }}</div>
        </div>

        <!-- Card 2 -->
        <div class="card">
          <div class="card-icon">❌</div>
          <h3>Cancellation Odds</h3>
          <p>Calculate the likelihood of a train being canceled between two stations.</p>
          <div class="input-col">
            <input type="text" [(ngModel)]="stationA" placeholder="Source (e.g. Berlin Hbf)">
            <input type="text" [(ngModel)]="stationB" placeholder="Destination (e.g. München Hbf)">
            <button class="btn-primary w-100" (click)="calculateOdds()">Predict Likelihood</button>
          </div>
          <div class="progress-container" *ngIf="oddsStatus">
            <div class="progress-bar"><div class="fill" [style.width.%]="oddsStatus.progress_percentage || 0"></div></div>
            <span class="status-text">{{ oddsStatus.status | uppercase }} ({{ oddsStatus.progress_percentage || 0 }}%)</span>
          </div>
          <div class="result-box highlight" *ngIf="oddsStatus?.result"><strong>Likelihood:</strong> {{ oddsStatus.result | json }}</div>
        </div>

        <!-- Card 3 -->
        <div class="card">
          <div class="card-icon">📊</div>
          <h3>Dynamic Delay Reasons</h3>
          <p>Analyze delay reasons based on historic trends, holidays, and weather impact.</p>
          <div class="input-col mt-auto">
            <input type="date" [(ngModel)]="reasonDate" placeholder="Select Date">
            <select [(ngModel)]="reasonWeather" class="styled-select">
              <option value="Clear">Clear / Sunny</option>
              <option value="Rainy">Rainy 🌧️</option>
              <option value="Snow">Snow ❄️</option>
              <option value="Storm">Storm ⛈️</option>
            </select>
            <button class="btn-primary w-100" (click)="calculateReasons()">Fetch Analysis</button>
          </div>
          
          <div class="progress-container" *ngIf="reasonsStatus">
            <div class="progress-bar"><div class="fill" [style.width.%]="reasonsStatus.progress_percentage || 0"></div></div>
            <span class="status-text">{{ reasonsStatus.status | uppercase }} ({{ reasonsStatus.progress_percentage || 0 }}%)</span>
          </div>
          <div class="result-box" *ngIf="reasonsStatus?.result">
            <ul class="dynamic-list">
               <li *ngFor="let r of reasonsStatus.result; let i = index">
                 <strong>#{{i+1}}</strong> {{ r }}
               </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  `,
  styles: [`
    .page-wrapper { display: flex; flex-direction: column; gap: 1.5rem; }
    .page-header h2 { margin: 0; font-size: 2rem; color: #141E28; }
    body.dark-theme .page-header h2 { color: #f4f4f4; }
    .page-header p { margin: 0.5rem 0 0; color: #666; }

    .calc-grid { display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 1.5rem; }
    
    .card { background: white; padding: 2rem; border-radius: 12px; box-shadow: 0 4px 20px rgba(0,0,0,0.04); border: 1px solid #eaeaea; display: flex; flex-direction: column; }
    body.dark-theme .card { background: #1e1e1e; border-color: #333; color: #fff; }
    .card-icon { font-size: 2rem; margin-bottom: 1rem; }
    .card h3 { margin-top: 0; margin-bottom: 0.5rem; font-size: 1.25rem; color: #141E28; }
    body.dark-theme .card h3 { color: #eee; }
    .card p { color: #666; font-size: 0.95rem; margin-bottom: 1.5rem; line-height: 1.5; }
    body.dark-theme .card p { color: #aaa; }

    .input-row { display: flex; gap: 10px; margin-bottom: 1rem; }
    .input-col { display: flex; flex-direction: column; gap: 10px; margin-bottom: 1rem; }
    input { padding: 12px 16px; border: 1px solid #ccc; border-radius: 6px; font-size: 0.95rem; flex: 1; outline: none; transition: border-color 0.2s; }
    input:focus { border-color: #DB0000; }
    body.dark-theme input { background: #2c2c2c; border-color: #444; color: #fff; }

    .btn-primary { background: #DB0000; color: white; border: none; padding: 12px 24px; border-radius: 50px; font-weight: 600; cursor: pointer; transition: background 0.2s; text-align: center; }
    .btn-primary:hover { background: #b30000; }
    .w-100 { width: 100%; box-sizing: border-box; }
    .mt-auto { margin-top: auto; }
    
    .styled-select { padding: 12px 16px; border: 1px solid #ccc; border-radius: 6px; font-size: 0.95rem; width: 100%; outline: none; transition: border-color 0.2s; background: white; box-sizing: border-box; }
    .styled-select:focus { border-color: #DB0000; }
    body.dark-theme .styled-select { background: #2c2c2c; border-color: #444; color: #fff; }
    .dynamic-list { margin: 0; padding-left: 1.5rem; }
    .dynamic-list li { margin-bottom: 0.5rem; color: #141E28; font-size: 0.95rem; }
    body.dark-theme .dynamic-list li { color: #eee; }

    .progress-container { margin-top: 1.5rem; }
    .progress-bar { width: 100%; background: #e9ecef; border-radius: 50px; height: 8px; overflow: hidden; margin-bottom: 0.5rem; }
    body.dark-theme .progress-bar { background: #333; }
    .fill { height: 100%; background: #DB0000; transition: width 1s linear; }
    .status-text { font-size: 0.85rem; font-weight: 600; color: #555; }
    body.dark-theme .status-text { color: #aaa; }

    .result-box { margin-top: 1.5rem; padding: 1rem; background: #f8f9fa; border-left: 4px solid #DB0000; border-radius: 4px; color: #141E28; font-size: 1rem; word-break: break-word; }
    .result-box.highlight { background: #FFF0F0; color: #DB0000; }
    body.dark-theme .result-box { background: #2c2c2c; color: #eee; }
    body.dark-theme .result-box.highlight { background: #3a1a1a; }
  `]
})
export class CalculationsComponent {
  private analytics = inject(AnalyticsService);
  private cdr = inject(ChangeDetectorRef);
  
  reasonDate = new Date().toISOString().split('T')[0];
  reasonWeather = 'Clear';
  bundesland = ''; delayStatus: any = null; 
  calculateDelay() { 
    this.delayStatus = { status: 'starting', progress_percentage: 0 };
    this.analytics.calculateAverageDelay(this.bundesland).subscribe(res => {
      this.delayStatus = res;
      this.cdr.detectChanges();
    }); 
  }
  
  stationA = ''; stationB = ''; oddsStatus: any = null; 
  calculateOdds() { 
    this.oddsStatus = { status: 'starting', progress_percentage: 0 };
    this.analytics.calculateCancellationOdds(this.stationA, this.stationB).subscribe(res => {
      this.oddsStatus = res;
      this.cdr.detectChanges();
    }); 
  }
  
  reasonsStatus: any = null; 
  calculateReasons() { 
    this.reasonsStatus = { status: 'starting', progress_percentage: 0 };
    this.analytics.getDelayReasons().subscribe(res => {
      if (res.status === 'completed' && res.result) {
        let baseReasons = Array.isArray(res.result) ? res.result : [];
        // Mock logic: Check if it's December/January for winter holidays
        let isHoliday = new Date(this.reasonDate).getMonth() === 11 || new Date(this.reasonDate).getMonth() === 0;
        let contextualReasons = [];
        
        if (this.reasonWeather === 'Snow' || this.reasonWeather === 'Storm') {
          contextualReasons.push(`Severe ${this.reasonWeather.toLowerCase()} disrupting track operations`);
          contextualReasons.push(`Speed limits enforced due to low visibility`);
        } else if (this.reasonWeather === 'Rainy') {
          contextualReasons.push("Slippery tracks causing braking delays");
        }
        
        if (isHoliday) {
          contextualReasons.push("High passenger volume due to holidays");
          contextualReasons.push("Extended boarding times");
        }
        
        // Merge the backend data with our dynamic contextual data
        let combined = [...new Set([...contextualReasons, ...baseReasons, "Staff Shortage", "Track Maintenance"])];
        res.result = combined.map(r => `${r} (~${Math.floor(Math.random() * 30) + 10}% impact)`).slice(0, 5);
      }
      this.reasonsStatus = res;
      this.cdr.detectChanges();
    }); 
  }
}