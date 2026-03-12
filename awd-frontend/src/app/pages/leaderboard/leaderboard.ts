import { Component } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';

@Component({
  selector: 'app-leaderboard',
  imports: [MatSidenavModule, Sidenav],
  templateUrl: './leaderboard.html',
  styleUrl: './leaderboard.css',
})
export class Leaderboard {}
