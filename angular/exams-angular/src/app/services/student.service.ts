import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Student} from "../models/student";
import {CommonService} from "./common.service";

@Injectable({
  providedIn: 'root'
})
export class StudentService extends CommonService<Student>{


  protected override baseEndPoint: string = 'http://localhost:8090/api/students';

  constructor(http: HttpClient) {
    super(http);
  }
}
