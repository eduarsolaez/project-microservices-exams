import {Component, OnInit} from '@angular/core';
import {Student} from "../../models/student";
import {StudentService} from "../../services/student.service";
import {ActivatedRoute, Route, Router} from "@angular/router";

@Component({
  selector: 'app-students-form',
  templateUrl: './students-form.component.html',
  styleUrl: './students-form.component.css'
})
export class StudentsFormComponent implements OnInit{

  titleCreate = 'CREAR ESTUDIANTE';

  titleEdit = 'EDITAR ESTUDIANTE';

  student: Student = new Student();

  error: any;

  constructor(private service: StudentService,
              private router: Router,
              private route: ActivatedRoute) {
  }

  ngOnInit() {

    this.route.paramMap.subscribe(params => {
      const id: number = +params.get('id');
      if (id){
        this.service.listOne(id).subscribe(s => {
          this.student = s;
        })
      }
    })

  }

  public create(): void {
    this.service.create(this.student).subscribe(s => {
      console.log(s);
      alert(`Estudiante ${s.name} ha sido creado correctamente`);
      this.router.navigate(['/students']);
    }, error1 => {
      if (error1.status === 400){
        this.error = error1.error;
        console.log(this.error);
      }
    });
  }

  public edit(): void{
    this.service.update(this.student).subscribe(s => {
      console.log(s);
      alert(`Estudiante ${s.name} ha sido actualizado correctamente`);
      this.router.navigate(['/students']);
    }, error1 => {
      if (error1.status === 400){
        this.error = error1.error;
        console.log(this.error);
      }
    });
  }

}
