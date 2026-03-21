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

@Component({
  selector: 'app-wrong-file-type-dialog',
  imports: [
    MatButtonModule,
    MatDialogActions,
    MatDialogClose,
    MatDialogTitle,
    MatDialogContent,
    TranslatePipe,
  ],
  changeDetection: ChangeDetectionStrategy.OnPush,
  templateUrl: './wrong-file-type-dialog.html',
})
export class WrongFileTypeDialog {
  readonly dialogRef = inject(MatDialogRef<Datasets>);
}
