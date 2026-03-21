import { Component } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';
import {MatCardModule} from '@angular/material/card';
import { TranslatePipe } from '@ngx-translate/core';

@Component({
  selector: 'app-profile',
  imports: [MatSidenavModule, Sidenav, MatCardModule, TranslatePipe],
  templateUrl: './profile.html',
  styleUrl: './profile.css',
})
export class Profile {}
