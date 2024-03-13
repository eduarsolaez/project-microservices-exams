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

  private selectedPhoto: File;

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

  public selectPhoto(event): void{
    this.selectedPhoto = event.target.files[0];
    console.info(this.selectedPhoto);

    if (this.selectedPhoto.type.indexOf('image')< 0){
      this.selectedPhoto = null;
      Swal.fire(
        'Error al seleccionar la photo',
        'El archivo debe ser una imagen',
        'error'
      );
    }

  }

  public override create(): void {
    if (!this.selectedPhoto){
      super.create();
    }else {
      this.service.createWithPhoto(this.model, this.selectedPhoto).subscribe(s => {
        console.log(s);
        Swal.fire({
          title: "Creado correctamente!",
          text: `${this.nameModel} ${s.name} ha sido creado correctamente`,
          icon: "success"
        });
        this.router.navigate([this.redirect]);
      }, error1 => {
        if (error1.status === 400){
          this.error = error1.error;
          console.log(this.error);
        }
      });
    }
  }

  public override edit(): void{
    if (!this.selectedPhoto){
      super.edit();
    }else {
      this.service.editWithPhoto(this.model, this.selectedPhoto).subscribe(s => {
        console.log(s);
        Swal.fire({
          title: "Editado correctamente!",
          text: `${this.nameModel} ${s.name} ha sido editado correctamente`,
          icon: "success"
        });
        this.router.navigate([this.redirect]);
      }, error1 => {
        if (error1.status === 400){
          this.error = error1.error;
          console.log(this.error);
        }
      });
    }
  }

}
