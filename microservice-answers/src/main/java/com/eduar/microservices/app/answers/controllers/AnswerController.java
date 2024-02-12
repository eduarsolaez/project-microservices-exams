package com.eduar.microservices.app.answers.controllers;

import com.eduar.microservices.app.answers.entities.AnswerEntity;
import com.eduar.microservices.app.answers.services.IAnswerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("api/answers")
public class AnswerController {

    @Autowired
    private IAnswerService answerService;

    @PostMapping
    public ResponseEntity<?> create(@RequestBody Iterable<AnswerEntity> answers){
        return ResponseEntity.status(HttpStatus.CREATED).body(answerService.saveAll(answers));
    }

    @GetMapping("student/{studetId}/exam/{examId}")
    public ResponseEntity<?> findAnswerByStudetByExam(@PathVariable Long studetId, @PathVariable Long examId){
        return ResponseEntity.ok(answerService.findAnswerByStudetByExam(studetId, examId));
    }

    @GetMapping("student/{studetId}/exams-answered")
    public ResponseEntity<?> findExamsIdWithAnswersByStudent(@PathVariable Long studetId){
        return ResponseEntity.ok(answerService.findExamsIdWithAnswersByStudent(studetId));
    }

}
