import {Student} from "./student";
import {Question} from "./question";

export class Answer {

  id: number;
  text: string;
  student: Student;
  question: Question;

}
