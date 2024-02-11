package com.eduar.microservices.app.exams;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan({"com.eduar.microservices.commons.exams.entities"})
public class MicroserviceExamsApplication {

    public static void main(String[] args) {
        SpringApplication.run(MicroserviceExamsApplication.class, args);
    }

}
