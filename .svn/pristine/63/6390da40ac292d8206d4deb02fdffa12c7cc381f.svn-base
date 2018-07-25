<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String admin_name = request.getParameter("user_name");
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">

<title>用户首页</title>

<meta charset="utf-8">

<%@ include file="/WEB-INF/jsp/common/head.jsp"%>
</head>

<body>
	<div id="wrapper">
		<!-- 		<!--left start  -->
		<%-- 		<%@ include file="/WEB-INF/jsp/common/left.jsp"%> --%>
		<!-- 		<!--left endt  -->
		<!-- 		<div id="page-wrapper" class="gray-bg"> -->
		<!-- 			<!--top start  -->
		<%-- 			<%@ include file="/WEB-INF/jsp/common/top.jsp"%> --%>
		<!-- 			<!--top end  -->
		<!--            从这开始下面全用ajax刷新 -->
		<!-- 		面包屑 start -->
		<div class="row wrapper border-bottom white-bg page-heading" style="margin-left:9px">
			<div class="col-lg-10" style="margin-left:-9px">
				<h3 class=".topName">首页&nbsp;&nbsp;/&nbsp;&nbsp;渠道管理</h3>
				<ol class="breadcrumb">
					<li><a href="static/inspinia/index.html"></a></li>

				</ol>
			</div>

		</div>
		<!-- 面包屑 end -->
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
						<h3 style="margin-left:5px">渠道管理</h3>
<!-- 							<div class="ibox-tools"> -->
							
<!-- 								<a class="collapse-link"> <i class="fa fa-chevron-up"></i> -->
<!-- 								</a> <a class="dropdown-toggle" data-toggle="dropdown" -->
<!-- 									href="static/inspinia/table_data_tables.html#"> <i -->
<!-- 									class="fa fa-wrench"></i> -->
<!-- 								</a> -->
<!-- 								<ul class="dropdown-menu dropdown-user"> -->
<!-- 									<li><a href="static/inspinia/table_data_tables.html#">Config -->
<!-- 											option 1</a></li> -->
<!-- 									<li><a href="static/inspinia/table_data_tables.html#">Config -->
<!-- 											option 2</a></li> -->
<!-- 								</ul> -->
<!-- 								<a class="close-link"> <i class="fa fa-times"></i> -->
<!-- 								</a> -->
<!-- 							</div> -->
						</div>

						<div class="ibox-content">
							<form>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-12">

											<div class="form-group">
												<label for="exampleInputEmail1">产品名称</label> <input
													type="email" class="form-control" id="exampleInputEmail1"
													placeholder="产品名称">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">显示名称</label> <input
													type="password" class="form-control"
													id="exampleInputPassword1" placeholder="显示名称">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">地区</label> <input
													type="password" class="form-control"
													id="exampleInputPassword1" placeholder="地区">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">发布时间</label> <input
													type="date" class="form-control" id="exampleInputPassword1"
													placeholder="发布时间">
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-6">
											<div class="form-group">
												<label for="exampleInputPassword1">平台</label> <select
													class="form-control">
													<option>ios</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-6 col-md-offset-0">
											<label for="exampleInputPassword1">一级分类</label> <select
												class="form-control "
												onchange="selectSecondTypeName_(this);">
												<option value="分类">分类</option>
												<c:forEach items="${topTypeNameList }" var="i">
													<option value="${i.topTypeName}">${i.topTypeName} </option>
												</c:forEach>
											</select>
										</div>

										<div class="col-md-6 col-md-offset-0">
											<label for="exampleInputPassword1">二级分类</label> <select
												class="form-control second_search_2">
											</select>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-12 ">
											<div class="form-group">
												<label for="exampleInputPassword1">备注</label>
												<textarea rows="3" class="form-control"></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-5 ">
											<button type="submit" class="btn btn-success">保存</button>
										</div>

									</div>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<!-- 			<!--bottom start -->
	<%-- 			<%@ include file="/WEB-INF/jsp/common/bottom.jsp"%> --%>
	<!-- 			<!--bottom end -->
</body>

</html>
