package com.base.webapp.common.tray;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public abstract class CommonTrayFactory extends TrayFactory{

	@Override
	protected Tray createTray(ResultSet resultSet) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Tray createTray(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Tray createTray(MultipartHttpServletRequest multipartrequest) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}
