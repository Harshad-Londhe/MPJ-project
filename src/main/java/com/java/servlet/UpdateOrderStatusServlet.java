package com.java.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.ManagerOrderDBUtil;

@WebServlet("/UpdateOrderStatusServlet")
public class UpdateOrderStatusServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int orderId = Integer.parseInt(request.getParameter("orderId"));
        String action = request.getParameter("action");
        
        boolean isSuccess = ManagerOrderDBUtil.updateOrderStatus(orderId, action);
        
        if (isSuccess) {
            response.sendRedirect("manageOrders.jsp");
        } else {
            response.getWriter().write("Update Failed"); 
        }
	}

}
