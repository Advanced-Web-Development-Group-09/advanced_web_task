import { Component } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';

@Component({
  selector: 'app-profile',
  imports: [MatSidenavModule, Sidenav],
  templateUrl: './profile.html',
  styleUrl: './profile.css',
})
export class Profile {}
