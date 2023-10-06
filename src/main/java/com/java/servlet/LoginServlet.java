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
		boolean isTrue;
		
		isTrue = UserDBUtil.validate(username, password);
		
		if(isTrue==true) {
			HttpSession session = request.getSession();
            session.setAttribute("username", username);
            
            if ("g".equals(username.substring(0, 1))) {
                response.sendRedirect("user1.jsp");
            } 
            else if ("I".equals(username.substring(0, 1))) {
                response.sendRedirect("user2.jsp");
            } 
            else {
                response.sendRedirect("user3.jsp");
            }
            
            
            //response.sendRedirect("redirectTo.jsp");
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
