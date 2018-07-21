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
       margin-bottom: 20.25rem;
       
       }
       .card{
	    margin-top: 13.5rem;
	    margin-left: 0rem;
	    margin-right: 0rem;
       }
       .card-content-inner{
       padding: 0.35rem;
       }
      
      </style>   
  </head>
  
  <body>

    
    
 
<div class="page-group">
    <div id="page-swiper" class="page page-current">
      <header class="bar bar-nav">
       
    <h1 class="title">花生地铁</h1>
  </header>
  
  <!--头部幻灯片  -->
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
  
  <!-- 功能菜单 -->
  <nav class="bar bar-tab top_menu">
    <a class="tab-item external active" href="#">
    <span class="icon"><img src="static/images/切图/ic_xiaoshuo@2x.png" alt=" "style="width: 30%"/></span>
    <span class="tab-label">阅读</span>
  </a>
  <a class="tab-item external" href="#">
    <span class="icon"><img src="static/images/切图/shipin@2x.png" alt=" " style="width: 30%"/></span>
    <span class="tab-label">视频</span>
    <span class="badge">2</span>
  </a>
  <a class="tab-item external" href="#">
    <span class="icon"><img src="static/images/切图/ic_diantai@2x.png" alt=" " style="width: 30%"/></span>
    <span class="tab-label">电台</span>
  </a>
  <a class="tab-item external" href="#">
    <span class="icon"><img src="static/images/切图/ic_youxi@2x.png" alt=" " style="width: 30%"/></span>
    <span class="tab-label">游戏</span>
  </a>
  </nav>


<!-- 小说区 -->
 <div class="card">
    <div class="card-header">热门小说</div>
    <div class="card-content">
      <div class="card-content-inner">
      <img src="static/images/banner/小说2.jpg" alt="" style="width: 100%"/>
      <p>满族少女若曦，身不由己地加入“九子夺嫡”的纷争</p>
      
      </div>
    </div>
    <div class="card-footer">卡脚</div>
  </div>
  
  
  <!-- 底部菜单 -->
  <nav class="bar bar-tab">
    <a class="tab-item external active" href="#">
      <span class="icon icon-home"></span>
      <span class="tab-label">首页</span>
    </a>
   
    <a class="tab-item external" href="#">
      <span class="icon icon-browser"></span>
      <span class="tab-label">WI-FI</span>
    </a>
   
    <a class="tab-item external" href="#">
      <span class="icon icon-me"></span>
      <span class="tab-label">我的</span>
    </a>
  </nav>
  
  
</div>
</div>



    
    
 
  
    <script type="text/javascript">
    $(function() {
       $.init()
});
    </script>
   
</html>
