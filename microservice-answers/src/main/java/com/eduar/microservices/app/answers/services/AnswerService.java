package com.eduar.microservices.app.answers.services;

import com.eduar.microservices.app.answers.entities.AnswerEntity;
import com.eduar.microservices.app.answers.repositories.AnswerRepository;
import jakarta.persistence.Table;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AnswerService implements IAnswerService{

    @Autowired
    private AnswerRepository answerRepository;

    @Override
    @Transactional
    public Iterable<AnswerEntity> saveAll(Iterable<AnswerEntity> answers) {
        return answerRepository.saveAll(answers);
    }

    @Override
    @Transactional(readOnly = true)
    public Iterable<AnswerEntity> findAnswerByStudetByExam(Long studetId, Long examId) {
        return answerRepository.findAnswerByStudetByExam(studetId, examId);
    }

    @Override
    @Transactional(readOnly = true)
    public Iterable<Long> findExamsIdWithAnswersByStudent(Long studetId) {
        return answerRepository.findExamsIdWithAnswersByStudent(studetId);
    }
}
