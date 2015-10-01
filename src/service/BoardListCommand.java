package service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardListCommand implements BoardCommand {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = BoardDAO.getInstance();
		ArrayList<BoardDTO> list = dao.list();
		request.setAttribute("list", list);
	}
}
