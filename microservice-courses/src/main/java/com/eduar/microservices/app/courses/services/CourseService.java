package com.eduar.microservices.app.courses.services;

import com.eduar.microservices.app.courses.clients.RequestFeignClient;
import com.eduar.microservices.app.courses.entities.CourseEntity;
import com.eduar.microservices.app.courses.repositories.CourseRepository;
import com.eduar.microservices.commons.services.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class CourseService extends CommonService<CourseEntity, CourseRepository> implements ICourseService{

    @Autowired
    private RequestFeignClient feignClient;

    @Override
    @Transactional
    public Optional<CourseEntity> update(Long id, CourseEntity course) {
        Optional<CourseEntity> optional = repository.findById(id);
        if(optional.isPresent()){
            course.setId(id);
            course.setCreateAt(optional.get().getCreateAt());
            return Optional.of(repository.save(course));
        }
        return optional;
    }

    @Override
    @Transactional(readOnly = true)
    public CourseEntity findCourseByStudentId(Long id) {
        return repository.findCourseByStudentId(id);
    }

    @Override
    public Iterable<Long> findExamsIdWithAnswersByStudent(Long studetId) {
        return feignClient.findExamsIdWithAnswersByStudent(studetId);
    }
}
