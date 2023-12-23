package com.newtglobal.database.databsedemo;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.newtglobal.database.databsedemo.jdbc.Person;
import com.newtglobal.database.jpa.PersonJpaRepository;

@ComponentScan(basePackages = "com.newtglobal.database.jpa")
@SpringBootApplication
public class JpaDemoApplication2 implements CommandLineRunner{
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
//	@Autowired
//	PersonJdbcDAO dao;
	
	@Autowired
	PersonJpaRepository personJpaRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(JpaDemoApplication2.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		logger.info("All users -> {}", personJpaRepository.findAll());
		logger.info("User id 10001 -> {}", personJpaRepository.findById(1001));
//		logger.info("Deleting 1002 -> No of rows deleted - {}", personJpaRepository.deleteById(1002));
		logger.info("Inserting 1004 -> - {}", personJpaRepository.insert(new Person(1004, "Tara", "Villupuram", new Date())));
		personJpaRepository.deleteById(1002);

	}

}
