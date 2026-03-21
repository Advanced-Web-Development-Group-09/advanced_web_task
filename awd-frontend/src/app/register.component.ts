import { Component, inject } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { Router, RouterLink } from '@angular/router';
import { AuthService } from './auth.service';

@Component({
  selector: 'app-register',
  standalone: true,
  imports: [CommonModule, ReactiveFormsModule, RouterLink],
  template: `
    <div class="auth-container">
      <section class="brand-side">
        <div class="brand-content">
          <h1>Deutsche Bahn Traveller</h1>
          <p>Insights into your Delay</p>
        </div>
      </section>

      <section class="form-side">
        <img src="assets/uni-logo.png" class="uni-logo" alt="Uni Logo">
        
        <div class="form-wrapper">
          <h2>Sign Up</h2>
          <p class="subtitle">All this fields are required.</p>

          <form [formGroup]="registerForm" (ngSubmit)="onSubmit()">
            <div class="input-group">
              <label for="username">Username</label>
              <input id="username" type="text" formControlName="username" placeholder="NormalErik">
            </div>

            <div class="input-group">
              <label for="email">Email</label>
              <input id="email" type="email" formControlName="email" placeholder="kastene@uni-hildesheim.de">
            </div>

            <div class="input-group">
              <label for="password">Password</label>
              <input id="password" type="password" formControlName="password" placeholder="**********">
            </div>

            <button type="submit" class="btn-primary" [disabled]="registerForm.invalid">Sign up</button>

            <div *ngIf="errorMessage" class="error">{{ errorMessage }}</div>
            <div *ngIf="successMessage" class="success">{{ successMessage }}</div>
          </form>

          <p class="footer-text">
            Already have an Account? <a routerLink="/login"><strong>Log in now!</strong></a>
          </p>
        </div>
      </section>
    </div>
  `,
  styles: [`
    .auth-container { display: flex; min-height: 100vh; width: 100%; background: #fff; }
    .brand-side { flex: 0 0 60%; background: url('/assets/train-bg.jpg') no-repeat center center; background-color: #f0f0f0; background-size: cover; position: relative; padding: 3rem; display: flex; align-items: flex-start; }
    .brand-content { color: #333; background: rgba(255,255,255,0.8); padding: 1rem 2rem; border-radius: 8px; }
    .brand-content h1 { font-size: 3rem; margin: 0 0 0.5rem 0; color: #DB0000; }
    .brand-content p { font-size: 1.5rem; font-weight: 300; margin: 0; }
    
    .form-side { flex: 1; display: flex; align-items: center; justify-content: center; background: #fff; position: relative; }
    .uni-logo { position: absolute; top: 2rem; right: 2rem; width: 80px; }
    
    .form-wrapper { width: 100%; max-width: 400px; padding: 2rem; }
    .form-wrapper h2 { font-size: 2rem; margin-bottom: 0.5rem; color: #333; }
    .form-wrapper .subtitle { color: #666; margin-bottom: 2.5rem; font-size: 0.9rem; }
    
    .input-group { position: relative; margin-bottom: 2rem; }
    .input-group label { position: absolute; top: -10px; left: 12px; background: white; padding: 0 5px; font-size: 12px; color: #888; z-index: 1; }
    .input-group input { width: 100%; padding: 12px; border: 1px solid #ccc; border-radius: 4px; font-size: 16px; box-sizing: border-box; background: transparent; color: #333; }
    .input-group input:focus { outline: none; border-color: #235D82; }
    
    .btn-primary { background: #235D82; color: white; border: none; padding: 12px 40px; border-radius: 50px; font-weight: 600; cursor: pointer; transition: background 0.2s; width: 100%; font-size: 1rem; }
    .btn-primary:hover { background: #1a4661; }
    .btn-primary:disabled { background: #ccc; cursor: not-allowed; }
    
    .footer-text { margin-top: 2rem; text-align: center; font-size: 0.95rem; color: #333; }
    .footer-text a { color: #235D82; text-decoration: none; }
    .footer-text a:hover { text-decoration: underline; }
    
    .error { color: #DB0000; margin-top: 1rem; font-size: 0.9rem; text-align: center; }
    .success { color: #28a745; margin-top: 1rem; font-size: 0.9rem; text-align: center; font-weight: 500; }
    
    /* Dark Theme Adjustments */
    body.dark-theme .form-side { background: #1e1e1e; }
    body.dark-theme .form-wrapper h2 { color: #fff; }
    body.dark-theme .subtitle { color: #aaa; }
    body.dark-theme .input-group label { background: #1e1e1e; color: #ccc; }
    body.dark-theme .input-group input { border-color: #555; color: #fff; }
    body.dark-theme .footer-text { color: #ccc; }
    
    @media (max-width: 768px) { .auth-container { flex-direction: column; } .brand-side { flex: none; height: 250px; } }
  `]
})
export class RegisterComponent {
  private fb = inject(FormBuilder);
  private authService = inject(AuthService);
  private router = inject(Router);

  registerForm: FormGroup = this.fb.group({
    username: ['', Validators.required],
    email: ['', [Validators.required, Validators.email]],
    password: ['', [Validators.required, Validators.minLength(8)]]
  });
  errorMessage = '';
  successMessage = '';

  onSubmit() {
    if (this.registerForm.valid) {
      this.authService.register(this.registerForm.value).subscribe({
        next: () => {
          this.successMessage = 'Registration successful! Redirecting to login...';
          this.errorMessage = '';
          setTimeout(() => this.router.navigate(['/login']), 2000);
        },
        error: (err) => {
          this.errorMessage = err.error?.detail || 'Registration failed. Email may already exist.';
          this.successMessage = '';
        }
      });
    }
  }
}