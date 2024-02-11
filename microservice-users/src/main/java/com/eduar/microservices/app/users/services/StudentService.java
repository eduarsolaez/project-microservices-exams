package com.eduar.microservices.app.users.services;

import com.eduar.microservices.commons.students.entity.StudentEntity;
import com.eduar.microservices.app.users.repositories.StudentRepository;
import com.eduar.microservices.commons.services.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Service
public class StudentService extends CommonService<StudentEntity, StudentRepository> implements IStudentService{

    @Override
    @Transactional
    public Optional<StudentEntity> update(Long id, StudentEntity student) {
        Optional<StudentEntity> optional = repository.findById(id);
        if(optional.isPresent()){
            student.setId(id);
            student.setCreateAt(optional.get().getCreateAt());
            return Optional.of(repository.save(student));
        }
        return optional;
    }

    @Override
    public Optional<StudentEntity> updateWithPhoto(Long id, StudentEntity student, MultipartFile archive) throws IOException {
        Optional<StudentEntity> optional = repository.findById(id);
        if(optional.isPresent()){
            student.setId(id);
            student.setCreateAt(optional.get().getCreateAt());
            if (!archive.isEmpty()){
                student.setPhoto(archive.getBytes());
            }
            return Optional.of(repository.save(student));
        }
        return optional;
    }

    @Override
    @Transactional(readOnly = true)
    public List<StudentEntity> findByNameOrLastname(String name) {
        return repository.findByNameOrLastname(name);
    }
}
