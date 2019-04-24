package com.validation;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDAO;
import com.dao.UserEntity;
import com.test.TestProcess;

/**
 * Servlet implementation class ValidationServlet
 */
@WebServlet("/ValidationServlet")
public class ValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		PrintWriter out = response.getWriter();
		
		if(name.equalsIgnoreCase("")) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Name can't be empty! Please write your name!');");
			out.println("location='main.jsp';");
			out.println("</script>");
		}

		UserDAO dao = new UserDAO();
		ArrayList<UserEntity> userList = dao.selectAll();
		boolean foundName = false;
		
		for (UserEntity user : userList) {
			if(user.getName().equalsIgnoreCase(name)) {
				foundName = true;
				break;
			}
		}
		

		
		if(foundName) { // error message and redirect back to the main if there is same user name exists 
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Name already exists! Please use another name.');");
			out.println("location='main.jsp';");
			out.println("</script>");
		} else { //continue if there is no same user name
			TestProcess.name = name;
			out.println("<script type=\"text/javascript\">");
			out.println("location='startGame.jsp';");
			out.println("</script>");
		}
	}

}
