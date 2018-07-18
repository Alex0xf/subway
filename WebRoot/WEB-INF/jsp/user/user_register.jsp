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
    
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<style  type="text/css" >
	html, body, main{
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
    height:700px;
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
   <form class="myform"action="user_login" method="post">
  <div class="form-group ">
    <label for="user_name">用户名</label>
    <input type="text" class="form-control" id="user_name" name="user_name" placeholder="请输入您想使用的用户名">
  </div>
  <div class="form-group">
    <label for="password">密码</label>
    <input type="password" class="form-control" id="password1" name="password1" placeholder="请输入密码">
  </div>
  <div class="form-group">
    <label for="password">确认密码</label>
    <input type="password" class="form-control" id="password2" name="password2" placeholder="请再次输入密码">
  </div>
  <button type="submit" class="btn btn-success" value="确认">确认</button>
</form>
  </div>
  </body>
</html>
