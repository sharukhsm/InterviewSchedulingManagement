package com.project.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.demo.model.InterviewResult;
import com.project.demo.repository.interviewRepo;
@Transactional
@Service

public class interviewServiceImpl implements interviewService {
	@Autowired
	private interviewRepo interviewrepo;
	public void saveDetails(InterviewResult interviewresult) {
		 
		
			int marks=Integer.parseInt(interviewresult.getMarks());
			String ranks=interviewresult.getRanks();
			if(marks<50)		{
				interviewresult.setResult("Rejected");interviewrepo.save(interviewresult);
				
				}
			
			
			else if((marks>=50 && marks<70) && (ranks.equals("R2,R3")))
			{
				interviewresult.setResult("Rejected");interviewrepo.save(interviewresult);
				
			}
			else if((marks>=50 && marks<70) && (ranks.equals("R1")))
			{
				interviewresult.setResult("Selected");interviewrepo.save(interviewresult);
				
	
			}
			else if((marks>=70 && marks<80) && (ranks.equals("R1,R2"))) {
			
				interviewresult.setResult("Selected");interviewrepo.save(interviewresult);
			
	
			}
			else if((marks<80 &&marks>=70) && (ranks.equals("R3"))) {
	
				interviewresult.setResult("Selected");interviewrepo.save(interviewresult);
				
				

		}
			else if(marks>80)
			{	interviewresult.setResult("Selected");interviewrepo.save(interviewresult);
		
			
			}
			else {
				interviewresult.setResult("Invalid");interviewrepo.save(interviewresult);
				
			}
		
	
		
		
		
	}
	public   Iterable<InterviewResult> getAll() {
		return interviewrepo.findAll();
	}

	

}
