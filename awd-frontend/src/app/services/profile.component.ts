import { Component, OnInit } from '@angular/core';
import { UserService, UserProfile } from '../services/user.service';

@Component({
  selector: 'app-profile',
  templateUrl: './profile.component.html',
  styleUrls: ['./profile.component.css']
})
export class ProfileComponent implements OnInit {
  userProfile: UserProfile | null = null;
  
  // Properties for handling the status update
  currentStatus: string = '';
  isUpdating: boolean = false;
  statusMessage: string = '';
  
  // The available statuses for the user to choose from
  availableStatuses: string[] = ['Available', 'Busy', 'Away', 'Do Not Disturb'];

  constructor(private userService: UserService) {}

  ngOnInit(): void {
    this.loadProfile();
  }

  loadProfile(): void {
    this.userService.getUserProfile().subscribe({
      next: (profile) => {
        this.userProfile = profile;
        // Pre-select the current status from the backend
        this.currentStatus = profile.status || 'Available'; 
      },
      error: (err) => console.error('Error fetching profile', err)
    });
  }

  onUpdateStatus(): void {
    if (!this.currentStatus || this.currentStatus === this.userProfile?.status) {
      return; // Do nothing if it hasn't changed
    }

    this.isUpdating = true;
    this.statusMessage = '';

    this.userService.updateStatus(this.currentStatus).subscribe({
      next: (response) => {
        if (this.userProfile) {
          this.userProfile.status = response.status;
        }
        this.isUpdating = false;
        this.statusMessage = 'Status updated successfully!';
        
        // Hide success message after 3 seconds
        setTimeout(() => this.statusMessage = '', 3000);
      },
      error: (err) => {
        console.error('Failed to update status', err);
        this.isUpdating = false;
        this.statusMessage = 'Failed to update status.';
      }
    });
  }
}