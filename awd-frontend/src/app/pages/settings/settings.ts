import { Component } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';

@Component({
  selector: 'app-settings',
  imports: [MatSidenavModule, Sidenav],
  templateUrl: './settings.html',
  styleUrl: './settings.css',
})
export class Settings {}
