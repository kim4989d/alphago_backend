package com.base.webapp;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.base.webapp.cmd.BaseCommand;
import com.base.webapp.cmd.CommandManager;
import com.base.webapp.cmd.ErrorCommand;
import com.base.webapp.common.session.AlphagoSessionManager;
import com.base.webapp.common.tray.RequestFileTrayFactory;
import com.base.webapp.common.tray.RequestTrayFactory;
import com.base.webapp.common.tray.ResultSetTray;
import com.base.webapp.common.tray.Tray;
import com.base.webapp.common.tray.TrayFactory;

public class BaseController implements ServletContextAware, ApplicationContextAware {
	public String nextpage;
	private static final String CURR_IMAGE_REPO_PATH = "/webshare/file/";
	public Tray tray = null;

	private static final Logger logger = LoggerFactory.getLogger(BaseController.class);

	public static String command_key = "init_key";
	@Autowired
	ServletContext context;

	BaseCommand command;
	ModelAndView model;

	private WebApplicationContext applicationcontext = null;

	public void setServletContext(ServletContext context) {
		this.context = context;
	}

	String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public void init() throws Exception {

		logger.info("init 시작 .");
		// CommandManager

		context.setAttribute(BaseController.command_key, CommandManager.getCommandMapping());

	}

	protected Tray getRequestTray(HttpServletRequest request) {
		TrayFactory requestFactory = null;
		Tray reqTray = null;

		requestFactory = new RequestTrayFactory();
		reqTray = requestFactory.getTray(request);

		// System.out.println("reqTray:"+reqTray.);
		request.setAttribute("reqTray", reqTray);

		logger.debug("\n======================================\n");
		logger.debug("\nRemoteAddr:" + request.getRemoteAddr() + '\n');
		logger.debug(reqTray.toString());

		return reqTray;
	}

	/*
	 * 신규 메소드 파일 처리에대한 모든것을 받는다
	 * 
	 */
	protected Tray getRequestFileTray(MultipartHttpServletRequest multipatrequest) {
		TrayFactory requestFactory = null;
		Tray reqTray = null;

		requestFactory = new RequestFileTrayFactory();
		reqTray = requestFactory.getTray(multipatrequest);

		// System.out.println("reqTray:"+reqTray.);
		multipatrequest.setAttribute("reqTray", reqTray);

		logger.debug("\n======================================\n");
		logger.debug("\nRemoteAddr:" + multipatrequest.getRemoteAddr() + '\n');
		logger.debug(reqTray.toString());

		return reqTray;
	}

	protected BaseCommand createCommand(String commandName) {
		BaseCommand command = null;
		ErrorCommand errorCommand = null;
		String exceptionType = null;
		String classFullPath = null;
		System.out.println("getCommand start");
		classFullPath = getCommand(commandName);
		System.out.println("classFullPath instance name:  " + classFullPath);
		if (classFullPath != null && classFullPath.length() > 0) {
			System.out.println("classFullPath " + classFullPath);
			try {
				command = (BaseCommand) Class.forName(classFullPath).newInstance();
				System.out.println("command " + command.toString());
			} catch (Exception e) {

				e.printStackTrace();

			}
		}

		if (command == null) {
			errorCommand = new ErrorCommand();
			errorCommand.setException(commandName, exceptionType, classFullPath);
			command = errorCommand;
		}

		return command;
	}

	private String getCommand(String commandName) {
		Map map = null;
		String command = null;

		map = (Map) context.getAttribute(command_key);
		command = (String) map.get(commandName);

		return command;
	}

	protected void forward(HttpServletRequest request, HttpServletResponse response, String nextPage)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		dispatcher = request.getRequestDispatcher(nextPage);
		dispatcher.forward(request, response);

	}

	protected void setNoCache(HttpServletRequest request, HttpServletResponse response) {
		if (request.getProtocol().compareTo("HTTP/1.0") == 0) {
			response.setHeader("Pragma", "no-cache");
		} else if (request.getProtocol().compareTo("HTTP/1.1") == 0) {
			response.setHeader("Cache-Control", "no-cache");
		}
		response.setDateHeader("Expires", 0);
	}

	public void cleanUp() throws Exception {
		System.out.println("Spring Container is destroy! Customer clean up");
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView DoGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, Exception {
		logger.info("Welcome home! The client locale is {}. get");

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		tray = getRequestTray(request);
		String formattedDate = dateFormat.format(date);

		HttpSession session = request.getSession(true);

		if ((session.getValue("islogin") != null) && (session.getValue("islogin").equals("Y"))) {
	

		
		} else {

//			command = createCommand(tray.get("cmd"));
//			ResultSetTray resulttray = command.execute(tray, request, response);
//			AlphagoSessionManager alphagosession=new AlphagoSessionManager ();
//			if(resulttray.getRowCount()==1) {
//				//내일 섹션처리 마저
//				alphagosession.initSession(request, resulttray);
//				
//			}
		}

		// logger.info("session is new !!");


	 model = DoWebService(request, response);

	return model;
	}

	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @return 
	 */
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ModelAndView DoPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, Exception {
		request.setCharacterEncoding("utf-8");
		
		logger.info("Welcome home! The POST locale is {}. post");
		//ModelAndView model = DoWebService(request, response);
		 model = DoWebService(request, response);
		return model;
	}

	
	
	
	public ModelAndView DoWebService(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, Exception {

		

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		String formattedDate = dateFormat.format(date);

		request.setAttribute("serverTime", formattedDate);
		tray = getRequestTray(request);
		return null;
	}

	@RequestMapping(value = "/rest")
	public ResultSetTray DoRestService(HttpServletRequest multipartrequest, HttpServletResponse response)
			throws ServletException, Exception {

		return null;
	}

	@RequestMapping(value = "/upload")
	public ModelAndView DoFileUpService(MultipartHttpServletRequest multipartrequest, HttpServletResponse response)
			throws ServletException, Exception {

		return null;
	}


	@RequestMapping(value = "/crawling")
	public ModelAndView CrawLingUpService(HttpServletRequest multipartrequest, HttpServletResponse response)
			throws ServletException, Exception {

		return null;
	}

	
	
	@ResponseBody
	@RequestMapping(value = "/ajaxupload", method = RequestMethod.POST)
	public String fileUpload(@RequestParam("article_file") List<MultipartFile> multipartFile,
			HttpServletRequest request) {

		String strResult = "{ \"result\":\"FAIL\" }";
		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
		String fileRoot;
		try {
			// 파일이 있을때 탄다.
			if (multipartFile.size() > 0 && !multipartFile.get(0).getOriginalFilename().equals("")) {

				for (MultipartFile file : multipartFile) {
					// fileRoot = contextRoot + "resources/upload/";

					fileRoot = CURR_IMAGE_REPO_PATH;

					System.out.println(fileRoot);

					String originalFileName = file.getOriginalFilename(); // 오리지날 파일명
					String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자
					// String savedFileName = UUID.randomUUID() + extension; //저장될 파일 명
					// String savedFileName = UUID.randomUUID() + extension; //저장될 파일 명

					String savedFileName = originalFileName;

					File targetFile = new File(fileRoot + savedFileName);
					try {
						InputStream fileStream = file.getInputStream();
						FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장

					} catch (Exception e) {
						// 파일삭제
						FileUtils.deleteQuietly(targetFile); // 저장된 현재 파일 삭제
						e.printStackTrace();
						break;
					}
				}
				strResult = "{ \"result\":\"OK\" }";
			}
			// 파일 아무것도 첨부 안했을때 탄다.(게시판일때, 업로드 없이 글을 등록하는경우)
			else
				strResult = "{ \"result\":\"OK\" }";
		} catch (Exception e) {
			e.printStackTrace();
		}

		return strResult;
	}

	@GetMapping("/download")
	public void download(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {

			tray = getRequestTray(request);
			String filename = tray.get("filename");

			File file = new File(CURR_IMAGE_REPO_PATH);
				
			logger.info("경로:"+CURR_IMAGE_REPO_PATH + filename);
			byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File(CURR_IMAGE_REPO_PATH + filename));

			response.setContentType("application/octet-stream");
			response.setContentLength(fileByte.length);
			response.setHeader("Content-Disposition",
					"attachment; fileName=\"" + URLEncoder.encode(filename, "UTF-8") + "\";");
			response.getOutputStream().write(fileByte);
			response.getOutputStream().flush();
			response.getOutputStream().close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<String> fileProcess(MultipartHttpServletRequest multipartRequest) throws Exception {
		List<String> fileList = new ArrayList<String>();
		Iterator<String> fileNames = multipartRequest.getFileNames();

		while (fileNames.hasNext()) {
			String fileName = fileNames.next();
			MultipartFile mFile = multipartRequest.getFile(fileName);
			String originalFileName = mFile.getOriginalFilename();
			fileList.add(originalFileName);
			File file = new File(CURR_IMAGE_REPO_PATH + fileName);
			if (mFile.getSize() != 0) {
				if (!file.exists()) {
					if (file.getParentFile().mkdir()) {
						file.createNewFile();
					}
				}

				mFile.transferTo(new File(CURR_IMAGE_REPO_PATH + originalFileName));
			}
		}
		return fileList;
	}

	public void DoDestory() {
		logger.info("destory==================================");

	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.applicationcontext = (WebApplicationContext) applicationContext;

	}

}
