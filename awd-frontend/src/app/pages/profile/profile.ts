import { Component, OnInit, inject } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { TranslatePipe } from '@ngx-translate/core';
import { ProfileService, UserProfile } from '../../services/profile/profile.service';
import { ChangeDetectionStrategy } from '@angular/core';
import { ChangeDetectorRef } from '@angular/core';

@Component({
  selector: 'app-profile',
  imports: [MatSidenavModule, Sidenav, MatCardModule, TranslatePipe],
  templateUrl: './profile.html',
  styleUrl: './profile.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Profile implements OnInit {
  private profileService = inject(ProfileService);
  private cdr = inject(ChangeDetectorRef);

  user: UserProfile | null = null;
  error: string | null = null;

  ngOnInit(): void {
    this.profileService.getProfile().subscribe({
      next: (data) => {
        this.user = data;
        this.cdr.markForCheck();
      },
      error: (err) => {
        console.error(err);
        this.error = 'Failed to load profile';
        this.cdr.markForCheck();
      },
    });
  }
}
