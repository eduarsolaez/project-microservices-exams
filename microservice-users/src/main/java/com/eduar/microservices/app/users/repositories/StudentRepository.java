package com.eduar.microservices.app.users.repositories;

import com.eduar.microservices.commons.students.entity.StudentEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface StudentRepository extends JpaRepository<StudentEntity, Long> {

    @Query("select s from StudentEntity s where s.name LIKE %?1% or s.lastname LIKE %?1%")
    public List<StudentEntity> findByNameOrLastname(String name);

}
