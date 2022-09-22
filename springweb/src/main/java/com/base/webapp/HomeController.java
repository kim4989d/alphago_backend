package com.base.webapp;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.base.webapp.cmd.BaseCommand;
import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;

/**
 * Handles requests for the application home page.
 */

@Controller
public class HomeController extends BaseController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	Tray reqtray;
	Tray reqfiletray;
	BaseCommand command;

	/* restful */
	@Override
	@ResponseBody
	public ResultSetTray DoRestService(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		System.out.println("BoardServlet doService() start");
		reqtray = getRequestTray(request);
		command = createCommand(reqtray.getString("cmd"));

		System.out.println("execute start");
		ResultSetTray tray = command.execute(reqtray, request, response);
		// command.endCommand();
		nextpage = command.getNextPage();

		logger.info("test");

		return tray;

	}

	@Override

	public ModelAndView DoFileUpService(MultipartHttpServletRequest multipartrequest, HttpServletResponse response)
			throws ServletException, Exception {

		multipartrequest.setCharacterEncoding("utf-8");
		ModelAndView model = new ModelAndView();
		reqfiletray = getRequestFileTray(multipartrequest);
		// command = createCommand(reqtray.getString("cmd"));

		System.out.println("execute start");
		// ResultSetTray tray = command.execute(reqtray, multipartrequest, response);

		// nextpage = command.getNextPage();

		model.setViewName("uploadresult");

		List filelist = fileProcess(multipartrequest);

		model.addObject("filelist", filelist);
		return model;
	}

	@Override
	public ModelAndView DoWebService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, Exception {
		// TODO Auto-generated method stub
		System.out.println("DoWebService DoWebService() start");

		reqtray = getRequestTray(request);

		command = createCommand(reqtray.getString("cmd"));
		ModelAndView model = new ModelAndView();
		System.out.println("execute web start");
		ResultSetTray tray = command.execute(reqtray, request, response);
		// command.endCommand();
		nextpage = command.getNextPage();
		// 폐이지 cmd 연결
//		model.setViewName("html/"+reqtray.getString("cmd"));
		model.setViewName(reqtray.getString("cmd"));

		//model.addObject("tray", tray);
		request.setAttribute("tray1", tray);
		
		// model.setv
		logger.info("test");

		System.out.println("DoWebService DoWebService() start");

		return model;
	}

}
