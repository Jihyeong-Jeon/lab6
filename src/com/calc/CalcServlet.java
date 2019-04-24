package com.calc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalcServlet")
public class CalcServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstNumber 	= request.getParameter("firstNumber");
		String operator 	= request.getParameter("operator");
		String secondNumber = request.getParameter("secondNumber");
		
		double fn = Double.parseDouble(firstNumber);
		double sn = Double.parseDouble(secondNumber);
		
		String result = "";
		
		switch(operator) {
		case "+": {
			result += (fn + operator + sn + " = " + (fn + sn));
			break;
		}
			
		case "-": {
			result += (fn + operator + sn + " = " + (fn - sn));
			break;
		}
			
		case "*": {
			result += (fn + operator + sn + " = " + (fn * sn));
			break;
		}
			
		case "/": {
			if (sn == 0) {
				result += "0으로 나눌 수 없습니다!!";
				break;
			}
			result += (fn + operator + sn + " = " + (fn / sn));
			break;
		}
			
		default:
			result = "잘못된 연산자입니다!! - 연산자 : " + operator;
		}
		
		PrintWriter out = response.getWriter();
		out.println(result);
	}
}


