package com.javasm.subway.admin.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.admin.model.AdminModel;
import com.javasm.subway.admin.service.IAdminService;
import com.javasm.subway.admin.service.Impl.AdminServiceImpl;
import com.javasm.subway.utills.EncryptByMD5;
/**
 * 
 * ClassName: AdminLoginServlet 
 * @Description: 后台管理员登陆的servlet
 * @author Alex
 * @date 2018年7月19日
 */
public class AdminLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 8488806487182625381L;

	IAdminService adminService=new AdminServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		      //传参
		
				String adminName=request.getParameter("admin_name");
				String password=EncryptByMD5.MD5(request.getParameter("password"));//验证是否和加密后的密码一致
				request.setAttribute("adminname", adminName);
			   //查询
				AdminModel admin=adminService.selectAdmin(adminName, password);
				if(admin==null){//若查询数据库失败，让管理员重新登录
					request.getRequestDispatcher("/static/jsp/admin/login.jsp").forward(request, response);
				}
				else{//登录成功，进入后台首页
					request.getRequestDispatcher("/static/jsp/admin/index.jsp").forward(request, response);
				}
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
