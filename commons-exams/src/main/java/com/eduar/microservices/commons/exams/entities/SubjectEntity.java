package com.eduar.microservices.commons.exams.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotEmpty;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "subjects")
public class SubjectEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty
    private String name;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnoreProperties(value = {"children"})
    private SubjectEntity father;

    @OneToMany(fetch = FetchType.LAZY,
            mappedBy = "father",
            cascade = CascadeType.ALL)
    @JsonIgnoreProperties(value = {"father"}, allowSetters = true)
    private List<SubjectEntity> children;

    @PrePersist
    public void prePersist(){
        this.children = new ArrayList<>();
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

    public SubjectEntity getFather() {
        return father;
    }

    public void setFather(SubjectEntity father) {
        this.father = father;
    }

    public List<SubjectEntity> getChildren() {
        return children;
    }

    public void setChildren(List<SubjectEntity> children) {
        this.children = children;
    }
}
