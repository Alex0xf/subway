<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
    <%@ include file="/WEB-INF/jsp/userCommon/head.jsp" %>

	<style  type="text/css" >
	 #mySubmit {
       margin-left:10%;
       width:80%;
      }
	</style>
  </head>
  
  <body>
  
  <form action="user_login" method="post">
   <header class="bar bar-nav">
  <h1 class='title'>用户注册</h1>
</header>
<div class="content">
  <div class="list-block">
    <ul>
     
      <li>
        <div class="item-content">
          <div class="item-media"><i class="icon icon-form-name"></i></div>
          <div class="item-inner">
            <div class="item-title label">姓名</div>
            <div class="item-input">
              <input type="text" name="user_name" placeholder="Your name">
            </div>
          </div>
        </div>
      </li>
     
      <li>
        <div class="item-content">
          <div class="item-media"><i class="icon icon-form-password"></i></div>
          <div class="item-inner">
            <div class="item-title label">密码</div>
            <div class="item-input">
              <input type="password" name="password" placeholder="Password" class="">
            </div>
          </div>
        </div>
      </li>
      
      
      </ul>
  </div>
  <div class="content-block">
    <div class="row">
      <button type="submit" id="mySubmit"class="button button-big button-fill button-success" value="确认">确认</button>
    
    </div>
  </div>
</div>
</form>
 
  </body>
</html>
