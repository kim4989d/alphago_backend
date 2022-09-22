package com.base.webapp.common.tray;

import java.util.Enumeration;

import org.springframework.web.multipart.MultipartHttpServletRequest;

public class RequestFileTrayFactory extends CommonTrayFactory {

	@Override
	protected Tray createTray(MultipartHttpServletRequest multipartrequest) {

		Tray tray = null;
		Enumeration namesEnum = null;
		String name = null;
		String[] values = null;

		tray = new RequestTray();
		namesEnum = multipartrequest.getParameterNames();
		while (namesEnum.hasMoreElements()) {
			name = (String) namesEnum.nextElement();
			values = multipartrequest.getParameterValues(name);
			tray.set(name, values);
		}
		return tray;
	}
}
