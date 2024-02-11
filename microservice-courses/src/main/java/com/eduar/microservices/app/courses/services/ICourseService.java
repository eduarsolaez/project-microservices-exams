package com.eduar.microservices.app.courses.services;

import com.eduar.microservices.app.courses.entities.CourseEntity;
import com.eduar.microservices.commons.services.ICommonService;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

public interface ICourseService extends ICommonService<CourseEntity> {


    public Optional<CourseEntity> update(Long id, CourseEntity student);

    public CourseEntity findCourseByStudentId(Long id);

}
