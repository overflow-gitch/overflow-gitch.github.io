import { Routes } from '@angular/router';
import { HomePage } from './features/home/home';
import { ProjectsPage } from './features/projects/projects';

export const routes: Routes = [
    {
        path: '',
        component: HomePage
    },
    {
        path: 'Projects',
        component: ProjectsPage
    }
];
