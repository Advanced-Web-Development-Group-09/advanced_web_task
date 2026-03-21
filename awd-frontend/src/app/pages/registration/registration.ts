import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';
import { RouterLink } from '@angular/router';
import { TranslatePipe, TranslateService } from '@ngx-translate/core';
import { MatIcon } from '@angular/material/icon';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-registration',
  imports: [
    MatButtonModule,
    MatInputModule,
    MatFormFieldModule,
    FormsModule,
    ReactiveFormsModule,
    RouterLink,
    TranslatePipe,
    MatIcon,
  ],
  templateUrl: './registration.html',
})
export class Registration {
  // Dark mode & language state

  isDarkMode = document.documentElement.classList.contains('dark-theme') ? 'dark' : 'light';

  constructor(private translate: TranslateService) {}

  toggleLanguage() {
    const currentLang = this.translate.getCurrentLang() || this.translate.getFallbackLang();
    const newLang = currentLang === 'en' ? 'de' : 'en';
    this.translate.use(newLang);
  }

  toggleDarkMode() {
    this.isDarkMode = this.isDarkMode === 'light' ? 'dark' : 'light';

    document.documentElement.classList.toggle('dark-theme', this.isDarkMode === 'dark');
  }

  // Form group for registration

  registerForm = new FormGroup({
    username: new FormControl('', [Validators.required]),
    email: new FormControl('', [Validators.required, Validators.email]),
    password: new FormControl('', [
      Validators.required,
      Validators.minLength(8),
      Validators.pattern(/^(?=.*[A-Z])(?=.*\d).+$/), // At least one uppercase letter and one number
    ]),
  });

  onSignUp() {
    // Implement sign-up logic here

    if (this.registerForm.valid) {
      // Perform sign-up action
    }
  }
}
