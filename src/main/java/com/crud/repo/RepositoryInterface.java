package com.crud.repo;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.crud.model.Student;

public interface RepositoryInterface extends JpaRepository<Student, Integer>{

}
