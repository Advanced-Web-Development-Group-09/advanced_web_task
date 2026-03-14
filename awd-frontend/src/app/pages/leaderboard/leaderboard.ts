import { Component } from '@angular/core';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatTableModule } from '@angular/material/table';

export interface PlayerElement {
  place: number;
  name: string;
  points: number;
}

const PLAYER_DATA: PlayerElement[] = [
  { place: 4, name: 'Gian Van Veen', points: 20 },
  { place: 5, name: 'Michael Smith', points: 17 },
  { place: 6, name: 'Michael Van Gerven', points: 15 },
  { place: 7, name: 'Luke Littler', points: 9 },
  { place: 8, name: 'Luke Humphries', points: 3 },
  { place: 9, name: 'Nathan Aspinall', points: 2 },
  { place: 10, name: 'Gary Anderson', points: 1 },
];

@Component({
  selector: 'app-leaderboard',
  imports: [MatSidenavModule, Sidenav, MatCardModule, MatTableModule],
  templateUrl: './leaderboard.html',
  styleUrl: './leaderboard.css',
})
export class Leaderboard {
  displayedColumns: string[] = ['place', 'name', 'points'];
  dataSource = PLAYER_DATA;
}
