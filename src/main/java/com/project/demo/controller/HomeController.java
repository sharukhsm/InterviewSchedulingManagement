package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class HomeController {
	
	
	@RequestMapping("/")
	public String homePage() {
		
		return "home";
	}
	
	@RequestMapping("/home")
	public String homePage1() {
		
		return "home";
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		
		return "loginSuccess";
	}
	
	@RequestMapping("/registerSuccess")
	public String registerSuccess() {
		
		return "registerSuccess";
	}
	
	
	
	
}
