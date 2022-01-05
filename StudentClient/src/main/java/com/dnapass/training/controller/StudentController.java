package com.dnapass.training.controller;

import java.util.List;
import java.util.Random;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dnapass.training.model.Student;

@Controller
//@RequestMapping("/account")
public class StudentController {

	@Autowired
	StudentClient studentClient;

	@GetMapping("/")
	public String home(ModelMap map) {
		Student student = new Student();
		map.addAttribute("student", student);
		return "index";
	}

	@GetMapping("/studentList")
	public String allAccounts(ModelMap map) {
		List<Student> student = studentClient.getStudents();

		map.addAttribute("studentList", student);
		return "studentList";
	}

	@GetMapping("/studentDetails/{id}")
	public String getById(@PathVariable Integer id, ModelMap map) {
		Student student = studentClient.findById(id);
		map.addAttribute("student", student);
		return "studentDetails";
	}

	@PostMapping("/save")
	public String saveAccount(@Valid @ModelAttribute("student") Student student, BindingResult result) {
		String responsePage = "";
		if (result.hasErrors()) {
			responsePage = "index";
		} else {
			Random r = new Random();
			int id = r.nextInt(99999) + 10000;
			student.setStudentId(id);
			Student student1 = studentClient.storeAccount(student);
			responsePage = "redirect:/studentList";
		}
		return responsePage;
	}

	@RequestMapping(value = "/updateStudent/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateStudent(@PathVariable("id") int id, ModelMap map) {
		System.out.println("inside studentClient putMapping method");
		Student student2 = studentClient.findById(id);
		map.addAttribute("student", student2);

		return "updateStudent";
	}

	@RequestMapping(value = "/deleteStudent/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String deleteStudent(@PathVariable("id") int id) {
		studentClient.deleteStudent(id);
		return "redirect:/studentList";
	}

	@PostMapping("/update")
	public String updateStudent(@Valid @ModelAttribute("student") Student student, BindingResult result) {
		System.out.println("inside client in controller");
		String responsePage = "";
		if (result.hasErrors()) {
			responsePage = "updateStudent";
		} else {

			Student acc = studentClient.updateStudent(student);
			responsePage = "redirect:/studentList";
		}
		return responsePage;
	}

}
