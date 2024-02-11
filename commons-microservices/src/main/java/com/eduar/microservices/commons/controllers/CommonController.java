package com.eduar.microservices.commons.controllers;


import com.eduar.microservices.commons.services.ICommonService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class CommonController<E, S extends ICommonService<E>> {

    @Autowired
    protected S service;

    @GetMapping
    public ResponseEntity<?> list(){
        return ResponseEntity.status(200).body(service.findAll());
    }

    @GetMapping("pageable")
    public ResponseEntity<?> list(Pageable pageable){
        return ResponseEntity.status(200).body(service.findAll(pageable));
    }

    @GetMapping("{id}")
    public ResponseEntity<?> listOne(@PathVariable Long id){

        Optional<E> optional = service.findById(id);
        if(optional.isPresent()){
            return ResponseEntity.status(200).body(optional.orElseThrow());
        }

        return ResponseEntity.notFound().build();
    }

    @PostMapping
    public ResponseEntity<?> create(@Valid @RequestBody E entity, BindingResult result){

        if (result.hasErrors()){
            return this.valid(result);
        }

        E entityDb = service.save(entity);
        return ResponseEntity.status(HttpStatus.CREATED).body(entityDb);
    }


    @DeleteMapping("{id}")
    public ResponseEntity<?> delete(@PathVariable Long id){
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }

    protected ResponseEntity<?> valid(BindingResult result){
        Map<String, Object> errors = new HashMap<>();

        result.getFieldErrors().forEach(e -> {
            errors.put(e.getField(), e.getDefaultMessage());
        });

        return ResponseEntity.badRequest().body(errors);
    }


}
