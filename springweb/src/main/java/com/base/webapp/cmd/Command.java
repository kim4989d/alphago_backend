package com.base.webapp.cmd;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;



public interface Command {
	
	
	ResultSetTray execute(Tray reqTray, HttpServletRequest request, HttpServletResponse response);
	ResultSetTray execute(Tray reqFileTray, MultipartHttpServletRequest request, HttpServletResponse response);
	
}
