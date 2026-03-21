import { Routes } from '@angular/router';
import { LoginComponent } from './login.component';
import { RegisterComponent } from './register.component';
import { ProfileComponent } from './profile.component';
import { TrainDataComponent } from './train-data.component';
import { CalculationsComponent } from './calculations.component';

export const routes: Routes = [
  { path: 'login', component: LoginComponent },
  { path: 'register', component: RegisterComponent },
  { path: 'profile', component: ProfileComponent },
  { path: 'train-data', component: TrainDataComponent },
  { path: 'calculations', component: CalculationsComponent },
  
  { path: '', redirectTo: '/train-data', pathMatch: 'full' },
  { path: '**', redirectTo: '/login' }
];