package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.ManagerOrderDBUtil;


@WebServlet("/UpdateManagerOrderServlet")
public class UpdateManagerOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String managerID = request.getParameter("managerID");
		String orderDate = request.getParameter("orderDate");
		String itemAndqty = request.getParameter("itemAndqty");
		String itemDesc = request.getParameter("itemDesc");
		String orderStatus = request.getParameter("orderStatus");
		
		boolean isTrue;
		
		isTrue = ManagerOrderDBUtil.updateOrder(id, itemAndqty, itemDesc);
		isTrue = ManagerOrderDBUtil.deleteOrder(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("manageOrders.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
