import { Component, Input, Output, EventEmitter } from '@angular/core';

import { User } from '@workshop/core-data';

@Component({
  selector: 'workshop-users-list',
  templateUrl: './users-list.component.html',
  styleUrls: ['./users-list.component.scss']
})
export class UsersListComponent {
  @Input() users: User[];
  @Output() selected = new EventEmitter();
  @Output() deleted = new EventEmitter();

  constructor() { }

  selectUser(user: User) {
    this.selected.emit(user);
  }

  deleteUser(userId: number, event: any) {
    event.stopImmediatePropagation();
    this.deleted.emit(userId);
  }
}
