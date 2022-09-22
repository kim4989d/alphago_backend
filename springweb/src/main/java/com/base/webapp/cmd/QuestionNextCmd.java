package com.base.webapp.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.dao.QuestionDao;

public class QuestionNextCmd    extends CommandFactory{
	private static final Logger logger = LoggerFactory.getLogger(QuestionNextCmd.class);
	
	public QuestionNextCmd() {
	logger.info("QuestionNextCmd");

	setNextPage("QuestionNextCmd");
}
	
	
	
	
	@Override
	public ResultSetTray execute(Tray reqTray, HttpServletRequest request, HttpServletResponse response) {
		final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
			
		
		logger.info("do QuestionNextCmd 실행 .");	
		
		ResultSetTray rsTray     = null;
		ResultSetTray checkoptiontray     = null;
		
		try {
			QuestionDao dao=new QuestionDao();
			dao.QuestionAdminInsert(getConnection(), reqTray);
		
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
	
