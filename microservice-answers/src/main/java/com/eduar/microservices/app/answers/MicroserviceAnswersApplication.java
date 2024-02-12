package com.eduar.microservices.app.answers;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan({"com.eduar.microservices.commons.students.entity",
        "com.eduar.microservices.app.answers.entities",
        "com.eduar.microservices.commons.exams.entities"})
public class MicroserviceAnswersApplication {

    public static void main(String[] args) {
        SpringApplication.run(MicroserviceAnswersApplication.class, args);
    }

}
