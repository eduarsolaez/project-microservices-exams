import {Component, OnInit, ViewChild} from '@angular/core';
import {StudentService} from "../../services/student.service";
import {Student} from "../../models/student";
import {CommonListComponent} from "../common-list.component";
import {BASE_ENDPOINT} from "../../config/app";

@Component({
  selector: 'app-students',
  templateUrl: './students.component.html',
  styleUrl: './students.component.css'
})
export class StudentsComponent extends CommonListComponent<Student, StudentService> implements OnInit{

  override title = 'LISTADO DE ESTUDIANTES';
  protected override nameModel: 'estudiante';

  baseEndPoint: string = BASE_ENDPOINT + '/students';

  constructor(protected override service: StudentService) {
    super(service);
  }



}
