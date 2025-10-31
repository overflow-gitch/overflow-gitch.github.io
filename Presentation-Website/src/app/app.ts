import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HeaderComponent as HeaderComponent } from "./layout/header/header";

@Component({
  selector: 'app-root',
  imports: [HeaderComponent, RouterOutlet],
  templateUrl: './app.html',
})

export class App {
  protected readonly title = signal('Presentation-Website');
}
