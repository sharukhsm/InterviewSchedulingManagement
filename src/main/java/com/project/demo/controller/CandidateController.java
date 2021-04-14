package com.project.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Candidate;
import com.project.demo.repository.CandidateRepo;
import com.project.demo.service.candidateService;
import com.project.demo.service.hrAddService;
import com.project.demo.service.interviewService;


@Controller

public class CandidateController {
	@Autowired
	private CandidateRepo candrepo;
	@Autowired
	private candidateService cans;
	@Autowired
	private interviewService intrvws;
	@Autowired
	private hrAddService hraddservice;
	
	

	
	
	
	//redirect to  registration page for new registration
	
	@RequestMapping("/candidateRegistrationPage")
	public String candidateRegPage() {
		
		return "candidateRegistration";
	}
	@RequestMapping("/candidateLoginPage")
	public String candidateLoginPage() {
		
		return "candidateLogin";
	}
	
	//Login Validation, If user present in database then user can log in 
	@RequestMapping("/candidateLogin")
	public ModelAndView candidateLogin(@RequestParam String user_name , @RequestParam String password) {
		
		ModelAndView mv = new ModelAndView();
		Candidate candidate = candrepo.findById(Integer.parseInt(user_name)).orElse(null);
		
		if(candidate!=null) {
		if((candidate.getCandidateId()==Integer.parseInt(user_name)) &&(candidate.getPassword().equals(password)))
		{mv.addObject(candidate);
			mv.setViewName("candidateUi");
		}
		else {
			mv.setViewName("loginFailed");
		}		
	}
		return mv;
		
	}
	
	@RequestMapping("/getNotification")
	public String NotificationPage(ModelMap modelmap) {
		modelmap.put("candidates", hraddservice.getAll());
		return "jobNotifier";
	}
	
	
	@RequestMapping(value = "/candidateRegistration")
	public ModelAndView candidateRegistration(Candidate  candidate) {
		
		ModelAndView mv = new ModelAndView("registerSuccess");
		candrepo.save((candidate));
		mv.addObject(candidate);
		
		return mv;
	}
	@RequestMapping(value="/cand")
	public String CandidateDetailsIndex(ModelMap modelMap) {
		modelMap.put("candidates", cans.findAll());
		return "index";
	
} 
	@RequestMapping("/getNotificationInterview")

public String interviewDetails(ModelMap modelMap) {
	modelMap.put("interviews", intrvws.getAll());
	return "interviewResults";

	
}

}

