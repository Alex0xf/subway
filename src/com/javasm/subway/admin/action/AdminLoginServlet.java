package com.javasm.subway.admin.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.javasm.subway.admin.model.AdminModel;
import com.javasm.subway.admin.service.IAdminService;
import com.javasm.subway.admin.service.Impl.AdminServiceImpl;
import com.javasm.subway.utills.EncryptByMD5;
/**
 * 
 * ClassName: AdminLoginServlet 
 * @Description: 后台管理员登陆的servlet
 * @author Alex
 * @date 2018年7月25日
 */
public class AdminLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 8488806487182625381L;

	IAdminService adminService=new AdminServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doLogin(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page=request.getParameter("page");
		System.out.println(page);
		if(page!=null){
			switch(page){
			case"changePsw":{//ajax转发到更改密码页面
				 request.getRequestDispatcher("/static/jsp/admin/changePsw.jsp").forward(request, response);
				 break;
		    	}
			case"doChangeAdminPsw":{
				String adminName=request.getParameter("admin_name");
				String password=EncryptByMD5.MD5(request.getParameter("before_password"));//验证是否和加密后的密码一致
				request.setAttribute("adminname", adminName);
				AdminModel admin=adminService.selectAdmin(adminName, password);
				
				if(admin!=null){//若原始用户名和密码正确  验证两次输入的新密码是否一致
					int uid=admin.getId();//获取用户id
					String newPassword=request.getParameter("new_password");
					String confirmNewpassword=request.getParameter("confirm_new_password");
					System.out.println(newPassword+"---"+confirmNewpassword);
					if(newPassword!=null&&confirmNewpassword!=null&&newPassword.equals(confirmNewpassword)){
						//两次输入一致，可以改密码
						//将新密码加密存入数据库
						int i=adminService.updateAdminPsw(uid,EncryptByMD5.MD5(newPassword));
						if(i>0){
							request.setAttribute("operationResult","更改密码成功");
							
						}
					}else{//两次输入不一致
						request.setAttribute("operationResult","两次输入不一致");
					}
				}else{//密码错误或者用户不存在
					request.setAttribute("operationResult","密码错误或者用户不存在");
					
				}
				request.getRequestDispatcher("/static/jsp/admin/index.jsp").forward(request, response);
				break;
			 }
			}
		}else{
			doLogin(request, response);
		}
		
		
	}

	public void doLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			
		    	HttpSession session=request.getSession();
		    	session.setAttribute("admin_model", admin);
			
			request.getRequestDispatcher("/static/jsp/admin/index.jsp").forward(request, response);
		}
	}
}
