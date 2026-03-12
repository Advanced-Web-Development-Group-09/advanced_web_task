import { ChangeDetectionStrategy, Component, signal } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';
import {MatCardModule} from '@angular/material/card';

import {takeUntilDestroyed} from '@angular/core/rxjs-interop';
import {FormControl, FormsModule, ReactiveFormsModule, Validators} from '@angular/forms';
import {MatFormFieldModule} from '@angular/material/form-field';
import {MatInputModule} from '@angular/material/input';
import {merge} from 'rxjs';

import {MatIconModule} from '@angular/material/icon';
import {MatButtonModule} from '@angular/material/button';

@Component({
  selector: 'app-settings',
  imports: [MatSidenavModule, Sidenav, MatCardModule, MatFormFieldModule, MatInputModule, FormsModule, ReactiveFormsModule, MatButtonModule, MatIconModule],
  templateUrl: './settings.html',
  styleUrl: './settings.css',
  changeDetection: ChangeDetectionStrategy.OnPush,
})
export class Settings {
  readonly newPassword1 = new FormControl('', [Validators.required, Validators.email]); // CHANGE THIS TO PATTERN VALIDATOR
  readonly newPassword2 = new FormControl('', [Validators.required, Validators.email]); // CHANGE THIS TO PATTERN VALIDATOR

  errorMessage1 = signal('');
  errorMessage2 = signal('');

  constructor() {
    merge(this.newPassword1.statusChanges, this.newPassword1.valueChanges)
      .pipe(takeUntilDestroyed())
      .subscribe(() => this.updateErrorMessage1());

    merge(this.newPassword2.statusChanges, this.newPassword2.valueChanges)
      .pipe(takeUntilDestroyed())
      .subscribe(() => this.updateErrorMessage2());
  }

  updateErrorMessage1() {
    if (this.newPassword1.hasError('required')) {
      this.errorMessage1.set('You must enter a value');
    } else if (this.newPassword1.hasError('email')) { // CHANGE THIS TO PATTERN ERROR OR WHATEVER
      this.errorMessage1.set('Not a valid password');
    } else {
      this.errorMessage1.set('');
    }
  }

  updateErrorMessage2() {
    if (this.newPassword2.hasError('required')) {
      this.errorMessage2.set('You must enter a value');
    } else if (this.newPassword2.hasError('email')) { // CHANGE THIS TO PATTERN ERROR OR WHATEVER
      this.errorMessage2.set('Not a valid password');
    } else {
      this.errorMessage2.set('');
    }
  }
}
