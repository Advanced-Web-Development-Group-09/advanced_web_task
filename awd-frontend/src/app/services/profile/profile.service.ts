import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { UserService, UserProfile } from '../user.service';
import { MatCardModule } from '@angular/material/card';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { MatIconModule } from '@angular/material/icon';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';

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
    Sidenav
  ],
  templateUrl: './profile.component.html',
})
export class ProfileComponent implements OnInit {
  userProfile: UserProfile | null = null;
  
  // UI binding properties for the editable form
  editUsername: string = '';
  editEmail: string = '';
  
  // Properties for handling the status update
  currentStatus: string = '';
  isUpdating: boolean = false;
  statusMessage: string = '';
  
  constructor(private userService: UserService) {}

  ngOnInit(): void {
    this.loadProfile();
  }

  loadProfile(): void {
    this.userService.getUserProfile().subscribe({
      next: (profile: any) => {
        this.userProfile = profile;
        // Map existing values to the edit models
        this.editUsername = profile.username || '';
        this.editEmail = profile.email || '';
        // Set the current status from the backend
        this.currentStatus = profile.status || ''; 
      },
      error: (err: any) => console.error('Error fetching profile', err)
    });
  }

  onUpdateProfile(): void {
    this.isUpdating = true;
    this.statusMessage = '';

    const updatePayload = {
      username: this.editUsername,
      email: this.editEmail,
      status: this.currentStatus
    };

    this.userService.updateProfile(updatePayload).subscribe({
      next: (response: any) => {
        if (this.userProfile) {
          this.userProfile.username = this.editUsername;
          this.userProfile.email = this.editEmail;
          this.userProfile.status = this.currentStatus;
        }
        this.isUpdating = false;
        this.statusMessage = 'Profile updated successfully!';
        
        // Hide success message after 3 seconds
        setTimeout(() => this.statusMessage = '', 3000);
      },
      error: (err: any) => {
        console.error('Failed to update profile', err);
        this.isUpdating = false;
        this.statusMessage = 'Failed to update profile.';
      }
    });
  }
}