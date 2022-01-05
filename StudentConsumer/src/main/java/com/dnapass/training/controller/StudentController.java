package com.dnapass.training.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;


import com.dnapass.training.entity.Student;

import com.dnapass.training.repo.StudentRepository;

@RestController
public class StudentController {
	
	
	    @Autowired
		StudentRepository studentRepository;
		
	
	
	    @PostMapping("/students")
		public Student saveAccount(@RequestBody Student student) {
			return studentRepository.save(student);
		}
	 
	 
		
		@GetMapping("/students")
		public List<Student>getStudents(){
			return studentRepository.findAll();
			
		}
		
		@GetMapping("/student/{id}")
		public Student getById(@PathVariable Integer id) {
			Optional<Student> opt =studentRepository.findById(id);
			Student student=opt.get();
			return student;
		}
		
		@PostMapping("/updateStudent")
	    public Student updateStudent(@RequestBody Student student) {
	        return studentRepository.save(student);
	        
	    }

	 

	    @GetMapping("/deleteStudent/{id}")
	    public void deleteStudent(@PathVariable int id) {
	        studentRepository.deleteById(id);
	        
	    }


}
