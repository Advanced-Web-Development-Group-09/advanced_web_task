import { Routes } from '@angular/router';

import { Analytics } from './pages/analytics/analytics';
import { Dashboard } from './pages/dashboard/dashboard';
import { Datasets } from './pages/datasets/datasets';
import { Leaderboard } from './pages/leaderboard/leaderboard';
import { Login } from './pages/login/login';
import { Profile } from './pages/profile/profile';
import { Registration } from './pages/registration/registration';
import { Settings } from './pages/settings/settings';
import { authGuard } from './guards/auth.guard';

export const routes: Routes = [
  { path: 'analytics', component: Analytics, canActivate: [authGuard] },
  { path: 'dashboard', component: Dashboard, canActivate: [authGuard] },
  { path: 'datasets', component: Datasets, canActivate: [authGuard] },
  { path: 'leaderboard', component: Leaderboard, canActivate: [authGuard] },
  { path: 'login', component: Login },
  { path: 'profile', component: Profile, canActivate: [authGuard] },
  { path: 'registration', component: Registration },
  { path: 'settings', component: Settings, canActivate: [authGuard] },
  { path: '', redirectTo: '/login', pathMatch: 'full' },
];
