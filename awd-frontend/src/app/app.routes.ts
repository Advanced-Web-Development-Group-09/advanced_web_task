import { Routes } from '@angular/router';

import { Analytics } from './pages/analytics/analytics';
import { Dashboard } from './pages/dashboard/dashboard';
import { Datasets } from './pages/datasets/datasets';
import { Leaderboard } from './pages/leaderboard/leaderboard';
import { Login } from './pages/login/login';
import { Profile } from './pages/profile/profile';
import { Registration } from './pages/registration/registration';
import { Settings } from './pages/settings/settings';

export const routes: Routes = [
    { path: 'analytics', component: Analytics },
    { path: 'dashboard', component: Dashboard },
    { path: 'datasets', component: Datasets },
    { path: 'leaderboard', component: Leaderboard },
    { path: 'login', component: Login },
    { path: 'profile', component: Profile },
    { path: 'registration', component: Registration },
    { path: 'settings', component: Settings },
    { path: '', redirectTo: '/login', pathMatch: 'full' }
];
    