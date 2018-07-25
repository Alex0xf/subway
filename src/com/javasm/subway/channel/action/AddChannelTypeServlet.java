package com.javasm.subway.channel.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.channel.dao.ChannelTypeControlDao;
import com.javasm.subway.channel.model.ChannelTypeControlModel;
import com.javasm.subway.channel.service.DateTimeServer;

public class AddChannelTypeServlet extends HttpServlet {

	/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ChannelTypeControlDao channelTypeControlDao = new ChannelTypeControlDao();
		
		//添加
		String dateTime = DateTimeServer.dateTime();
		String type_name =request.getParameter("type_name");
		boolean success = false ;
		if(type_name!=null){
			String father_type = request.getParameter("father_type");
			String tag_sort = request.getParameter("tag_sort");
			String description = request.getParameter("description");
			int num = channelTypeControlDao.addChannelTypeControl(type_name, father_type, tag_sort, description, dateTime);
			success =num>0?true:false;
			request.setAttribute("success",success);
		}
		
		
		
		//添加按钮
		
		List<ChannelTypeControlModel> list = channelTypeControlDao.selectChannelTypeControlFather();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/static/jsp/channel/addChannelType.jsp").forward(request, response);

	}

	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		ChannelTypeControlDao channelTypeControlDao = new ChannelTypeControlDao();
		
		//添加
		String dateTime = DateTimeServer.dateTime();
		String type_name =request.getParameter("type_name");
		String father_type = request.getParameter("father_type");
		String tag_sort = request.getParameter("tag_sort");
		String description = request.getParameter("description");
		int success = channelTypeControlDao.addChannelTypeControl(type_name, father_type, tag_sort, description, dateTime);
		System.out.println("dateTinme:"+dateTime);
		System.out.println("father_select:"+father_type);
		System.out.println("type_Name:"+type_name);
		System.out.println("tag_sort:"+tag_sort);
		System.out.println("description:"+description);
	}

}
