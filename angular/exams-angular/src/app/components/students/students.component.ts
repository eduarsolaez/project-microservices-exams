import {Component, OnInit} from '@angular/core';

@Component({
  selector: 'app-students',
  templateUrl: './students.component.html',
  styleUrl: './students.component.css'
})
export class StudentsComponent implements OnInit{

  title = 'listado de estudiantes';

  constructor() {
  }

  ngOnInit() {
  }

}
