import { Component } from '@angular/core';
import {MatSidenavModule} from '@angular/material/sidenav';
import {Sidenav} from '../../shared/sidenav/sidenav';

@Component({
  selector: 'app-datasets',
  imports: [MatSidenavModule, Sidenav],
  templateUrl: './datasets.html',
  styleUrl: './datasets.css',
})
export class Datasets {}
