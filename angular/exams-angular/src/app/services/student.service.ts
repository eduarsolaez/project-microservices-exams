import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Student} from "../models/student";

@Injectable({
  providedIn: 'root'
})
export class StudentService {

  private baseEndPoint = 'http://localhost:8090/api/students';

  private headers: HttpHeaders = new HttpHeaders({'Content-Type': 'application/json'})

  constructor(private http: HttpClient) {}

  public list(): Observable<Student[]> {
    return this.http.get<Student[]>(this.baseEndPoint);
  }

  public listPages(page: string, size: string): Observable<any> {

    const params = new HttpParams()
      .set('page', page)
      .set('size', size);

    return this.http.get<any>(`${this.baseEndPoint}/pageable`, {params: params});
  }

  public listOne(id: number): Observable<Student> {
    return this.http.get<Student>(`${this.baseEndPoint}/${id}`);
  }

  public create(student: Student): Observable<Student> {
    return this.http.post<Student>(this.baseEndPoint, student, {headers: this.headers});
  }

  public update(student: Student): Observable<Student> {
    return this.http.put<Student>(`${this.baseEndPoint}/${student.id}`, student, {headers: this.headers});
  }

  public delete(id: number): Observable<void> {
    return this.http.delete<void>(`${this.baseEndPoint}/${id}`);
  }



}
