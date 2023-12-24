package com.newtglobal.jpa.hibernate.demo.repository;

import static org.junit.Assert.assertNull;
import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.DirtiesContext;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.newtglobal.jpa.hibernate.demo.DemoApplication;
import com.newtglobal.jpa.hibernate.demo.entity.Course;

@ExtendWith(SpringExtension.class)
@SpringBootTest(classes=DemoApplication.class)
class CourseRepositoryTest {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	@Autowired
	CourseRepository repository;

	@Test
	public void findById_basics() {
		Course course = repository.findById(10001L);
		assertEquals("JPA in 50 steps", course.getName());
	}

	@Test
	@DirtiesContext
	//under suspicion
	public void deleteById_basics() {
		repository.deleteById(10002L);
		assertNull(repository.findById(10002L));
	}
	
	@Test
	@DirtiesContext
	public void save_basics() {
		// get a course
		Course course = repository.findById(10001L);
		assertEquals("JPA in 50 steps", course.getName());
		
		// update details 
		course.setName("JPA in 50 steps - updated");
		
		repository.save(course);

		// check the value
		Course course1 = repository.findById(10001L);
		assertEquals("JPA in 50 steps", course1.getName());
	}
		
}
