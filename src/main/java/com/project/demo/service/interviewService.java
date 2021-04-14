package com.project.demo.service;

import com.project.demo.model.Candidate;
import com.project.demo.model.InterviewResult;

public interface interviewService {
	public void saveDetails(InterviewResult interviewresult);
	public   Iterable<InterviewResult> getAll() ;

}
