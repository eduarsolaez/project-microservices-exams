import {Question} from "./question";
import {Subject} from "./subject";
import {Generic} from "./generic";

export class Exam implements Generic{

  id: number;
  name: string;
  createAt: string;
  questions: Question[] = [];
  subject: Subject;
  answered: boolean;

}
