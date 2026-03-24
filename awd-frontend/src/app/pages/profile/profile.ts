import { Component, OnInit, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatSidenavModule } from '@angular/material/sidenav';
import { TranslatePipe } from '@ngx-translate/core';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { UserService, UserProfile } from '../../services/user.service';

@Component({
  selector: 'app-profile',
  standalone: true,
  imports: [
    CommonModule, 
    FormsModule,
    MatCardModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    MatIconModule,
    MatSidenavModule,
    TranslatePipe,
    Sidenav
  ],
  templateUrl: './profile.html'
})
export class Profile implements OnInit {
  // Convert properties to signals to fix change detection (content appearing on second click)
  userProfile = signal<UserProfile | null>(null);
  currentStatus = signal<string>('');
  isUpdating = signal<boolean>(false);
  statusMessage = signal<string>('');
  
  constructor(private userService: UserService) {}

  ngOnInit(): void {
    this.loadProfile();
  }

  loadProfile(): void {
    this.userService.getUserProfile().subscribe({
      next: (profile: any) => {
        this.userProfile.set(profile);
        // Set the current status from the backend
        this.currentStatus.set(profile.status || ''); 
      },
      error: (err: any) => console.error('Error fetching profile', err)
    });
  }

  onUpdateStatus(): void {
    this.isUpdating.set(true);
    this.statusMessage.set('');

    this.userService.updateStatus(this.currentStatus()).subscribe({
      next: () => {
        // Update the profile signal immutably
        this.userProfile.update(profile => {
          if (profile) {
            return { ...profile, status: this.currentStatus() };
          }
          return profile;
        });
        
        this.isUpdating.set(false);
        this.statusMessage.set('Status updated successfully!');
        
        // Hide success message after 3 seconds
        setTimeout(() => this.statusMessage.set(''), 3000);
      },
      error: (err: any) => {
        console.error('Failed to update status', err);
        this.isUpdating.set(false);
        this.statusMessage.set('Failed to update status.');
      }
    });
  }
}
