import { Component } from '@angular/core';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { RouterLink, RouterLinkActive } from '@angular/router';
import { TranslateService, TranslatePipe } from '@ngx-translate/core';

@Component({
  selector: 'app-sidenav',
  imports: [MatIconModule, MatButtonModule, RouterLink, RouterLinkActive, TranslatePipe],
  templateUrl: './sidenav.html',
  styleUrl: './sidenav.css',
})
export class Sidenav {
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
}
