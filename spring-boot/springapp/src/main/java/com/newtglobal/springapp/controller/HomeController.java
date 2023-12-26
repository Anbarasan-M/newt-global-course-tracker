package com.newtglobal.springapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.newtglobal.springapp.dto.Alien;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

	@RequestMapping("/test")
	public String home() {
		return "index";
	}
	
	@RequestMapping("/add")
	public String add(@RequestParam("num1") int i, @RequestParam("num2") int j, HttpSession session) {
		int num3 = i+j;
		session.setAttribute("num3", num3);
		return "result";
	}
	
	@RequestMapping("/addAlien")
	public String addAlien(Alien a) {
		return "result";
	}
}
