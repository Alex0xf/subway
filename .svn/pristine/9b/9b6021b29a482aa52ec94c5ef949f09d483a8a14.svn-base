package com.javasm.subway.books.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * 
 * ClassName: BooksListServlet 
 * @Description: 
 * @author Alex
 * @date 2018年7月18日
 */
public class BooksListServlet extends HttpServlet {

	private static final long serialVersionUID = 9162096085454294464L;

    
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     //跳转到列表页
     //分页 1.ajax 2.正常分页 
	request.getRequestDispatcher("/WEB-INF/jsp/books/books_list.jsp").forward(request,response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
