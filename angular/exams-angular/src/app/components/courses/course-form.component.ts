import { Component } from '@angular/core';
import {CommonFormComponent} from "../common-form.component";
import {Course} from "../../models/course";
import {CourseService} from "../../services/course.service";
import {StudentService} from "../../services/student.service";
import {ActivatedRoute, Router} from "@angular/router";
import {Student} from "../../models/student";

@Component({
  selector: 'app-course-form',
  templateUrl: './course-form.component.html',
  styleUrl: './course-form.component.css'
})
export class CourseFormComponent extends CommonFormComponent<Course, CourseService>{
  constructor(service: CourseService,
              router: Router,
              route: ActivatedRoute) {
    super(service, router, route);
    this.titleCreate = 'CREAR ESTUDIANTE';
    this.titleEdit = 'EDITAR ESTUDIANTE';
    this.model = new Course();
    this.redirect = '/courses';
    this.nameModel = 'Curso';
  }
}
