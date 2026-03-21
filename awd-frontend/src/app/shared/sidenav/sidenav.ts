import { Component } from '@angular/core';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { RouterLink, RouterLinkActive } from '@angular/router';

@Component({
  selector: 'app-sidenav',
  imports: [MatIconModule, MatButtonModule, RouterLink, RouterLinkActive],
  templateUrl: './sidenav.html',
  styleUrl: './sidenav.css',
})
export class Sidenav {
  isDarkMode = document.documentElement.classList.contains('dark-theme') ? 'dark' : 'light';

  toggleDarkMode() {
    this.isDarkMode = this.isDarkMode === 'light' ? 'dark' : 'light';

    document.documentElement.classList.toggle('dark-theme', this.isDarkMode === 'dark');
  }
}
