import {Component, Directive, OnInit, ViewChild} from '@angular/core';
import Swal from 'sweetalert2'
import {PageEvent} from "@angular/material/paginator";
import {CommonService} from "../services/common.service";
import {Generic} from "../models/generic";

@Directive()
export abstract class CommonListComponent<E extends Generic, S extends CommonService<E>> implements OnInit{

  title: string;
  lists: E[];
  protected nameModel: string;

  length = 0;
  pageSize = 5;
  actualPage= 0;
  pageSizeOptions : number[] = [5, 10, 25, 100];

  constructor(protected service: S) {}

  ngOnInit() {
    this.listPageable();
  }

  public list(): void{
    this.service.list().subscribe(s => {
      this.lists = s;
    });
  }

  public pageable(event: PageEvent): void {
    this.actualPage = event.pageIndex;
    this.pageSize = event.pageSize;
    this.listPageable();
  }

  public listPageable(): void{
    this.service.listPages(this.actualPage.toString(), this.pageSize.toString()).subscribe(s => {
      this.lists = s.content as E[];
      this.length = s.totalElements as number;
    });
  }

  public delete(e: E): void{
    Swal.fire({
      title: `Estas seguro de eliminar al ${this.nameModel} ${e.name} ?`,
      text: "No podras revertir esta accion!",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Si, eliminar!",
      cancelButtonText: "Cancelar"
    }).then((result) => {
      if (result.isConfirmed) {
        this.service.delete(e.id).subscribe(() => {
          this.listPageable();
        });
        Swal.fire({
          title: "Eliminado!",
          text: `El ${this.nameModel} ha sido eliminado correctamente`,
          icon: "success"
        });
      }
    });
  }

}
