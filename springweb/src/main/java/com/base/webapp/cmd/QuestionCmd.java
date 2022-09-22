package com.base.webapp.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.dao.BoardDao;
import com.base.webapp.dao.QuestionDao;


//name varchar(100),
//phone varchar(100),
//questionsubject varchar(100),
//questioncaseradio varchar(100),
//questionreply varchar(100),
//questionresult varchar(100)


public class QuestionCmd   extends CommandFactory{
	private static final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
	
	public QuestionCmd() {
	logger.info("QuestionCmd");

	setNextPage("QuestionCmd");
}
	
	@Override
	public ResultSetTray execute(Tray reqTray, HttpServletRequest request, HttpServletResponse response) {
		final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
			
		
		logger.info("do execute 실행 .");	
		
		ResultSetTray rsTray     = null;
		ResultSetTray checkoptiontray     = null;
		
		try {
			QuestionDao dao=new QuestionDao();
			rsTray=dao.QuestionList(getConnection(), reqTray);
		
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
	
