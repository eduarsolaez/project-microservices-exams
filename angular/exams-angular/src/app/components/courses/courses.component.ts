import { Component } from '@angular/core';
import {CommonListComponent} from "../common-list.component";
import {Course} from "../../models/course";
import {CourseService} from "../../services/course.service";

@Component({
  selector: 'app-courses',
  templateUrl: './courses.component.html',
  styleUrl: './courses.component.css'
})
export class CoursesComponent extends CommonListComponent<Course, CourseService>{

  constructor(service: CourseService) {
    super(service);
    this.title = 'LISTADO DE CURSOS';
    this.nameModel = 'Curso';
  }

}
