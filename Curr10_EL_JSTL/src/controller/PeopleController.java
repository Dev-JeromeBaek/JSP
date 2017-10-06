package controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.PeopleDAO;
import dto.PeopleDTO;
import module.jdbcConnector;

@WebServlet("/view")
public class PeopleController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.aWorks(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		this.aWorks(request, response);
	}
	
	private void aWorks(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Connection conn = jdbcConnector.getConnection();
			PeopleDAO dao = new PeopleDAO();
			ArrayList<PeopleDTO> listc = dao.selectList(conn);
			
			request.setAttribute("listc", listc);
			
			RequestDispatcher rd = request.getRequestDispatcher("/j14_view02.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}// controller END
