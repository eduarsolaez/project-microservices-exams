import {HttpClient, HttpHeaders, HttpParams} from "@angular/common/http";
import {Observable} from "rxjs";
import {Generic} from "../models/generic";
import {Directive} from "@angular/core";

@Directive()
export abstract class CommonService<E extends Generic> {

  protected baseEndPoint: string;

  protected headers: HttpHeaders = new HttpHeaders({'Content-Type': 'application/json'});

  constructor(protected http: HttpClient) {}

  public list(): Observable<E[]> {
    return this.http.get<E[]>(this.baseEndPoint);
  }

  public listPages(page: string, size: string): Observable<any> {

    const params = new HttpParams()
      .set('page', page)
      .set('size', size);

    return this.http.get<any>(`${this.baseEndPoint}/pageable`, {params: params});
  }

  public listOne(id: number): Observable<E> {
    return this.http.get<E>(`${this.baseEndPoint}/${id}`);
  }

  public create(e: E): Observable<E> {
    return this.http.post<E>(this.baseEndPoint, e, {headers: this.headers});
  }

  public update(e: E): Observable<E> {
    return this.http.put<E>(`${this.baseEndPoint}/${e.id}`, e, {headers: this.headers});
  }

  public delete(id: number): Observable<void> {
    return this.http.delete<void>(`${this.baseEndPoint}/${id}`);
  }



}
