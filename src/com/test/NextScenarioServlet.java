package com.test;

import java.io.IOException;
import java.io.PrintWriter;
import com.test.TestProcess;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NextScenario
 */
@WebServlet("/NextScenarioServlet")
public class NextScenarioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NextScenarioServlet() {
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
		request.setCharacterEncoding("UTF-8");
		String nextScenario = request.getParameter("next_scenario");
		String iscorrect = request.getParameter("isCorrect");
		String message = request.getParameter("message");
		boolean isCorrect = Boolean.parseBoolean(iscorrect);
		
		PrintWriter out = response.getWriter();

		if (isCorrect) {
			TestProcess.score += 5;
			out.println("<script type=\"text/javascript\">");
			out.println("alert('" + message + "');");
			out.println("location='" + nextScenario + "';");
			out.println("</script>");
		} else {
			TestProcess.score -= 5;
			out.println("<script type=\"text/javascript\">");
			out.println("alert('" + message + "');");
			out.println("location='" + nextScenario + "';");
			out.println("</script>");
		}
	}

}
