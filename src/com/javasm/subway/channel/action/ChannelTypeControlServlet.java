package com.javasm.subway.channel.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.channel.dao.ChannelAndTypeDao;
import com.javasm.subway.channel.dao.ChannelTypeControlDao;
import com.javasm.subway.channel.model.ChannelControlModel;
import com.javasm.subway.channel.model.ChannelTypeControlModel;
import com.javasm.subway.channel.service.PageCountServer;
import com.javasm.subway.channel.service.PageSizeServer;

public class ChannelTypeControlServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ChannelTypeControlDao channelTypeControlDao = new ChannelTypeControlDao();
		String size = request.getParameter("size");
		size = PageSizeServer.pageSize(size);
		request.setAttribute("size", size);
		int pageSize = Integer.parseInt(size);
		List<ChannelTypeControlModel> list = channelTypeControlDao.selectChannelTypeControl(0, pageSize * 5);
		int count = channelTypeControlDao.SelectChannelAndTypeCount();
		count = PageCountServer.pageCount(count,pageSize);
		System.out.println("size:"+pageSize);
		System.out.println("count:"+count);
		request.setAttribute("count", count);
		request.setAttribute("list", list);
		request.getRequestDispatcher("/static/jsp/channel/ChannelTypeControl.jsp").forward(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
