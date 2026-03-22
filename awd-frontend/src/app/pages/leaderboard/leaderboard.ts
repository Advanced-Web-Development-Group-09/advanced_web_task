import { Component, OnInit, ChangeDetectorRef } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatSidenavModule } from '@angular/material/sidenav';
import { Sidenav } from '../../shared/sidenav/sidenav';
import { MatCardModule } from '@angular/material/card';
import { MatTableModule } from '@angular/material/table';
import { TranslatePipe } from '@ngx-translate/core';
import { HttpClient } from '@angular/common/http';

export interface PlayerElement {
  place: number;
  username: string;
  points: number;
}

@Component({
  selector: 'app-leaderboard',
  imports: [CommonModule, MatSidenavModule, Sidenav, MatCardModule, MatTableModule, TranslatePipe],
  templateUrl: './leaderboard.html',
  styleUrl: './leaderboard.css',
})
export class Leaderboard implements OnInit {
  displayedColumns: string[] = ['place', 'name', 'points'];
  dataSource: PlayerElement[] = [];
  topUsers: PlayerElement[] = [];

  constructor(private http: HttpClient, private cdr: ChangeDetectorRef) {}

  ngOnInit(): void {
    this.fetchLeaderboard();
  }

  fetchLeaderboard(): void {
    this.http.get<{username: string, points: number}[]>('http://127.0.0.1:8000/api/users/leaderboard').subscribe({
      next: (data) => {
        const rankedData: PlayerElement[] = data.map((user, index) => ({
          ...user,
          place: index + 1
        }));

        this.topUsers = rankedData.slice(0, 3);
        this.dataSource = rankedData.slice(3); // Start from 4th place for the table
        this.cdr.markForCheck(); // Tells Angular the data is ready!
      },
      error: (err) => {
        console.error('Failed to load leaderboard', err);
        this.cdr.markForCheck(); // Also clear the loading spinner on error
      }
    });
  }
}
