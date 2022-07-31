package com.crud.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crud.model.Student;
import com.crud.repo.RepositoryInterface;

@Service
public class StudentService {

	@Autowired
	private RepositoryInterface ob;

	public List<Student> getAllStudents() {
		return ob.findAll();
	}

	public Optional<Student> findById(int id) {
		return ob.findById(id);
	}

	public Student saveObject(Student student) {
		return ob.save(student);
	}
	

	public void deletebyid(int id) {
		ob.deleteById(id);
	}

}
