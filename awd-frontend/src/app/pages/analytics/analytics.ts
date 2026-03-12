import { Component } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';

@Component({
  selector: 'app-analytics',
  imports: [MatSidenavModule, Sidenav],
  templateUrl: './analytics.html',
  styleUrl: './analytics.css',
})
export class Analytics {}
