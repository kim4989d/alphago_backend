package com.base.webapp.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.dao.QuestionDao;

public class QuestionMainNextCmd    extends CommandFactory{
	private static final Logger logger = LoggerFactory.getLogger(QuestionNextCmd.class);
	
	public QuestionMainNextCmd() {
	logger.info("QuestionMainNextCmd");

	setNextPage("QuestionMainNextCmd");
}
	
	
	
	
	@Override
	public ResultSetTray execute(Tray reqTray, HttpServletRequest request, HttpServletResponse response) {
		final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
			
		
		logger.info("do QuestionMainNextCmd 실행 .");	
		
		ResultSetTray rsTray     = null;
		ResultSetTray checkoptiontray     = null;
		
		try {
			QuestionDao dao=new QuestionDao();
			
			String reqvalue="";
			logger.info("questionid_1:"+reqTray.get("questionid_1"));
			logger.info("questionid_2"+reqTray.get("questionid_2"));
			logger.info("questionid_3:"+reqTray.get("questionid_3"));
		
			logger.info("questionname:"+reqTray.get("questionname"));
			logger.info("questionphone:"+reqTray.get("questionphone"));
			
			
			
			
			for(int i=1;i<=20;i++) {
				reqvalue+=reqTray.get("questionid_"+i)+"/";
				
			}
			
			
			
			
			
			reqTray.set("questionreply", reqvalue);
			
			
			
			
			
			dao.QuestionMainInsert(getConnection(), reqTray);
		
		} catch (Exception ex) {
				ex.printStackTrace();
			}
		finally{
			request.setAttribute("rsTray", rsTray);			
		}
		
		// TODO Auto-generated method stub
		return rsTray;
	}

	
	
	
}
	
