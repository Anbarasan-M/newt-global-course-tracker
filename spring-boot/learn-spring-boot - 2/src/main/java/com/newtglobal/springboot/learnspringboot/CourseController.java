package com.newtglobal.springboot.learnspringboot;

import java.util.Arrays;
import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CourseController {
	
	@RequestMapping("/courses")
	public List<Course> retrieveAllCourses(){
		return Arrays.asList(
				new Course(1, "AWS", "newtglobal"),
				new Course(2, "DevOps", "newtglobal"), 
				new Course(3, "Java", "newtglobal"),
				new Course(4, "Python", "newtglobal")
				);
	}

}
