package com.project.demo.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.demo.model.Admin;
import com.project.demo.model.Candidate;
import com.project.demo.model.adminInterviewMode;
import com.project.demo.model.feedback;
import com.project.demo.repository.AdminRepo;
import com.project.demo.repository.feedbackRepo;
import com.project.demo.service.feedbackService;
import com.project.demo.service.interviewFeedbackService;
import com.project.demo.service.intvwModeService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminRepo adminRepo;
	@Autowired
	private feedbackRepo feeddbackrepo;
	@Autowired
	private intvwModeService intvws;
	
	 private static final String EXCEL_FILE_NAME = "applications.xls";
	 @Autowired
	 feedbackService feedbackService;
	 @Autowired
	 interviewFeedbackService interviewfeedbackservice;

	Admin admin;
	ModelAndView mv = new ModelAndView();
	//redirect to admin registration page for new registration
	
	@RequestMapping("/adminLoginPage")
	public String adminLoginPage() {
		
		return "adminLogin";
	}
	
	//Login Validation, If user present in database then user can log in 
	@RequestMapping("/adminLogin")
	public ModelAndView adminLogin(@RequestParam String user_name , @RequestParam String password) {
		 Admin admin=adminRepo.findById(Integer.parseInt(user_name)).orElse(null);
		 if(admin!=null) {
		if(admin.getAdminId()==Integer.parseInt(user_name) && admin.getPassword().equals(password))
		{mv.addObject(admin);
			mv.setViewName("adminUi");
			
		}
		else {
			mv.setViewName("loginFailed");		
		}
		 }
		return mv;
	}
	@RequestMapping("/adminNotifyPage")
	public String adminNotifyPage() {
		
		return "adminNotify";
	}
	@RequestMapping("/sendFeedbackForm")
	public String adminFeedBack() {
		
		return "feedBackForm";
	}
	@RequestMapping("/feedBackFormSubmit")
		public ModelAndView feedbackForms(feedback feedBack) {
			
			ModelAndView mv = new ModelAndView("registerSuccess");
			feeddbackrepo.save(feedBack);
			
			mv.addObject(feedBack);
			
			return mv;
		}
	 @RequestMapping("/generateFeedBackReport")
	    public ModelAndView showPage() {
	        return new ModelAndView("applications", "linkAppls", feedbackService.findAll());
	    }
	 @RequestMapping("/download")
	    public ModelAndView download(HttpServletResponse response) {
	        response.setHeader("Content-disposition", "attachment; filename=" + EXCEL_FILE_NAME);
	        return new ModelAndView("applications", "linkAppls", feedbackService.findAll());
	    }
	 @RequestMapping("/generateInterviewReport")
	    public ModelAndView showPges() {
	        return new ModelAndView("interviewreports", "intvw", interviewfeedbackservice.getAll());
	    }
	 @RequestMapping("/downloadReport")
	    public ModelAndView downloads(HttpServletResponse response) {
	        response.setHeader("Content-disposition", "attachment; filename=" + EXCEL_FILE_NAME);
	        return new ModelAndView("interviewreports", "intvw", interviewfeedbackservice.getAll());
	    }
	 
	 @RequestMapping("/modeOfInterviews")
		public String Modeofinterview() {
			
			return "intrvwMode";
		}
	 @RequestMapping("/InterviewModesAdmin")
		 public ModelAndView InterviewModeAdmin(adminInterviewMode intvwmode) {
				
				ModelAndView mv = new ModelAndView("registerSuccess");
				intvws.saveMode(intvwmode);
				
				mv.addObject(intvwmode);
				
				return mv;
	 }

	}
	
	
	
	
	
	
	

