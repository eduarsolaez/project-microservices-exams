import {Component, OnInit} from '@angular/core';
import {StudentService} from "../../services/student.service";
import {Student} from "../../models/student";

@Component({
  selector: 'app-students',
  templateUrl: './students.component.html',
  styleUrl: './students.component.css'
})
export class StudentsComponent implements OnInit{

  title = 'LISTADO DE ESTUDIANTES';

  students: Student[];

  constructor(private service: StudentService) {}

  ngOnInit() {
    this.list();
  }

  public list(): void{
    this.service.list().subscribe(s => {
      this.students = s;
    });
  }

  public delete(student: Student): void{
    if (confirm(`Estas seguro que quieres eliminar a ${student.name} ?`)){
      this.service.delete(student.id).subscribe(() => {
        this.list();
        alert(`Estudiante ${student.name} ha sido eliminado correctamente`)
      });
    }

  }

}
