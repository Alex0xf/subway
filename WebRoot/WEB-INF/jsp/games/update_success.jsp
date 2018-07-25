<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
  <title>添加成功页</title>
    <%@ include file="../common/head.jsp" %>
  </head>
  
  <body>  
    <div id="wrapper">
      <!--left start  -->
      <%@ include file="../common/left.jsp" %>
      <!--left end  -->
        <div id="page-wrapper" class="gray-bg">
          <!--top start  -->
       	  <%@ include file="../common/top.jsp" %>
          <!--top end  -->
           
            <!-- 面包屑 start-->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>游戏管理系统</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="static/inspinia/index.html">首页</a>
                        </li>
                        <li>
                            <strong>游戏管理</strong>
                        </li>
                        <li class="active">
                            <a href="games/list">游戏列表</a>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <!-- 面包屑 end-->
			<h1>修改成功!</h1>
			<button onclick="location='games/list'" class="btn btn-primary">返回游戏列表</button>
        <!--bottom start -->
        <%@ include file="../common/bottom.jsp" %>
        <!--bottom end -->
        </div>
        </div>
  </body>
</html>
