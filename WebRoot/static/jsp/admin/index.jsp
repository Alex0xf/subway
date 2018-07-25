<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    
    <title>管理员首页</title>
    <base href="<%=basePath%>"> 

    <%@ include file="/WEB-INF/jsp/common/head.jsp" %>
    
  </head>
  
  <body id="my_body">
    <div id="wrapper">
    <!--left start  -->
    <%@ include file="/WEB-INF/jsp/common/left.jsp" %>
     <!--left endt  -->
     
     <div id="page-wrapper" class="gray-bg">
     <!--top start  -->
      <%@ include file="/WEB-INF/jsp/common/top.jsp" %>
     <!--top end  -->
       
     <!--ajax刷新的部分 start  -->
       <%@ include file="/WEB-INF/jsp/common/helloAdmin.jsp" %>
     <!--ajax刷新的部分 end  -->
       
     <!--bottom start -->
       <%@ include file="/WEB-INF/jsp/common/bottom.jsp" %>
     <!--bottom end -->
    
    </div>
    </div>
  </body>
</html>
