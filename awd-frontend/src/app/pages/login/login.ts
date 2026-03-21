import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { ReactiveFormsModule, FormGroup, FormControl, Validators } from '@angular/forms';
import { Router, RouterLink } from '@angular/router';
import { TranslatePipe, TranslateService } from '@ngx-translate/core';
import { MatIcon } from '@angular/material/icon';
import { CommonModule } from '@angular/common';
import { LoginService } from '../../services/login/login.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [
    MatButtonModule,
    MatInputModule,
    MatFormFieldModule,
    RouterLink,
    TranslatePipe,
    MatIcon,
    CommonModule,
    ReactiveFormsModule,
  ],
  templateUrl: './login.html',
})
export class Login {
  isDarkMode = document.documentElement.classList.contains('dark-theme') ? 'dark' : 'light';

  constructor(
    private translate: TranslateService,
    private loginService: LoginService,
    private router: Router,
  ) {
    this.loginForm.valueChanges.subscribe(() => {
      if (this.loginForm.hasError('invalidCredentials')) {
        this.loginForm.setErrors(null);
      }
    });
  }

  loginForm = new FormGroup({
    username: new FormControl<string>('', { nonNullable: true, validators: [Validators.required] }),
    password: new FormControl<string>('', { nonNullable: true, validators: [Validators.required] }),
  });

  get f() {
    return this.loginForm.controls;
  }

  toggleLanguage() {
    const currentLang = this.translate.getCurrentLang() || this.translate.getFallbackLang();
    this.translate.use(currentLang === 'en' ? 'de' : 'en');
  }

  toggleDarkMode() {
    this.isDarkMode = this.isDarkMode === 'light' ? 'dark' : 'light';
    document.documentElement.classList.toggle('dark-theme', this.isDarkMode === 'dark');
  }

  onLogin() {
    if (this.loginForm.invalid) {
      this.loginForm.markAllAsTouched();
      return;
    }

    const data = {
      username: this.f.username.value,
      password: this.f.password.value,
    };

    this.loginService.login(data).subscribe({
      next: (res) => {
        console.log('Login success:', res);
        localStorage.setItem('token', res.access_token);
        this.router.navigate(['/dashboard']);
      },
      error: (err) => {
        if (err?.error?.detail === 'Incorrect login credentials') {
          this.loginForm.setErrors({ invalidCredentials: true });
        } else {
          console.error('Login failed:', err);
        }
      },
    });
  }
}
