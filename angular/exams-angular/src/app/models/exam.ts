import {Question} from "./question";
import {Subject} from "./subject";

export class Exam {

  id: number;
  name: string;
  createAt: string;
  questions: Question[] = [];
  subject: Subject;
  answered: boolean;

}
