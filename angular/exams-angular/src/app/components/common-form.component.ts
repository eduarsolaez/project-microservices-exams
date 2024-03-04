import {Component, Directive, OnInit} from '@angular/core';
import {ActivatedRoute, Route, Router} from "@angular/router";
import Swal from 'sweetalert2'
import {CommonService} from "../services/common.service";
import {Generic} from "../models/generic";

@Directive()
export abstract class CommonFormComponent<E extends Generic, S extends CommonService<E>> implements OnInit{

  protected titleCreate:String;
  protected titleEdit:String;
  model: E;
  error: any;
  protected redirect: string;
  protected nameModel: string;

  constructor(protected service: S,
              protected router: Router,
              protected route: ActivatedRoute) {
  }

  ngOnInit() {

    this.route.paramMap.subscribe(params => {
      const id: number = +params.get('id');
      if (id){
        this.service.listOne(id).subscribe(s => {
          this.model = s;
        })
      }
    })

  }

  public create(): void {
    this.service.create(this.model).subscribe(s => {
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

  public edit(): void{
    this.service.update(this.model).subscribe(s => {
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
