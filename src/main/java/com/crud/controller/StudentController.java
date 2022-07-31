package com.crud.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.crud.model.Student;
import com.crud.service.StudentService;

import lombok.var;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService service;
	
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	//add Student Object
	@RequestMapping(value="/add-student",method=RequestMethod.POST)
	public String addStudent(HttpServletRequest request,Model model) {
		Student student=new Student(Integer.parseInt(request.getParameter("rollno")), request.getParameter("name"), request.getParameter("education"), Integer.parseInt(request.getParameter("age")));
		service.saveObject(student);
		return "home.jsp";
	}
	
	@RequestMapping(value = "delete/{rollno}")
	public ModelAndView deleteUsers(@PathVariable int rollno) {
		service.deletebyid(rollno);
		return new ModelAndView("redirect:/home.jsp");
	}
	
	
	@RequestMapping("/getStudents")
	public ModelAndView displayStudents() {
		System.out.println("inside display..");
		List<Student> studentlist=	service.getAllStudents();
		ModelAndView mv=new ModelAndView();
		mv.addObject("studentlist",studentlist);
		mv.setViewName("list.jsp");
		System.out.println("end of  display.."+studentlist);
		return mv;
	}

	@RequestMapping(value="/update",method=RequestMethod.GET)
	public ModelAndView updateform(HttpServletRequest request) {
		Student student=null;
		int rollno=Integer.parseInt(request.getParameter("rollno"));
		var val=service.findById(rollno);
		if(val.isPresent()) {
			student=val.get();
		}
		else {
			System.out.println("student not found");
		}
		ModelAndView mv=new ModelAndView();
		mv.addObject("student",student);
		mv.setViewName("updateStudent.jsp");
		return mv;
	}
	
	@RequestMapping(value="/updateStudent",method = RequestMethod.POST)
	public String updateStudent(HttpServletRequest request) {
		Student student=new Student();
		student.setRollno(Integer.parseInt(request.getParameter("rollno")));
		student.setName(request.getParameter("name"));
		student.setEducation(request.getParameter("education"));
		student.setAge(Integer.parseInt(request.getParameter("age")));
		service.saveObject(student);
		return "list.jsp";
	}
	
	
	
	

}
