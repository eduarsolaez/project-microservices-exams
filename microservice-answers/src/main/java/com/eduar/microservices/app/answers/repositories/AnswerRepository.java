package com.eduar.microservices.app.answers.repositories;

import com.eduar.microservices.app.answers.entities.AnswerEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AnswerRepository extends JpaRepository<AnswerEntity, Long> {

    @Query("select a from AnswerEntity a join fetch " +
            "a.student s join fetch a.question q join fetch q.exam e " +
            "where s.id = ?1 and e.id = ?2")
    public Iterable<AnswerEntity> findAnswerByStudetByExam(Long studetId, Long examId);

    @Query("select e.id from AnswerEntity a join a.student s join a.question q join q.exam e where s.id = ?1 group by e.id")
    public Iterable<Long> findExamsIdWithAnswersByStudent(Long studetId);

}
