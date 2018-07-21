<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>用户中心（未登录）</title>
     <style type="text/css">
     .list-block {
		  margin: 0.7rem 0;
		}
	  .top_menu{
         position: relative;
         margin-top: 0rem;
       }
       #top_menu .bar{
       position: relative;
       }
     .userMyBgPic{
	     background:url("static/images/个人中心切图/btn_beijing@2x.png");
	     min-height: 10rem;
	     background-size: 19rem 10rem;
	     text-align: center;
	     color: white;
     } 
     #usermyButton {
	     width:50%;
	     margin-left:25%;
	     color: white;
	     border-color: white; 
    }
   .usermycenter{
   		padding-top: 17%;
   }
	</style>
  </head>
  
  <body>
  <!--头部 -->
   <header class="bar bar-nav">
    <h1 class="title">个人中心</h1>
  </header>
  
  <div class="content" >
  <!--头部背景图 -->
    <div class="userMyBgPic">
	    <div class="usermycenter">
	    <button id="usermyButton"  class="button button-big button-round"  onclick="goUserLoginPage()">立即登录 </button>
	    <p>登录后，下载更快哦~</p>
	    </div>
    </div>
  

<!-- 菜单栏 -->
   <nav class="bar bar-tab top_menu" id="top_menu">
    <a  class="tab-item external" href="javascript:void(0)" >
    <span class="icon"><img src="static/images/个人中心切图/ic_qiandao@2x.png" alt=" "style="width: 40%"/></span>
    <span class="tab-label">每日签到</span>
  </a>
  <a class="tab-item external" href="javascript:void(0)">
    <span class="icon"><img src="static/images/个人中心切图/ic_jilu@2x.png" alt=" " style="width: 40%"/></span>
    <span class="tab-label">观看记录</span>
  </a>
  <a class="tab-item external" href="javascript:void(0)">
    <span class="icon"><img src="static/images/个人中心切图/ic_shoucang@2x.png" alt=" " style="width: 40%"/></span>
    <span class="tab-label">我的收藏</span>
  </a>
 
  </nav>


<div class="list-block">
    <ul>
       <li class="item-content item-link">
        <div class="item-media"><i class="icon icon-f7"></i></div>
        <div class="item-inner">
          <div class="item-title">余额：****</div>
        </div>
      </li>
    </ul>
  </div>

  <div class="list-block">
    <ul>
       <li class="item-content item-link">
        <div class="item-media"><i class="icon icon-f7"></i></div>
        <div class="item-inner">
          <div class="item-title">账户充值</div>
        </div>
      </li>
    </ul>
  </div>
  
  <div class="list-block">
    <ul>
      <li class="item-content item-link">
        <div class="item-media"><i class="icon icon-f7"></i></div>
        <div class="item-inner">
          <div class="item-title">系统通知</div>
        </div>
      </li>
      <li class="item-content item-link">
        <div class="item-media"><i class="icon icon-f7"></i></div>
        <div class="item-inner">
          <div class="item-title">常见问题</div>
        </div>
      </li>
    </ul>
  </div>
  
  <div class="list-block">
    <ul>
       <li class="item-content item-link">
        <div class="item-media"><i class="icon icon-f7"></i></div>
        <div class="item-inner">
          <div class="item-title">系统设置</div>
        </div>
      </li>
    </ul>
  </div>
  
  </div>
  
  <script type="text/javascript">
   
     function goUserLoginPage(){
       $.post("user_login",{page:"login"},function(data){
	     $(".userAjax_replace").html(data);
	     },"html");
     
    }
    </script>
  </body>
</html>
