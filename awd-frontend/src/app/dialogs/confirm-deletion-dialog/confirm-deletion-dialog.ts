import { ChangeDetectionStrategy, Component, inject } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import {
  MatDialogActions,
  MatDialogClose,
  MatDialogContent,
  MatDialogRef,
  MatDialogTitle,
} from '@angular/material/dialog';
import { Datasets } from '../../pages/datasets/datasets';
import { TranslatePipe } from '@ngx-translate/core';
import { Settings } from '../../pages/settings/settings';

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

  onConfirm() {
    // Handle confirmation logic here
    this.dialogRef.close(true); // Pass true to indicate confirmation
  }
}
