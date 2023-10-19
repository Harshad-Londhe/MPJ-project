package com.java.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.model.Medicine;
import com.java.util.MedicineDBUtil;

/**
 * Servlet implementation class viewMedServlet
 */
@WebServlet("/viewMedServlet")
public class viewMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public viewMedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void listMeds(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List <Medicine> med = MedicineDBUtil.getMedicineDeteials();
		request.setAttribute("medDets", med);
		RequestDispatcher dis = request.getRequestDispatcher("ManageMedicine.jsp");
		dis.forward(request, response);
		
	}

}
