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
     <h5 id="myReg"><a  href="javascript:void(0)" onclick="goUserRegisterPage()">还没有账号？点击这里注册</a></h5>
    </div>
  </div>
</div>
    
 </form>
   
    
  
   </div>
   
   
   <script type="text/javascript">
   function goUserRegisterPage(){
       $.post("user_login",{page:"register"},function(data){
	     $(".userAjax_replace").html(data);
	     },"html");
     
    }
    </script>
  </body>
  
</html>



