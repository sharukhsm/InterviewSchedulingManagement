package com.project.demo.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.view.document.AbstractXlsView;


import com.project.demo.model.InterviewResult;
import com.project.demo.model.feedback;

import com.project.demo.repository.interviewRepo;

@Service

public class interviewFeedbackService extends AbstractXlsView {
	@Autowired   
    interviewRepo interviewrepo;
       

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Iterable<InterviewResult> intvw = (Iterable<InterviewResult>) model.get("intvw");
        //THIS SHEET WITH TITLE NOT GETTING SHOWN
        Sheet sheet = (Sheet) workbook.createSheet("All Applications List");
        Row header = ((org.apache.poi.ss.usermodel.Sheet) sheet).createRow(0);
        header.createCell(0).setCellValue("ID");
        header.createCell(1).setCellValue("MARKS");
        header.createCell(2).setCellValue("TIME");
        header.createCell(3).setCellValue("RESULT");
        
        int rowNum = 1;
        for (InterviewResult la : intvw) {
            Row row = ((org.apache.poi.ss.usermodel.Sheet) sheet).createRow(rowNum++);
            row.createCell(0).setCellValue(la.getRequirementId());
            row.createCell(1).setCellValue(la.getMarks());
            row.createCell(2).setCellValue(la.getTimeOfJoining());
            row.createCell(3).setCellValue(la.getResult());
          
		
	}

}
	public  Iterable<InterviewResult> getAll()  {
		return interviewrepo.findAll();
	   }
}

	
		
	


