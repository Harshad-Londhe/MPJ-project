package com.java.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.util.MedicineDBUtil;

import com.java.util.ManagerOrderDBUtil;

import com.java.util.ManagerOrderDBUtil;
/**
 * Servlet implementation class addMedServlet
 */
@WebServlet("/addMedServlet")
public class addMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		
		String medCode = request.getParameter("medcode");
		String medName = request.getParameter("fname");
		String indication = request.getParameter("ind");
		int qty = Integer.parseInt(request.getParameter("qty"));
		String expDate = request.getParameter("exp");
		double price = Integer.parseInt(request.getParameter("price"));
		String manufacturer = request.getParameter("manuf");
		
		
		boolean isTrue;
		
		isTrue = MedicineDBUtil.addMed(medCode, medName, indication, qty, expDate, price, manufacturer);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}
		
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
