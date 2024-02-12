package com.eduar.microservices.app.courses.controllers;

import com.eduar.microservices.app.courses.entities.CourseEntity;
import com.eduar.microservices.app.courses.services.ICourseService;
import com.eduar.microservices.commons.controllers.CommonController;
import com.eduar.microservices.commons.exams.entities.ExamEntity;
import com.eduar.microservices.commons.students.entity.StudentEntity;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@RestController
@RequestMapping("api/courses")
public class CourseController extends CommonController<CourseEntity, ICourseService> {

    @PutMapping("{id}")
    public ResponseEntity<?> update(@Valid @RequestBody CourseEntity course, BindingResult result, @PathVariable Long id){

        if (result.hasErrors()){
            return this.valid(result);
        }

        Optional<CourseEntity> optional = this.service.update(id, course);
        if(optional.isPresent()){
            return ResponseEntity.status(HttpStatus.CREATED).body(optional.orElseThrow());
        }
        return ResponseEntity.notFound().build();
    }

    @PutMapping("assign-students/{id}")
    public ResponseEntity<?> assignStudents(@PathVariable Long id, @RequestBody List<StudentEntity> studentEntityList){
        Optional<CourseEntity> optional = this.service.findById(id);
        if(optional.isEmpty()){
            return ResponseEntity.notFound().build();
        }
        CourseEntity course = optional.get();

        studentEntityList.forEach(course::addStudentEntity);

        return ResponseEntity.status(HttpStatus.CREATED).body(this.service.save(course));
    }

    @PutMapping("delete-student/{id}")
    public ResponseEntity<?> deleteStudents(@PathVariable Long id, @RequestBody StudentEntity studentEntity){
        Optional<CourseEntity> optional = this.service.findById(id);
        if(optional.isEmpty()){
            return ResponseEntity.notFound().build();
        }
        CourseEntity course = optional.get();

        course.removeStudentEntity(studentEntity);

        return ResponseEntity.status(HttpStatus.CREATED).body(this.service.save(course));

    }

    @GetMapping("student/{id}")
    public ResponseEntity<?> searchByStudentId(@PathVariable Long id){
        CourseEntity course = this.service.findCourseByStudentId(id);

        if (course != null){
            List<Long> examsId = (List<Long>) this.service.findExamsIdWithAnswersByStudent(id);

            List<ExamEntity> exams = course.getExams().stream().map(exam -> {
              if (examsId.contains(exam.getId())){
                  exam.setAnswered(true);
              }
              return exam;
            }).toList();

            course.setExams(exams);
        }

        return ResponseEntity.ok(course);
    }

    @PutMapping("delete-exam/{id}")
    public ResponseEntity<?> deleteExams(@PathVariable Long id, @RequestBody ExamEntity examEntity){
        Optional<CourseEntity> optional = this.service.findById(id);
        if(optional.isEmpty()){
            return ResponseEntity.notFound().build();
        }
        CourseEntity course = optional.get();

        course.removeExam(examEntity);

        return ResponseEntity.status(HttpStatus.CREATED).body(this.service.save(course));

    }

    @PutMapping("assign-exams/{id}")
    public ResponseEntity<?> assignExams(@PathVariable Long id, @RequestBody List<ExamEntity> examEntityList){
        Optional<CourseEntity> optional = this.service.findById(id);
        if(optional.isEmpty()){
            return ResponseEntity.notFound().build();
        }
        CourseEntity course = optional.get();

        examEntityList.forEach(course::addExam);

        return ResponseEntity.status(HttpStatus.CREATED).body(this.service.save(course));
    }


}
