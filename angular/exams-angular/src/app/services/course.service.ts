import { Injectable } from '@angular/core';
import {CommonService} from "./common.service";
import {Student} from "../models/student";
import {Course} from "../models/course";

@Injectable({
  providedIn: 'root'
})
export class CourseService extends CommonService<Course>{


  protected override baseEndPoint: string = 'http://localhost:8090/api/courses';

}
