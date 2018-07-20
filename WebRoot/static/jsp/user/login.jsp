<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">
	<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
	<style  type="text/css" >
	html, body{
    font-family: "Lucida Grande","Lucida Sans Unicode", Tahoma, Sans-Serif;
    position: relative;
    margin: 0;
    padding: 0;
    padding-top: 10px;
    width: 100%;
    height: 100%;
    background-color: #092B40;
    color:white;
    }
    .myform{
    position: absolute;
    width:55%;
    height:80%;
    margin-top:8%;
    margin-left:22%;
    
    }
    .h1head{
   text-align: center;
   margin-top:80px;
    }
	</style>
  </head>
  
  <body>
   <div>
   <h1 class="h1head">花生地铁App</h1>
   <form class="myform"action="user_login" method="post">
  <div class="form-group input-lg">
    <label for="user_name">用户名</label>
    <input type="text" class="form-control" id="user_name" name="user_name" placeholder="请输入用户名">
  </div>
  <div class="form-group input-lg">
    <label for="password">密码</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
  </div>
  <a href="static/jsp/user/user_register.jsp" target="_blank">微信登录</a>
  <div class="checkbox">
    <label>
      <input type="checkbox" name="mycheckbox" checked> 七天内自动登录
    </label>
  </div>
  <button type="submit" class="btn btn-success" value="确认">确认</button>
 <a href="static/jsp/user/user_register.jsp" target="_blank">还没有注册？点击这里注册</a>
</form>
 
  </div>
</html>






