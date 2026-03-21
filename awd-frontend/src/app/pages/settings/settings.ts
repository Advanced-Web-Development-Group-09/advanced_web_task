import { ChangeDetectionStrategy, Component, inject } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import {
  FormGroup,
  FormControl,
  Validators,
  ReactiveFormsModule,
  AbstractControl,
  ValidationErrors,
} from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatIconModule } from '@angular/material/icon';
import { MatButtonModule } from '@angular/material/button';
import { TranslatePipe } from '@ngx-translate/core';
import { MatDialog } from '@angular/material/dialog';
import { ConfirmDeletionDialog } from '../../dialogs/confirm-deletion-dialog/confirm-deletion-dialog';
import { UserService } from '../../services/user/user.service';
import { Router } from '@angular/router';

function passwordMatchValidator(control: AbstractControl): ValidationErrors | null {
  const group = control as FormGroup;
  const newPassword = group.get('newPassword');
  const confirmPassword = group.get('confirmPassword');

  if (!newPassword?.value || !confirmPassword?.value) return null;

  const passwordsMatch = newPassword.value === confirmPassword.value;

  if (!passwordsMatch) {
    confirmPassword?.setErrors({ ...confirmPassword.errors, passwordMismatch: true });
  } else if (confirmPassword?.hasError('passwordMismatch')) {
    const { passwordMismatch, ...otherErrors } = confirmPassword.errors || {};
    confirmPassword.setErrors(Object.keys(otherErrors).length ? otherErrors : null);
  }

  return null;
}

@Component({
  selector: 'app-settings',
  standalone: true,
  imports: [
    MatSidenavModule,
    Sidenav,
    MatCardModule,
    MatFormFieldModule,
    MatInputModule,
    ReactiveFormsModule,
    MatButtonModule,
    MatIconModule,
    TranslatePipe,
  ],
  templateUrl: './settings.html',
  styleUrl: './settings.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Settings {
  readonly dialog = inject(MatDialog);
  private readonly userService = inject(UserService);
  private readonly router = inject(Router);
  readonly passwordForm = new FormGroup(
    {
      currentPassword: new FormControl('', {
        nonNullable: true,
        validators: [Validators.required],
      }),
      newPassword: new FormControl('', {
        nonNullable: true,
        validators: [
          Validators.required,
          Validators.minLength(8),
          Validators.pattern(/^(?=.*[A-Z])(?=.*\d).+$/),
        ],
      }),
      confirmPassword: new FormControl('', {
        nonNullable: true,
        validators: [Validators.required],
      }),
    },
    { validators: passwordMatchValidator },
  );

  get f() {
    return this.passwordForm.controls;
  }

  onChangePassword() {
    if (this.passwordForm.invalid) {
      this.passwordForm.markAllAsTouched();
      return;
    }

    this.userService
      .changePassword({
        current_password: this.f['currentPassword'].value,
        new_password: this.f['newPassword'].value,
      })
      .subscribe({
        next: () => {
          this.passwordForm.reset();

          // logout and redirect to login page
          localStorage.removeItem('token');
          this.router.navigate(['/login']);
        },
        error: (err) => {
          if (err?.error?.detail === 'Incorrect current password') {
            this.f['currentPassword'].setErrors({ incorrect: true });
          }
        },
      });
  }

  openDeleteDialog() {
    this.dialog.open(ConfirmDeletionDialog);
  }
}
