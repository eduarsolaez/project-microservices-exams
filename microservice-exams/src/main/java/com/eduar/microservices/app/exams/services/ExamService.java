package com.eduar.microservices.app.exams.services;

import com.eduar.microservices.app.exams.repositories.SubjectRepository;
import com.eduar.microservices.commons.exams.entities.ExamEntity;
import com.eduar.microservices.app.exams.repositories.ExamRepository;
import com.eduar.microservices.commons.exams.entities.SubjectEntity;
import com.eduar.microservices.commons.services.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ExamService extends CommonService<ExamEntity, ExamRepository> implements IExamService{

    @Autowired
    private SubjectRepository subjectRepository;

    @Override
    @Transactional(readOnly = true)
    public List<SubjectEntity> findAllSubjects() {
        return (List<SubjectEntity>) subjectRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public List<ExamEntity> findByName(String term) {
        return this.repository.findByName(term);
    }
}
