import { Component } from '@angular/core';

@Component({
  selector: 'workshop-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'users';
  links = [{path: '/users', icon: 'people', label: 'USERS'}];
}
