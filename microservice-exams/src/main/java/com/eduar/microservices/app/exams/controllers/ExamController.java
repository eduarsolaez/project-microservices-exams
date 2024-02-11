package com.eduar.microservices.app.exams.controllers;

import com.eduar.microservices.commons.exams.entities.ExamEntity;
import com.eduar.microservices.app.exams.services.IExamService;
import com.eduar.microservices.commons.controllers.CommonController;
import jakarta.persistence.GeneratedValue;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("api/exams")
public class ExamController extends CommonController<ExamEntity, IExamService> {

    @PutMapping("{id}")
    public ResponseEntity<?> update(@Valid @RequestBody ExamEntity examEntity, BindingResult result, @PathVariable Long id) {

        if (result.hasErrors()){
            return this.valid(result);
        }

        Optional<ExamEntity> optional = this.service.findById(id);

        if (optional.isEmpty()) {
            return ResponseEntity.notFound().build();
        }

        ExamEntity examDb = optional.get();
        examDb.setName(examEntity.getName());

//        List<QuestionEntity> questionsDeleted = new ArrayList<>();
//
//        examDb.getQuestions().forEach(qdb -> {
//            if(!examEntity.getQuestions().contains(qdb)){
//                questionsDeleted.add(qdb);
//            }
//        });
//
//        questionsDeleted.forEach(examDb::removeQuestion);

        examDb.getQuestions().stream().filter(qdb -> !examEntity.getQuestions().contains(qdb)).forEach(examDb::removeQuestion);

        examDb.setQuestions(examEntity.getQuestions());

        return ResponseEntity.status(HttpStatus.CREATED).body(this.service.save(examDb));
    }

    @GetMapping("filter/{term}")
    public ResponseEntity<?> filter(@PathVariable String term){
        return ResponseEntity.ok(this.service.findByName(term));
    }

    @GetMapping("subjects")
    public ResponseEntity<?> listAllSubjects(){
        return ResponseEntity.ok(this.service.findAllSubjects());
    }

}
