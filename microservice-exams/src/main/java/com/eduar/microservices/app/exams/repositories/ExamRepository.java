package com.eduar.microservices.app.exams.repositories;

import com.eduar.microservices.commons.exams.entities.ExamEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.List;

public interface ExamRepository extends JpaRepository<ExamEntity, Long> {

    @Query("select e from ExamEntity e where e.name like %?1%")
    public List<ExamEntity> findByName(String term);

}
