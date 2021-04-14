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

import com.project.demo.model.Candidate;
import com.project.demo.model.feedback;
import com.project.demo.repository.feedbackRepo;

@Service
public class feedbackService extends AbstractXlsView{
	
    @Autowired   
    feedbackRepo feedbackrepo;
       

	@Override
	protected void buildExcelDocument(Map<String, Object> model, Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		Iterable<feedback> linkAppls = (Iterable<feedback>) model.get("linkAppls");
        //THIS SHEET WITH TITLE NOT GETTING SHOWN
        Sheet sheet = (Sheet) workbook.createSheet("All Applications List");
        Row header = ((org.apache.poi.ss.usermodel.Sheet) sheet).createRow(0);
        header.createCell(0).setCellValue("Service");
        header.createCell(1).setCellValue("Helpfullness");
        header.createCell(2).setCellValue("experience");
        
        int rowNum = 1;
        for (feedback la : linkAppls) {
            Row row = ((org.apache.poi.ss.usermodel.Sheet) sheet).createRow(rowNum++);
            row.createCell(0).setCellValue(la.getSpeedOfService());
            row.createCell(1).setCellValue(la.getHelpFullness());
            row.createCell(2).setCellValue(la.getExperience());
          
		
	}

}
	public  Iterable<feedback> findAll()  {
		return feedbackrepo.findAll();
	   }
}
