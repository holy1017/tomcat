package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet( urlPatterns = { "/board","*.do" })
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doget(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String requestURI = request.getRequestURI();
		//요청 URI : /mvcBoard/board/list.do
		//system.out.println("requestURI : "+ requestURI);
		
		String contextPath = request.getContextPath();
		// contextPath :  /mvcBoard 그래서 길이 수는 10.
		//System.out.println("contextPath : "+contextPath);
		
		String com = requestURI.substring(contextPath.length());
	}

}
