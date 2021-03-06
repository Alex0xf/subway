package com.javasm.subway.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.user.model.UserModel;
import com.javasm.subway.user.service.IUserService;
import com.javasm.subway.user.service.Impl.UserServiceImpl;
/**
 * 
 * ClassName: UserLoginServlet 
 * @Description: 用户登陆的servlet
 * @author Alex
 * @date 2018年7月18日
 */
public class UserLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 8488806487182625381L;


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
		
	}

	IUserService userService=new UserServiceImpl();
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//传参
		String userName=request.getParameter("user_name");
		String password=request.getParameter("password");
		String page=request.getParameter("page");
		
	   //查询
		UserModel user=userService.selectUser(userName, password);
		if(user==null){//若查询失败，让用户重新登录
			System.out.println(page);
			if(page!=null){
				switch(page){
				case "login":{
					request.getRequestDispatcher("static/jsp/user/login.jsp").forward(request, response);
					break;
				}
				case "register":{
					request.getRequestDispatcher("static/jsp/user/user_register.jsp").forward(request, response);
					break;
				}
				case "index":{
					request.getRequestDispatcher("static/jsp/user/index.jsp").forward(request, response);
					break;
				}
				case "userMyPage":{
					request.getRequestDispatcher("static/jsp/user/userMyPage.jsp").forward(request, response);
					break;
				}
				default:request.getRequestDispatcher("static/jsp/user/index.jsp").forward(request, response);
				}
			}else{
				request.getRequestDispatcher("static/jsp/user/index.jsp").forward(request, response);
			}	
			
		}
		else{//登录成功，进入首页
			request.getRequestDispatcher("static/jsp/user/index.jsp").forward(request, response);
		}
		
	}

}
