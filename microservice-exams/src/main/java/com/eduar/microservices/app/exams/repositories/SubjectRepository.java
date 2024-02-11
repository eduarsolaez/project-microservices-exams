package com.eduar.microservices.app.exams.repositories;

import com.eduar.microservices.commons.exams.entities.SubjectEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface SubjectRepository extends JpaRepository<SubjectEntity, Long> {
}
