import {Student} from "./student";
import {Exam} from "./exam";
import {Generic} from "./generic";

export class Course implements Generic{

  id: number;
  name: string;
  createAt: string;
  studentEntityList: Student[] = [];
  exams: Exam[] = [];

}
