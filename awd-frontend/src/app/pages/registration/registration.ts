import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { ReactiveFormsModule, FormGroup, FormControl, Validators } from '@angular/forms';
import { RouterLink } from '@angular/router';
import { TranslatePipe, TranslateService } from '@ngx-translate/core';
import { MatIcon } from '@angular/material/icon';
import { RegisterPayload, RegisterService } from '../../services/register/register.service';
import { LoginService } from '../../services/login/login.service';

@Component({
  selector: 'app-registration',
  standalone: true,
  imports: [
    MatButtonModule,
    MatInputModule,
    MatFormFieldModule,
    ReactiveFormsModule,
    RouterLink,
    TranslatePipe,
    MatIcon,
  ],
  templateUrl: './registration.html',
})
export class Registration {
  isDarkMode = document.documentElement.classList.contains('dark-theme') ? 'dark' : 'light';

  constructor(
    private translate: TranslateService,
    private registerService: RegisterService,
    private loginService: LoginService,
    private router: Router,
  ) {
    this.registerForm.controls.email.valueChanges.subscribe(() => {
      if (this.registerForm.controls.email.hasError('alreadyTaken')) {
        this.registerForm.controls.email.updateValueAndValidity({ onlySelf: true });
      }
    });
    this.registerForm.controls.username.valueChanges.subscribe(() => {
      if (this.registerForm.controls.username.hasError('alreadyTaken')) {
        this.registerForm.controls.username.updateValueAndValidity({ onlySelf: true });
      }
    });
  }

  registerForm = new FormGroup({
    username: new FormControl<string>('', { nonNullable: true, validators: [Validators.required] }),
    email: new FormControl<string>('', {
      nonNullable: true,
      validators: [Validators.required, Validators.email],
    }),
    password: new FormControl<string>('', {
      nonNullable: true,
      validators: [
        Validators.required,
        Validators.minLength(8),
        Validators.pattern(/^(?=.*[A-Z])(?=.*\d).+$/),
      ],
    }),
  });

  get f() {
    return this.registerForm.controls;
  }

  toggleLanguage() {
    const currentLang = this.translate.getCurrentLang() || this.translate.getFallbackLang();
    this.translate.use(currentLang === 'en' ? 'de' : 'en');
  }

  toggleDarkMode() {
    this.isDarkMode = this.isDarkMode === 'light' ? 'dark' : 'light';
    document.documentElement.classList.toggle('dark-theme', this.isDarkMode === 'dark');
  }

  onSignUp() {
    if (this.registerForm.invalid) {
      this.registerForm.markAllAsTouched();
      return;
    }

    const formData: RegisterPayload = {
      username: this.f.username.value,
      email: this.f.email.value,
      password: this.f.password.value,
    };

    this.registerService.register(formData).subscribe({
      next: (response) => {
        console.log('Registration successful:', response);
        this.loginService.login(formData).subscribe({
          next: (res) => {
            console.log('Login success:', res);
            localStorage.setItem('token', res.access_token);
            this.router.navigate(['/dashboard']);
          },
          error: (err) => {
            console.error('Login failed:', err);
          },
        });
      },
      error: (error) => {
        if (error?.error?.detail === 'Email already registered') {
          this.f.email.setErrors({ ...this.f.email.errors, alreadyTaken: true });
        } else if (error?.error?.detail === 'Username already registered') {
          this.f.username.setErrors({ ...this.f.username.errors, alreadyTaken: true });
        } else {
          console.error('Registration failed:', error);
        }
      },
    });
  }
}
