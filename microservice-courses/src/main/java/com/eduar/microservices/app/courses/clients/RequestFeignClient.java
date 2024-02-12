package com.eduar.microservices.app.courses.clients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@FeignClient(name = "microservice-answers")
public interface RequestFeignClient {

    @GetMapping("api/answers/student/{studetId}/exams-answered")
    public Iterable<Long> findExamsIdWithAnswersByStudent(@PathVariable Long studetId);

}
