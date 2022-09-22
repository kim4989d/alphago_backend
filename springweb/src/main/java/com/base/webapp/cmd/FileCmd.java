package com.base.webapp.cmd;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.dao.BoardDao;

public class FileCmd   extends CommandFactory{
	private static final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
	
	
public FileCmd() {
	logger.info("BoardCmd");

	setNextPage("/next/page/index.jsp");
}
	
	@Override
	public ResultSetTray execute(Tray reqFileTray, MultipartHttpServletRequest request, HttpServletResponse response) {
		final Logger logger = LoggerFactory.getLogger(BoardCmd.class);
			
		
		logger.info("do execute 실행 .");	
		
		ResultSetTray rsTray     = null;
		ResultSetTray checkoptiontray     = null;
		
		try {
			BoardDao dao = new BoardDao();
			rsTray=dao.BoardList(getConnection(), reqFileTray);
		
		for (int i = 0; i < rsTray.getRowCount(); i++) {
			
			logger.info("row:"+rsTray.get("userid",i)+"\n");
			
			//logger.info("row:"+rsTray.get(0));
		}
		
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
