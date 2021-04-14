package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Hr;
import com.project.demo.model.Hradd;
import com.project.demo.model.InterviewResult;
import com.project.demo.repository.HrRepo;
import com.project.demo.repository.HraddRepo;
import com.project.demo.service.interviewService;


@Controller
public class HrController {
	
	@Autowired
	HrRepo hrRepo;
	@Autowired
	HraddRepo hrAddRepo;
	@Autowired
	interviewService interviewservice;
	
	ModelAndView mv = new ModelAndView();
	
	//redirect to registration page for new registration
	@RequestMapping("/hrRegistrationPage")
	public String hrRegistrationPage() {
		
		return "hrRegistration";
	}
	
	//redirect to login
	@RequestMapping("/hrLoginPage")
	public String hrLoginPage() {
		
		return "hrLogin";
	}
	
	//Login Validation, If user present in database then user can log in 
	@RequestMapping("/hrLogin")
	public ModelAndView hrLogin(@RequestParam String user_name , @RequestParam String password  ) {
		
		
		Hr hr = hrRepo.findById(Integer.parseInt(user_name)).orElse(null);
		//emp_repo.save(employee);
		 if(hr!=null) {
		if(hr.gethrId()==Integer.parseInt(user_name) && hr.getPassword().equals(password))
		{
			mv.addObject(hr);
			mv.setViewName("hrUi");
			
		}
		else {
			mv.setViewName("loginFailed");	
		}	
		}return mv;
	}
	
	
	@RequestMapping(value = "/hrRegistration")
	public ModelAndView hrRegistration(Hr  hr) {
		
		ModelAndView mv = new ModelAndView("registerSuccess");
		hrRepo.save(hr);
		mv.addObject(hr);
		
		return mv;
	}
	@RequestMapping("/hrAddJobPage")
	public String hrPage() {
		
		return "hrAdd";
	}
	@RequestMapping(value="/hrAddJob")
	public ModelAndView addJob(Hradd h) {
		h.modeof(h.getExperience());
		ModelAndView mv = new ModelAndView("registerSuccess");
		mv.addObject(h);
		hrAddRepo.save(h);
		
		
		return mv;
	}
	@RequestMapping(value="/interviewObservation")
			
	 public String interviewObservation() {
		
		return "interviewObservationPage";
	}
	
	@RequestMapping("/interviewResult")
	public ModelAndView interviewResults(InterviewResult interviewresult) {
		ModelAndView mv = new ModelAndView("registerSuccess");
		interviewservice.saveDetails(interviewresult);
		mv.addObject(interviewresult);
		return mv;
		
	}
	
	
}
