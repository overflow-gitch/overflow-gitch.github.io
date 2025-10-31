import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { Home } from './features/home/home';
import { HeaderComponent as HeaderComponent } from "./layout/header/header";

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, Home, HeaderComponent],
  templateUrl: './app.html',
})

export class App {
  protected readonly title = signal('Presentation-Website');
}
