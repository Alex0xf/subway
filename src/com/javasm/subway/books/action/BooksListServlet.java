package com.javasm.subway.books.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.books.service.IBooksService;
import com.javasm.subway.books.service.Impl.BooksServiceImpl;

/**
 * 
 * ClassName: BooksListServlet
 * 
 * @Description:
 * @author Alex
 * @date 2018年7月25日
 */
public class BooksListServlet extends HttpServlet {

	private static final long serialVersionUID = 9162096085454294464L;
	IBooksService booksService = new BooksServiceImpl();

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 接收参数
		String page = request.getParameter("page");
		String id = request.getParameter("book_id");// 需要删除或修改的图书id
		request.setAttribute("bookId", id);
		// BooksModel books=booksService.selectBooksById(id);
		if (page != null) {
			//System.out.println(page);
			switch (page) {// 根据传进来的参数进行对应的操作（增加/删除/修改）
			case "add": {
				// 转发到增加的的页面
				request.getRequestDispatcher("/WEB-INF/jsp/books/books_add.jsp").forward(request, response);
				break;
			}
			case "delete": {
				//删除一条图书记录
				booksService.deleteBooksById(id);
				break;
			}
			case "update": {// 转发到更改的页面
				// 为了方便修改和避免信息遗忘，将选中的信息预先填入修改页面，图书ID不可更改
				request.setAttribute("bookName", request.getParameter("book_name"));
				request.setAttribute("author", request.getParameter("book_author"));
				request.setAttribute("ftypeId", request.getParameter("book_ftypeId"));
				request.setAttribute("stypeId", request.getParameter("book_stypeId"));
				switch (request.getParameter("book_status")) {
				case "连载": {
					request.setAttribute("status", 1);
					break;
				   }
				case "完本": {
					request.setAttribute("status", 2);
					break;
				   }
				}
				request.getRequestDispatcher("/WEB-INF/jsp/books/books_update.jsp").forward(request, response);
				break;
			}
			case "list": {
				request.getRequestDispatcher("/WEB-INF/jsp/books/books_list.jsp").forward(request, response);
				break;
			}
			case "updateByBookId": {
				//处理修改图书信息
				id=request.getParameter("book_id");
				String bookName = request.getParameter("book_name");
				String authorName = request.getParameter("book_author");
				String ftypeId = request.getParameter("book_ftypeId");
				// String ftypeName=request.getParameter("book_ftypename");
				String stypeId = request.getParameter("book_stypeId");
				// String stypeName=request.getParameter("book_stypeName");
				String status = request.getParameter("book_status");
				// 更改图书信息
			    booksService.updateBooksById(id, ftypeId, stypeId, bookName, authorName, status);
			    // 更改完跳回首页
				request.getRequestDispatcher("/static/jsp/admin/index.jsp").forward(request, response);
				break;
				
			}
			case "addABook":{
				//处理增加的图书信息
				String true_book_id = request.getParameter("true_book_id");
				String bookName = request.getParameter("book_name");
				String authorName = request.getParameter("book_author");
				String ftypeId = request.getParameter("book_ftypeId");
				String stypeId = request.getParameter("book_stypeId");
				String status = request.getParameter("book_status");
				// 增加图书信息
			    booksService.addABook(true_book_id,ftypeId, stypeId, bookName, authorName, status);
			    // 添加完跳回首页
				request.getRequestDispatcher("/static/jsp/admin/index.jsp").forward(request, response);
				break;
			}
			default: {
				request.getRequestDispatcher("/WEB-INF/jsp/books/books_list.jsp").forward(request, response);
			}
			
		  }
		}

	}

}
