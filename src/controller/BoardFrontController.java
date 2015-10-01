package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet(urlPatterns = { "/board","*.do" })
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("한글 Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("utf-8");
		String requestURI = request.getRequestURI();
		//요청 URI : /mvcBoard/board/list.do
		System.out.println("requestURI : "+ requestURI);
		
		String contextPath = request.getContextPath();
		// contextPath :  /mvcBoard 그래서 길이 수는 10.
		System.out.println("contextPath : "+contextPath);
		
		String com = requestURI.substring(contextPath.length());
		
		BoardCommand cmd=null;
		String nextPage=null;
		
		if(com.equals("/board/list.do")){
			cmd=new BoardListCommand();
			cmd.execute(request, response);
			nextPage="list.jsp";			
		}
		
		RequestDispatcher dis=request.getRequestDispatcher("/board/"+nextPage);
		dis.forward(request, response);
	}

	
	
	
}
