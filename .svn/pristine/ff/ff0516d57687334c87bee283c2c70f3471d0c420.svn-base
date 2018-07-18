package com.javasm.subway.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.javasm.subway.user.model.UserModel;
/**
 * 
 * ClassName: LoginFilter 
 * @Description: 登录过滤器，使用时打开注释
 * @author Alex
 * @date 2018年7月18日
 */
//@WebFilter("/*")
public class LoginFilter implements Filter {

    public LoginFilter() {
       
    }
	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
				//当前Servlet  不登录不能访问
				//判断session中 是否有用户名密码
				//去session中 获取用户信息数据
				HttpServletRequest hrequest = (HttpServletRequest)request;
				HttpServletResponse hresponse = (HttpServletResponse)response;
				//只过滤 一部分 地址  放过 .js .css 结尾的文件
				//放过 以某个文件夹 开头的请求
				String url = hrequest.getRequestURI();
				//System.out.println(url);
				if(url.indexOf("login") != -1 
						|| url.endsWith(".css") 
						|| url.endsWith(".js") 
						|| url.endsWith(".png")){
					chain.doFilter(request, response);
				}else{
						HttpSession session = hrequest.getSession();
						//登录的时候  存的个人信息属性名
						UserModel user = (UserModel)session.getAttribute("user_model");
						//如果存在 就说明 已经登录
						if(user !=null){
							chain.doFilter(request, response);
						}else{//如果不存在 说明 未登录
							//重定向 到  登录页
							hresponse.sendRedirect(hrequest.getContextPath()+"/static/jsp/userLogin/login.jsp");
						}
					
					}
				}
				
	

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("loginFilter被初始化");
	}

}

