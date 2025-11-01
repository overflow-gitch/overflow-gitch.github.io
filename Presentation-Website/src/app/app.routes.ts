import { Routes } from '@angular/router';
import { HomeComponent } from './features/home/home';
import { ProjectsComponent } from './features/projects/projects';

export const routes: Routes = [
    {
        path: '',
        component: HomeComponent
    },
    {
        path: 'Projects',
        component: ProjectsComponent
    }
];
