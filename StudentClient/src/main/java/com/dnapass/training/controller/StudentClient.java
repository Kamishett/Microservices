package com.dnapass.training.controller;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dnapass.training.model.Student;

@FeignClient(value = "STUDENT-CONSUMER", url = "http://localhost:3001/")
public interface StudentClient {

	@GetMapping("/students")
	public List<Student> getStudents();

	@GetMapping("/student/{id}")
	public Student findById(@PathVariable Integer id);

	@PostMapping("/students")
	public Student storeAccount(@RequestBody Student student);

	@RequestMapping(method = RequestMethod.POST, value = "/updateStudent")
	public Student updateStudent(@RequestBody Student student);

	@GetMapping("/deleteStudent/{id}")
	public void deleteStudent(@PathVariable int id);

}
