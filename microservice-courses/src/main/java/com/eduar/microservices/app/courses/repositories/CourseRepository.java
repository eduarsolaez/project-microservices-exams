package com.eduar.microservices.app.courses.repositories;

import com.eduar.microservices.app.courses.entities.CourseEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface CourseRepository extends JpaRepository<CourseEntity, Long> {

    @Query("select c from CourseEntity c join fetch c.studentEntityList s where s.id = ?1")
    public CourseEntity findCourseByStudentId(Long id);

}
