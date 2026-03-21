import { Component, OnInit, inject, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { AuthService } from './auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-profile',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule],
  template: `
    <div class="page-wrapper">
      <div class="profile-card" *ngIf="profile">
        
        <div class="profile-header">
          <div class="avatar">
            <span>{{ profile.username ? profile.username.charAt(0).toUpperCase() : 'U' }}</span>
          </div>
          <div class="user-info">
            <h2>{{ profile.username }}</h2>
            <p>{{ profile.email }}</p>
          </div>
          <button class="btn-primary logout-btn" (click)="logout()">Logout</button>
        </div>

        <div class="profile-details">
          <div class="detail-group">
            <h3>Status</h3>
            <p>Active user of the Deutsche Bahn Traveller analytics platform. You have full access to upload datasets, analyze delay metrics, and view calculation odds. Keep analyzing to earn more points!</p>
          </div>

          <div class="detail-group">
            <h3>Reward Points</h3>
            <p class="points-text">{{ profile.points || 0 }} Points</p>
          </div>

          <hr>

          <div class="detail-group split-layout">
            <div class="history-section">
              <h3>Recent Searches</h3>
              <ul><li *ngFor="let s of searches">{{ s.query }} ({{ s.timestamp | date:'short' }})</li></ul>
              <p *ngIf="!searches.length">No recent searches.</p>
            </div>
            <div class="history-section">
              <h3>Export History</h3>
              <ul><li *ngFor="let e of exports">{{ e.filename }} ({{ e.timestamp | date:'short' }})</li></ul>
              <p *ngIf="!exports.length">No exports yet.</p>
            </div>
            <div class="history-section">
              <h3>Top 5 Leaderboard 🏆</h3>
              <ul><li *ngFor="let user of leaderboard; let i = index">#{{ i+1 }} {{ user.username }} - {{ user.points }} pts</li></ul>
            </div>
          </div>

          <hr>

          <div class="settings-group">
            <h3>Change Password</h3>
            <form [formGroup]="passwordForm" (ngSubmit)="changePassword()" class="pwd-form">
              <input type="password" formControlName="current_password" placeholder="Current Password">
              <input type="password" formControlName="new_password" placeholder="New Password (min 8 chars)">
              <button type="submit" class="btn-primary" [disabled]="passwordForm.invalid">Update Password</button>
            </form>
            <p class="msg" *ngIf="passwordMsg">{{ passwordMsg }}</p>

            <div class="danger-zone">
              <h3>Danger Zone</h3>
              <button class="btn-danger" (click)="deleteAccount()">Permanently Delete Account</button>
            </div>
          </div>
        </div>

      </div>
      <div *ngIf="error" class="error">{{ error }}</div>
    </div>
  `,
  styles: [`
    .page-wrapper {
      padding: 0;
      min-height: 100%;
    }
    
    .profile-card {
      background-color: #fff;
      border: 1px solid #e0e0e0;
      border-radius: 8px;
      padding: 3rem;
      max-width: 1000px;
      box-shadow: 0 2px 4px rgba(0,0,0,0.02);
    }
    :host-context(.dark-theme) .profile-card { background: #1e1e1e; border-color: #333; }

    .profile-header {
      display: flex;
      align-items: center;
      gap: 1.5rem;
      margin-bottom: 3rem;
      position: relative;
    }

    .avatar { width: 100px; height: 100px; background-color: #e2e2e2; border-radius: 50%; display: flex; align-items: center; justify-content: center; }
    :host-context(.dark-theme) .avatar { background-color: #333; }
    .avatar span { font-size: 2.5rem; color: #333; font-weight: 600; }
    :host-context(.dark-theme) .avatar span { color: #eee; }

    .user-info h2 { font-size: 1.8rem; font-weight: 600; margin: 0 0 0.25rem 0; color: #111; }
    :host-context(.dark-theme) .user-info h2 { color: #eee; }
    .user-info p { margin: 0; color: #555; font-size: 1rem; }
    :host-context(.dark-theme) .user-info p { color: #aaa; }

    .logout-btn { position: absolute; right: 0; top: 25px; background: #DB0000; }
    .logout-btn:hover { background: #b30000; }

    .profile-details .detail-group { margin-bottom: 2rem; }
    .detail-group h3 { font-size: 1.1rem; font-weight: 600; color: #111; margin-bottom: 0.5rem; }
    :host-context(.dark-theme) .detail-group h3 { color: #eee; }
    .detail-group p { font-size: 0.95rem; line-height: 1.6; color: #444; margin: 0; }
    :host-context(.dark-theme) .detail-group p { color: #aaa; }
    
    .points-text { font-size: 1.5rem !important; font-weight: bold; color: #235D82 !important; }
    :host-context(.dark-theme) .points-text { color: #6cb2eb !important; }

    .btn-primary { background: #235D82; color: white; border: none; padding: 10px 24px; border-radius: 50px; font-weight: 500; cursor: pointer; transition: opacity 0.2s; }
    .btn-primary:hover { opacity: 0.9; }

    .split-layout { display: flex; gap: 2rem; flex-wrap: wrap; margin-top: 1rem; }
    .history-section { flex: 1; min-width: 200px; background: #f9f9f9; padding: 1rem; border-radius: 8px; }
    :host-context(.dark-theme) .history-section { background: #2c2c2c; }
    .history-section ul { padding-left: 1.2rem; margin: 0; }
    
    hr { border: none; border-top: 1px solid #eee; margin: 2rem 0; }
    :host-context(.dark-theme) hr { border-color: #444; }

    .settings-group { margin-top: 1rem; }
    .pwd-form { display: flex; gap: 10px; margin-top: 10px; flex-wrap: wrap; }
    .pwd-form input { padding: 8px; border: 1px solid #ccc; border-radius: 4px; }
    :host-context(.dark-theme) .pwd-form input { background: #2c2c2c; border-color: #555; color: #fff; }
    .msg { font-size: 0.9rem; color: #28a745; margin-top: 5px; }
    
    .danger-zone { margin-top: 2rem; padding-top: 1rem; border-top: 1px dashed #ffcccc; }
    .btn-danger { background: #dc3545; color: white; border: none; padding: 10px 20px; border-radius: 4px; cursor: pointer; font-weight: bold; }

    .error { color: red; text-align: center; margin-top: 2rem; }
  `]
})
export class ProfileComponent implements OnInit {
  private authService = inject(AuthService);
  private router = inject(Router);
  private fb = inject(FormBuilder);
  private cdr = inject(ChangeDetectorRef);
  
  profile: any = null;
  error = '';
  passwordMsg = '';
  
  exports: any[] = [];
  searches: any[] = [];
  leaderboard: any[] = [];

  passwordForm: FormGroup = this.fb.group({
    current_password: ['', Validators.required],
    new_password: ['', [Validators.required, Validators.minLength(8)]]
  });

  ngOnInit() {
    this.authService.getProfile().subscribe({
      next: (data) => {
        this.profile = data;
        this.authService.getExports().subscribe(res => { this.exports = res || []; this.cdr.detectChanges(); });
        this.authService.getSearches().subscribe(res => { this.searches = res || []; this.cdr.detectChanges(); });
        this.authService.getLeaderboard().subscribe(res => { this.leaderboard = res || []; this.cdr.detectChanges(); });
        this.cdr.detectChanges();
      },
      error: () => {
        this.error = 'Failed to load profile. Please log in first.';
        this.router.navigate(['/login']);
        this.cdr.detectChanges();
      }
    });
  }

  changePassword() {
    if (this.passwordForm.valid) {
      this.authService.changePassword(this.passwordForm.value).subscribe({
        next: () => { this.passwordMsg = 'Password updated successfully!'; this.passwordForm.reset(); this.cdr.detectChanges(); },
        error: (err) => { this.passwordMsg = 'Error updating password.'; this.cdr.detectChanges(); }
      });
    }
  }

  deleteAccount() {
    if (window.confirm('WARNING: Are you sure you want to permanently delete your account? This cannot be undone!')) {
      this.authService.deleteAccount().subscribe(() => this.logout());
    }
  }

  logout() {
    localStorage.removeItem('access_token');
    this.router.navigate(['/login']);
  }
}