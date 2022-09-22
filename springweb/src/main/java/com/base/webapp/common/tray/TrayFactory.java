package com.base.webapp.common.tray;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public abstract class TrayFactory {

	protected abstract Tray createTray(ResultSet resultSet);
	protected abstract Tray createTray(HttpServletRequest request);
	protected abstract Tray createTray(MultipartHttpServletRequest multipartrequest);
	
	
	
    public Tray getTray(ResultSet resultSet) {
        return createTray(resultSet);
    }

    public Tray getTray(HttpServletRequest request) {
        return createTray(request);
    }


    public Tray getTray(MultipartHttpServletRequest multipartrequest) {
        return createTray(multipartrequest);
    }

}
