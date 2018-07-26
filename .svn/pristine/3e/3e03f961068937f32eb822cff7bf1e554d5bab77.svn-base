package com.javasm.subway.admin.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminIndexServlet extends HttpServlet {

	private static final long serialVersionUID = -1660500934181283562L;


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page=request.getParameter("page");
		if(page!=null){
			switch(page){
			case"hello":{
				request.getRequestDispatcher("WEB-INF/jsp/common/helloAdmin.jsp").forward(request, response);
				break;
			 }
			}
		}else{
			request.getRequestDispatcher("static/jsp/admin/index.jsp").forward(request, response);
		}
		
   }

}
