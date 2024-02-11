package com.eduar.microservices.app.users.services;

import com.eduar.microservices.commons.students.entity.StudentEntity;
import com.eduar.microservices.commons.services.ICommonService;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.util.List;
import java.util.Optional;

public interface IStudentService extends ICommonService<StudentEntity>{

    public Optional<StudentEntity> update(Long id, StudentEntity studentEntity);

    public Optional<StudentEntity> updateWithPhoto(Long id, StudentEntity productEntity, MultipartFile archive) throws IOException;

    public List<StudentEntity> findByNameOrLastname(String name);

}
