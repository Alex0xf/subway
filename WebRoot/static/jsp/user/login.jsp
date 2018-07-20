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
	<%@ include file="/WEB-INF/jsp/userCommon/head.jsp" %>
	<style type="text/css">
     #mySubmit {
       margin-left:10%;
       width:80%;
      }
      #myReg{
      text-align: center;
      }
      
      </style>   
  </head>

  <body>

<div>    
 <form action="user_login" method="post">
   <header class="bar bar-nav">
  <h1 class='title'>用户登录</h1>
</header>
<div class="content">
  <div class="list-block">
    <ul>
      <!-- Text inputs -->
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
      
      <!-- Switch (Checkbox) -->
      <li>
        <div class="item-content">
          <div class="item-media"><i class="icon icon-form-toggle"></i></div>
          <div class="item-inner">
            <div class="item-title label">记住密码</div>
            <div class="item-input">
              <label class="label-switch">
                <input type="checkbox">
                 <div class="checkbox"></div>
              </label>
            </div>
          </div>
        </div>
      </li>
      
      
    </ul>
  </div>
  <div class="content-block">
    <div class="row">
      <button type="submit" id="mySubmit"class="button button-big button-fill button-success" value="确认">确认</button>
      <a id="myReg" href="static/jsp/user/user_register.jsp" target="_blank"><h5>还没有账号？点击这里注册</h5></a>
    </div>
  </div>
</div>
    
 </form>
   
    
  
   </div>
  </body>
  
</html>



<!-- <div>
   <h1 class="h1head">花生地铁App</h1>
   <form class="myform"action="user_login" method="post">
  <div class="form-group">
    <label for="user_name">用户名</label>
    <input type="text" class="form-control" id="user_name" name="user_name" placeholder="请输入用户名">
  </div>
  
  <div class="form-group">
    <label for="password">密码</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="请输入密码">
    <p><a href="static/jsp/user/user_register.jsp" target="_blank">微信登录</a></p>
  </div>
 
  <div class="checkbox">
    <label>
      <input type="checkbox" name="mycheckbox" checked> 七天内自动登录
    </label>
  </div>
  <button type="submit" class="btn btn-success" value="确认">确认</button>
 <a href="static/jsp/user/user_register.jsp" target="_blank">还没有注册？点击这里注册</a>
</form>
 
  </div> -->