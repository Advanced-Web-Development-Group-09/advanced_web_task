import { Component } from '@angular/core';
import { MatButtonModule } from '@angular/material/button';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { FormsModule } from '@angular/forms';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-login',
  imports: [MatButtonModule, MatInputModule, MatFormFieldModule, FormsModule, RouterLink],
  templateUrl: './login.html',
})
export class Login {}
