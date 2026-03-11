import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import {MatInputModule} from '@angular/material/input';
import {MatFormFieldModule} from '@angular/material/form-field';
import {FormsModule} from '@angular/forms';

@Component({
  selector: 'app-registration',
  imports: [MatButtonModule, MatInputModule, MatFormFieldModule, FormsModule],
  templateUrl: './registration.html',
})
export class Registration {}
