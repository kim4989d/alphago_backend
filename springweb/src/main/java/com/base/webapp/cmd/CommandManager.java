package com.base.webapp.cmd;

import java.util.HashMap;
import java.util.Map;



public class CommandManager {
	
	public static  Map getCommandMapping() {
		Map map = new HashMap();

		
		
		//=========================================== qnapool
		
		
		
		
		
		
		
		
		
		map.put("autocoding/autoindex","com.base.webapp.cmd.CommonCmd");
		
		
		
		
		
		map.put("question/questionmain",          "com.base.webapp.cmd.QuestionMainCmd");  
		map.put("question/questionmainnext",          "com.base.webapp.cmd.QuestionMainNextCmd");
		
		
		
		
		map.put("question/questionnext",          "com.base.webapp.cmd.QuestionNextCmd");  
		
		
		
		
		map.put("question/questionlogin",          "com.base.webapp.cmd.QuestionMainCmd");  
		map.put("question/questionresult",          "com.base.webapp.cmd.QuestionCmd");  
		

		
		//admin
		map.put("question/questionadmin",          "com.base.webapp.cmd.QuestionAdminCmd");  
		
		
		//===========================================
		
		
		
		
		
		//cmd
		
		map.put("test",          "com.base.webapp.cmd.TestCmd");  
		map.put("filelink",          "com.base.webapp.cmd.CommonCmd");  
		map.put("ajaxlink",          "com.base.webapp.cmd.CommonCmd");  
		
		
		

		//===========================================
		map.put("noticelist", "com.base.webapp.cmd.NoticeListCmd");
		map.put("noticeview", "com.base.webapp.cmd.NoticeViewCmd");
		map.put("noticeupdate", "com.base.webapp.cmd.NoticeUpdateCmd");
		map.put("noticeinsert", "com.base.webapp.cmd.NoticeInsertCmd");
		
		
		//===========================================
		
		//===========================================
		
		map.put("ckeditorlink", "com.base.webapp.cmd.CommonCmd");
		//===========================================
		
		
		
		
		//===========================================
		
		map.put("HTMLHOME","com.base.webapp.cmd.CommonCmd");       
		map.put("HTMLIntroduction","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLEditors","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLBasic","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLElements","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLAttributes","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLHeadings","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLParagraphs","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLStyles","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLFormatting","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLQuotations","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLComments","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLColors","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLCSS","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLLinks","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLImages","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLFavicon","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLTables","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLLists","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLBlock & Inline","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLClasses","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLId","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLIframes","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLJavaScript","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLFile Paths","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLHead","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLLayout","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLResponsive","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLComputercode","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLSemantics","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLStyle Guide","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLEntities","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLSymbols","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLEmojis","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLCharset","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLURLEncode","com.base.webapp.cmd.CommonCmd");
		map.put("HTMLvsXHTML","com.base.webapp.cmd.CommonCmd");
		
		
		///views/html/
		//===========================================
		
		return map;
	}
}