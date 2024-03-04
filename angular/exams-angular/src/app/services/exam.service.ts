import { Injectable } from '@angular/core';
import {CommonService} from "./common.service";
import {Student} from "../models/student";
import {Exam} from "../models/exam";

@Injectable({
  providedIn: 'root'
})
export class ExamService extends CommonService<Exam>{


  protected override baseEndPoint: string = 'http://localhost:8090/api/exams';

}
