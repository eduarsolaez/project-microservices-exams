package com.eduar.microservices.app.exams.services;

import com.eduar.microservices.commons.exams.entities.ExamEntity;
import com.eduar.microservices.commons.exams.entities.SubjectEntity;
import com.eduar.microservices.commons.services.CommonService;
import com.eduar.microservices.commons.services.ICommonService;

import java.util.List;

public interface IExamService extends ICommonService<ExamEntity> {

    public List<ExamEntity> findByName(String term);

    public List<SubjectEntity> findAllSubjects();

}
