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
    
	<meta charset="utf-8">

    <%@ include file="/WEB-INF/jsp/common/head.jsp" %>
  </head>
  
  <body>
    <div id="wrapper">
    <!--left start  -->
    <%@ include file="/WEB-INF/jsp/common/left.jsp" %>
     <!--left endt  -->
     <div id="page-wrapper" class="gray-bg">
     <!--top start  -->
       <%@ include file="/WEB-INF/jsp/common/top.jsp" %>
           <!--top end  -->
     <!-- 面包屑 start-->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h3></h3>
                    <ol class="breadcrumb">
                        <li>
                            <a href="static/inspinia/index.html">Home</a>
                        </li>
                       
                    </ol>
                </div>
                
            </div>
            <!-- 面包屑 end-->
    
     <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="static/inspinia/table_data_tables.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="table-responsive">
                           <div class="">
				            <h1>欢迎登录</h1>
				            <h3>花生娱乐管理平台</h3>
				            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
         
        </div>
    
     <!--bottom start -->
       <%@ include file="/WEB-INF/jsp/common/bottom.jsp" %>
     <!--bottom end -->
    
    </div>
    </div>
  </body>
</html>
