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
  </head>
  
  <body>
  <header class="bar bar-nav">
    <h1 class="title">花生地铁</h1>
  </header>
    
    
 
<div class="content native-scroll" id="">
    <div class="swiper-container swiper-container-horizontal" data-space-between="10">
      <div class="swiper-wrapper" style="transition-duration: 0ms; transform: translate3d(0px, 0px, 0px);">
        <div class="swiper-slide swiper-slide-active" style="width: 375px; margin-right: 10px;"><img src="static/images/indexTopBigPictures/1.png" alt="" style="width: 100%"></div>
        <div class="swiper-slide swiper-slide-next" style="width: 375px; margin-right: 10px;"><img src="http://gqianniu.alicdn.com/bao/uploaded/i4//tfscom/i4/TB10rkPGVXXXXXGapXXXXXXXXXX_!!0-item_pic.jpg_640x640q60.jpg" alt="" style="width: 100%"></div>
        <div class="swiper-slide" style="width: 375px; margin-right: 10px;"><img src="http://gqianniu.alicdn.com/bao/uploaded/i4//tfscom/i1/TB1kQI3HpXXXXbSXFXXXXXXXXXX_!!0-item_pic.jpg_640x640q60.jpg" alt="" style="width: 100%"></div>
      </div>
      <div class="swiper-pagination"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span class="swiper-pagination-bullet"></span><span class="swiper-pagination-bullet"></span></div>
    </div>
  </div>



    
    
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
    
      
    
  </body>
</html>
