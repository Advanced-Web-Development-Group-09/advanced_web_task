import { ChangeDetectionStrategy, Component, inject } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import {
  MatDialogActions,
  MatDialogClose,
  MatDialogContent,
  MatDialogRef,
  MatDialogTitle,
} from '@angular/material/dialog';
import { TranslatePipe } from '@ngx-translate/core';
import { Settings } from '../../pages/settings/settings';
import { UserService } from '../../services/user/user.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-confirm-deletion-dialog',
  imports: [
    MatButtonModule,
    MatDialogActions,
    MatDialogClose,
    MatDialogTitle,
    MatDialogContent,
    TranslatePipe,
  ],
  changeDetection: ChangeDetectionStrategy.OnPush,
  templateUrl: './confirm-deletion-dialog.html',
})
export class ConfirmDeletionDialog {
  readonly dialogRef = inject(MatDialogRef<Settings>);
  readonly router = inject(Router);
  readonly userService = inject(UserService);

  onConfirm() {
    this.userService.deleteUserProfile().subscribe({
      next: (response) => {
        console.log('User profile deleted successfully:', response);
        this.router.navigate(['/registration']);
      },
      error: (error) => {
        console.error('Error deleting user profile:', error);
      },
    });

    this.dialogRef.close(true);

    localStorage.removeItem('token');
  }
}
