package com.base.webapp.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.dao.TestDao;

public class TestCmd extends CommandFactory{
	private static final Logger logger = LoggerFactory.getLogger(TestCmd.class);
	
	
public TestCmd() {
	logger.info("BoardCmd");

	setNextPage("test");
}
	
	@Override
	public ResultSetTray execute(Tray reqTray, HttpServletRequest request, HttpServletResponse response) {
		final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
			
		
		logger.info("do execute 실행 .");	
		
		ResultSetTray rsTray     = null;
		ResultSetTray checkoptiontray     = null;
		
		try {
			/*
			 * TestDao dao = new TestDao(); rsTray=dao.List(getConnection(), reqTray);
			 * 
			 * for (int i = 0; i < rsTray.getRowCount(); i++) {
			 * 
			 * logger.info("row:"+rsTray.get("userid",i)+"\n");
			 * 
			 * logger.info("row:"+rsTray.get("passwd",i)+"\n"); }
			 */
		
		} catch (Exception ex) {
				ex.printStackTrace();
			}
		finally{
			//request.setAttribute("rsTray", rsTray);			
		}
		
		// TODO Auto-generated method stub
		return rsTray;
	}

	
	
	
}
