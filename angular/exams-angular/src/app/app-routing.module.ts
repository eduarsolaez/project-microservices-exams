import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {StudentsComponent} from "./components/students/students.component";
import {CoursesComponent} from "./components/courses/courses.component";
import {ExamsComponent} from "./components/exams/exams.component";

const routes: Routes = [
  {path:'', pathMatch: 'full', redirectTo:'courses'},
  {path:'students', component: StudentsComponent},
  {path:'courses', component: CoursesComponent},
  {path:'exams', component: ExamsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
