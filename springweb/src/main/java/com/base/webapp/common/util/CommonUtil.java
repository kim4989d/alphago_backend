package com.base.webapp.common.util;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

public class CommonUtil {
	private String txtsearch = "";
	private String button = "";
	
	
	
	
		
	public static String  IsNull(HttpServletRequest request,String name) {
			
		String value=null;
		if(request.getParameter(name) !=null) {
			value=	request.getParameter(name);
		}
		return value;
		
	}

	
	
	public static String QuestionRadio(String questionid,String radiovalue) {

		StringBuffer bu = new StringBuffer();
		StringTokenizer token = new StringTokenizer(radiovalue, "/");
		int caseinit = 0;

		System.out.println("token:"+token.countTokens());
		//case 4 17question 
		if (token.countTokens() != 1) {

			while (token.hasMoreElements()) {
					String 	tokenvalue=token.nextElement().toString();
	bu.append("<input type=radio name=questionid_" + questionid+ " value="+tokenvalue+">");
				bu.append(tokenvalue);

			}
			System.out.println("questionid:"+bu.toString());
		}else {
		//case 4 17question  18,19,20 서술형 문제	
			bu.append("<textarea rows=5 cols=20 style=width:100% name=questionid_" + questionid+"></textarea>");
			
		}

		return bu.toString();

	}

}
