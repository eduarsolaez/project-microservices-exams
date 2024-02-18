import {Component, OnInit} from '@angular/core';
import {StudentService} from "../../services/student.service";
import {Student} from "../../models/student";
import Swal from 'sweetalert2'

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
    Swal.fire({
      title: `Estas seguro de eliminar a ${student.name} ?`,
      text: "No podras revertir esta accion!",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Si, eliminar!",
      cancelButtonText: "Cancelar"
    }).then((result) => {
      if (result.isConfirmed) {
        this.service.delete(student.id).subscribe(() => {
          this.list();
        });
        Swal.fire({
          title: "Eliminado!",
          text: "El estudiante ha sido eliminado correctamente",
          icon: "success"
        });
      }
    });
  }

}
