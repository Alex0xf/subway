package com.javasm.subway.books.action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.javasm.subway.books.model.BooksModel;
import com.javasm.subway.books.service.IBooksService;
import com.javasm.subway.books.service.Impl.BooksServiceImpl;
/**
 * 
 * ClassName: BooksAjaxListDataServlet 
 * @Description: 
 * @author Alex
 * @date 2018年7月17日
 */
public class BooksAjaxListDataServlet extends HttpServlet {

	private static final long serialVersionUID = -5988505183456411399L;

	IBooksService booksService=new BooksServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        //servlet 返回json数据
		       String pageNum=request.getParameter("pageNum");
		        String pageSize=request.getParameter("pageSize");
				//查询
				List<BooksModel> list=booksService.selectBooksList(pageNum, pageSize);
				Map<String,Object> map=new HashMap<>();
				map.put("DATA_LIST","");
				//结果转换成json
				if(list!=null){
					map.put("DATA_LIST",list);
					
				}
				String jsonstr=JSON.toJSONString(map);
				response.getWriter().write(jsonstr);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
