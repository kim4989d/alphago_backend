package com.base.webapp.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.dao.LoginDao;

public class LoginCmd extends CommandFactory{
	private static final Logger logger = LoggerFactory.getLogger(LoginCmd.class);
	
	
public LoginCmd() {
	logger.info(this.getClass().getName());

	
}
	
	@Override
	public ResultSetTray execute(Tray reqTray, HttpServletRequest request, HttpServletResponse response) {
		final Logger logger = LoggerFactory.getLogger(LoginCmd.class);
			
		
		logger.info("do execute 실행 .");	
		
		ResultSetTray rsTray     = null;
		ResultSetTray checkoptiontray     = null;
		
		try {
			LoginDao dao = new LoginDao();
			rsTray=dao.SelectLogin(getConnection(), reqTray);
		
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

