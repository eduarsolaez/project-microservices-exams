import {Component, OnInit, ViewChild} from '@angular/core';
import {StudentService} from "../../services/student.service";
import {Student} from "../../models/student";
import Swal from 'sweetalert2'
import {MatPaginator, PageEvent} from "@angular/material/paginator";

@Component({
  selector: 'app-students',
  templateUrl: './students.component.html',
  styleUrl: './students.component.css'
})
export class StudentsComponent implements OnInit{

  title = 'LISTADO DE ESTUDIANTES';

  students: Student[];

  length = 0;
  pageSize = 5;
  actualPage= 0;
  pageSizeOptions : number[] = [5, 10, 25, 100];

  constructor(private service: StudentService) {}

  ngOnInit() {
    this.listPageable();
  }

  public list(): void{
    this.service.list().subscribe(s => {
      this.students = s;
    });
  }

  public pageable(event: PageEvent): void {
    this.actualPage = event.pageIndex;
    this.pageSize = event.pageSize;
    this.listPageable();
  }

  public listPageable(): void{
    this.service.listPages(this.actualPage.toString(), this.pageSize.toString()).subscribe(s => {
      this.students = s.content as Student[];
      this.length = s.totalElements as number;
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
          this.listPageable();
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
