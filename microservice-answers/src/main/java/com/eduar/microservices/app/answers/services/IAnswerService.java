package com.eduar.microservices.app.answers.services;

import com.eduar.microservices.app.answers.entities.AnswerEntity;

public interface IAnswerService {

    public Iterable<AnswerEntity> saveAll(Iterable<AnswerEntity> answers);

    public Iterable<AnswerEntity> findAnswerByStudetByExam(Long studetId, Long examId);

    public Iterable<Long> findExamsIdWithAnswersByStudent(Long studetId);

}
