package com.eduar.microservices.app.courses;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan({"com.eduar.microservices.commons.students.entity",
        "com/eduar/microservices/app/courses/entities",
        "com.eduar.microservices.commons.exams.entities"})
public class MicroserviceCoursesApplication {

    public static void main(String[] args) {
        SpringApplication.run(MicroserviceCoursesApplication.class, args);
    }

}
