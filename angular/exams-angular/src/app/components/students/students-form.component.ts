import {Component, OnInit} from '@angular/core';
import {Student} from "../../models/student";
import {StudentService} from "../../services/student.service";
import {ActivatedRoute, Route, Router} from "@angular/router";
import Swal from 'sweetalert2'
import {CommonFormComponent} from "../common-form.component";

@Component({
  selector: 'app-students-form',
  templateUrl: './students-form.component.html',
  styleUrl: './students-form.component.css'
})
export class StudentsFormComponent
  extends CommonFormComponent<Student, StudentService> implements OnInit{
  constructor(service: StudentService,
              router: Router,
              route: ActivatedRoute) {
    super(service, router, route);
    this.titleCreate = 'CREAR ESTUDIANTE';
    this.titleEdit = 'EDITAR ESTUDIANTE';
    this.model = new Student();
    this.redirect = '/students';
    this.nameModel = 'Estudiante';
  }




}
