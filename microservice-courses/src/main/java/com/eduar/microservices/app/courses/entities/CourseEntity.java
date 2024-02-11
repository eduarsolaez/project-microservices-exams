package com.eduar.microservices.app.courses.entities;

import com.eduar.microservices.commons.exams.entities.ExamEntity;
import com.eduar.microservices.commons.students.entity.StudentEntity;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "courses")
public class CourseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @Column(name = "create_at")
    private Date createAt;

    @OneToMany(fetch = FetchType.LAZY)
    private List<StudentEntity> studentEntityList;

    @ManyToMany(fetch = FetchType.LAZY)
    private List<ExamEntity> exams;


    @PrePersist
    public void prePersist(){
        this.createAt = new Date();
    }

    public CourseEntity() {
        this.studentEntityList = new ArrayList<>();
        this.exams = new ArrayList<>();
    }

    public void addStudentEntity(StudentEntity studentEntity) {
        this.studentEntityList.add(studentEntity);
    }

    public void removeStudentEntity(StudentEntity studentEntity) {
        this.studentEntityList.remove(studentEntity);
    }

    public List<StudentEntity> getStudentEntityList() {
        return studentEntityList;
    }

    public void setStudentEntityList(List<StudentEntity> studentEntityList) {
        this.studentEntityList = studentEntityList;
    }

    public List<ExamEntity> getExams() {
        return exams;
    }

    public void setExams(List<ExamEntity> exams) {
        this.exams = exams;
    }

    public void addExam(ExamEntity exam) {
        this.exams.add(exam);
    }

    public void removeExam(ExamEntity exam) {
        this.exams.remove(exam);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }
}
