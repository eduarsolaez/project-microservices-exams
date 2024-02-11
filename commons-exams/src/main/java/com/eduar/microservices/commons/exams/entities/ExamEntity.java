package com.eduar.microservices.commons.exams.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "exams")
public class ExamEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "create_at")
    private Date createAt;

    @OneToMany(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "exam"
    )
    @JsonIgnoreProperties(value = {"exam"}, allowSetters = true)
    private List<QuestionEntity> questions;

    @ManyToOne(fetch = FetchType.LAZY)
    @NotNull
    private SubjectEntity subject;

    public ExamEntity() {
        this.questions = new ArrayList<>();
    }

    @PrePersist
    public void prePersist(){
        this.createAt = new Date();
    }

    public SubjectEntity getSubject() {
        return subject;
    }

    public void setSubject(SubjectEntity subject) {
        this.subject = subject;
    }

    public List<QuestionEntity> getQuestions() {
        return questions;
    }

    public void setQuestions(List<QuestionEntity> questions) {
        this.questions.clear();
        questions.forEach(this::addQuestion);
    }

    public void addQuestion(QuestionEntity question) {
        this.questions.add(question);
        question.setExam(this);
    }

    public void removeQuestion(QuestionEntity question) {
        this.questions.remove(question);
        question.setExam(null);
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

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        } else if (!(obj instanceof ExamEntity)) {
            return false;
        } else {
            ExamEntity s = (ExamEntity) obj;
            return this.id != null && this.id.equals(s.getId());
        }
    }
}
