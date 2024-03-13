import { Injectable } from '@angular/core';
import {CommonService} from "./common.service";
import {Student} from "../models/student";
import {Course} from "../models/course";
import {HttpClient} from "@angular/common/http";
import {BASE_ENDPOINT} from "../config/app";

@Injectable({
  providedIn: 'root'
})
export class CourseService extends CommonService<Course>{


  protected override baseEndPoint: string = BASE_ENDPOINT + '/courses';

  constructor(http: HttpClient) {
    super(http);
  }

}
