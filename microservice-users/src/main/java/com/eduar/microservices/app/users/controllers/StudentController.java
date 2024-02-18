package com.eduar.microservices.app.users.controllers;

import com.eduar.microservices.commons.students.entity.StudentEntity;
import com.eduar.microservices.app.users.services.IStudentService;
import com.eduar.microservices.commons.controllers.CommonController;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Optional;

@RestController
@RequestMapping("api/students")
//@CrossOrigin({"http://localhost:4200/"})
public class StudentController extends CommonController<StudentEntity, IStudentService> {

    @PutMapping("{id}")
    public ResponseEntity<?> update(@Valid @RequestBody StudentEntity student, BindingResult result, @PathVariable Long id){

        if (result.hasErrors()){
            return this.valid(result);
        }

        Optional<StudentEntity> optional = this.service.update(id, student);
        if(optional.isPresent()){
            return ResponseEntity.status(HttpStatus.CREATED).body(optional.orElseThrow());
        }
        return ResponseEntity.notFound().build();
    }

    @GetMapping("filter/{name}")
    public ResponseEntity<?> update(@PathVariable String name){
        return ResponseEntity.ok(this.service.findByNameOrLastname(name));
    }

    @GetMapping("upload/img/{id}")
    public ResponseEntity<?> uploadPhoto(@PathVariable Long id){
        Optional<StudentEntity> optional = this.service.findById(id);
        if (optional.isEmpty() || optional.get().getPhoto() == null){
            return ResponseEntity.notFound().build();
        }

        Resource image = new ByteArrayResource(optional.get().getPhoto());

        return ResponseEntity.ok()
                .contentType(MediaType.IMAGE_JPEG)
                .body(image);
    }

    @PostMapping("with-photo")
    public ResponseEntity<?> createWithPhoto(@Valid StudentEntity student, BindingResult result,
                                             @RequestParam MultipartFile archive) throws IOException {

        if (!archive.isEmpty()){
            student.setPhoto(archive.getBytes());
        }

        return super.create(student, result);
    }

    @PutMapping("update-with-photo/{id}")
    public ResponseEntity<?> updateWithPhoto(@Valid StudentEntity student, BindingResult result, @PathVariable Long id,
                                             @RequestParam MultipartFile archive) throws IOException {

        if (result.hasErrors()){
            return this.valid(result);
        }

        Optional<StudentEntity> optional = this.service.updateWithPhoto(id, student, archive);
        if(optional.isPresent()){

            return ResponseEntity.status(HttpStatus.CREATED).body(optional.orElseThrow());
        }
        return ResponseEntity.notFound().build();
    }
}
