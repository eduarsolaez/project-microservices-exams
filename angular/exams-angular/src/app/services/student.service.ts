import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Student} from "../models/student";
import {CommonService} from "./common.service";
import { BASE_ENDPOINT } from "../config/app";

@Injectable({
  providedIn: 'root'
})
export class StudentService extends CommonService<Student>{


  protected override baseEndPoint: string = BASE_ENDPOINT + '/students';

  constructor(http: HttpClient) {
    super(http);
  }

  public createWithPhoto(student: Student, archive: File): Observable<Student>{

    const formData = new FormData();
    formData.append('archive', archive);
    formData.append('name', student.name);
    formData.append('lastname', student.lastname);
    formData.append('email', student.email);

    return this.http.post<Student>(this.baseEndPoint + '/with-photo',
      formData);
  }

  public editWithPhoto(student: Student, archive: File): Observable<Student>{

    const formData = new FormData();
    formData.append('archive', archive);
    formData.append('name', student.name);
    formData.append('lastname', student.lastname);
    formData.append('email', student.email);

    return this.http.put<Student>(`${this.baseEndPoint}/with-photo/${student.id}`,
      formData);
  }
}
