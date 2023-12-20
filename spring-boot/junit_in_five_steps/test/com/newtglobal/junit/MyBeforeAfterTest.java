package com.newtglobal.junit;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class MyBeforeAfterTest {
	
	
	@BeforeAll
	static void beforeall() {
		System.out.println("BeforeEach");
	}
	
	@BeforeEach
	void beforeEach() {
		System.out.println("BeforeEach");
	}
	

	@Test
	void test1() {
		System.out.println("test1");
	}
	
	@Test
	void test2() {
		System.out.println("test2");
	}
	
	@Test
	void test3() {
		System.out.println("test3");
	}
	

	@AfterEach
	void afterEach() {
		System.out.println("BeforeEach");
	}
	
	@AfterAll
	static void afterAll() {
		System.out.println("BeforeEach");
	}

}
