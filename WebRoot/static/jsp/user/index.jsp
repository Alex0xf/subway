<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>用户首页</title>
    
	<%@ include file="/WEB-INF/jsp/userCommon/head.jsp" %>
	  <style type="text/css">
       .top_menu{
         position: relative;
          margin-top: 8.5rem;
       }
       #top_menu .bar{
       position: relative;
       }
       .card-content-inner{
       padding: 0.35rem;
       }
      
      </style>   
  </head>
  
  <body>

<!--AJAX刷新部分  -->
<div class="userAjax_replace">
  
  <!-- 头部 -->
   <header class="bar bar-nav">
    <h1 class="title">花生地铁</h1>
  </header>
  
  <div class="content" >
  
  
    <!--头部幻灯片  -->
	<div id="page-swiper" class=" page-current">
	  <div class="content native-scroll" id="">
	    <div class="swiper-container swiper-container-horizontal" data-space-between="10">
	    
	      <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
	        <div class="swiper-slide swiper-slide-active" style="width: 375px; margin-right: 10px;"><img src="static/images/indexTopBigPictures/1.png" alt="" style="width: 100%"></div>
	        <div class="swiper-slide swiper-slide-next" style="width: 375px; margin-right: 10px;"><img src="static/images/indexTopBigPictures/1.png" alt="" style="width: 100%"></div>
	        <div class="swiper-slide" style="width: 375px; margin-right: 10px;"><img src="static/images/indexTopBigPictures/1.png" alt="" style="width: 100%"></div>
	      </div>
	      <div class="swiper-pagination"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
	    </div>
	    
	    
	  </div>
	</div>
  
  <!-- 功能菜单 -->
  <nav class="bar bar-tab top_menu" id="top_menu">
    <a  class="tab-item external" href="javascript:void(0)" >
    <span class="icon"><img src="static/images/首页切图/ic_xiaoshuo@2x.png" alt=" "style="width: 30%"/></span>
    <span class="tab-label">阅读</span>
  </a>
  <a class="tab-item external" href="javascript:void(0)">
    <span class="icon"><img src="static/images/首页切图/shipin@2x.png" alt=" " style="width: 30%"/></span>
    <span class="tab-label">视频</span>
    <span class="badge">2</span>
  </a>
  <a class="tab-item external" href="javascript:void(0)">
    <span class="icon"><img src="static/images/首页切图/ic_diantai@2x.png" alt=" " style="width: 30%"/></span>
    <span class="tab-label">电台</span>
  </a>
  <a class="tab-item external" href="javascript:void(0)">
    <span class="icon"><img src="static/images/首页切图/ic_youxi@2x.png" alt=" " style="width: 30%"/></span>
    <span class="tab-label">游戏</span>
  </a>
  </nav>

  <!--主界面内容区  -->

 <%@include file="/WEB-INF/jsp/userCommon/userContent.jsp" %>


  
</div>
 </div> 
  <!-- 底部菜单 -->

 <%@include file="/WEB-INF/jsp/userCommon/bottom.jsp" %>
  
  
    <script type="text/javascript">
    $(function() {
       $.init();
     });
     
     //点击跳转到用户个人中心
     function goUserMyPage(){
     //AJAX刷新页面主部分为用户界面
     $.post("user_login",{},function(data){
     
	     $(".userAjax_replace").html(data);
	     },"html");
     }
     
     //点击跳转到首页
     
     
    </script>

   </body>
</html>
