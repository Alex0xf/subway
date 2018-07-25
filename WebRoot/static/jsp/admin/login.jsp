<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员登录</title>
	<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css">
	<script type="text/javascript" src="static/js/jquery-3.2.1.min.js"></script>
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
   <h1 class="h1head">花生娱乐 管理平台</h1>
   <form class="myform"action="admin_login" method="post">
  <div class="form-group ">
    <label for="user_name">用户名</label>
    <input type="text" class="form-control" id="user_name" name="admin_name" placeholder="请输入用户名" autocomplete="off">
  </div>
  <div class="form-group">
    <label for="password">密码</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox" name="adminCheckbox" checked> 本次操作记住密码
    </label>
  </div>
  <button type="submit" class="btn btn-success" value="确认">确认</button>
 
</form>
 
  </div>
</html>






