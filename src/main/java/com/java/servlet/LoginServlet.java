package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.util.UserDBUtil;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("Uname");
		String password = request.getParameter("psw");
		String userType = request.getParameter("userType");
		
		boolean isTrue;
		
		isTrue = UserDBUtil.validate(username, password, userType);
		
		if(isTrue==true) {
			HttpSession session = request.getSession();
            session.setAttribute("username", username);
            
            response.sendRedirect("redirectTo.jsp");
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
