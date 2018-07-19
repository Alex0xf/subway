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
		<!--left start  -->
		<%@ include file="/WEB-INF/jsp/common/left.jsp"%>
		<!--left endt  -->
		<div id="page-wrapper" class="gray-bg">
			<!--top start  -->
			<%@ include file="/WEB-INF/jsp/common/top.jsp"%>
			<!--top end  -->
			<!--            从这开始下面全用ajax刷新 -->
			<!-- 面包屑 start-->
			<div class="row wrapper border-bottom white-bg page-heading">
				<div class="col-lg-10">
					<h3></h3>
					<ol class="breadcrumb">
						<li><a href="static/inspinia/index.html">Home</a></li>

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
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="static/inspinia/table_data_tables.html#"> <i
										class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="static/inspinia/table_data_tables.html#">Config
												option 1</a></li>
										<li><a href="static/inspinia/table_data_tables.html#">Config
												option 2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">

								<div class="table-responsive">
									<div class="">
										<a onclick="fnClickAddRow();" href="javascript:void(0);"
											class="btn btn-primary ">添加</a>
									</div>
									<table id="editable"
										class="table table-striped table-bordered table-hover dataTables-example">
										<thead>
											<tr>
												<th>一级分类</th>
												<th>二级分类</th>
												<th>渠道号</th>
												<th>渠道下载地址</th>
												<th>产品名称</th>
												<th>显示名称</th>
												<th>创建时间</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${list}" var="i">
												<tr>
													<td>${i.topTypeName}</td>
													<td>${i.secondTypeName }</td>
													<td>${i.code}</td>
													<td>${i.downloadurl}</td>
													<td>${i.name }</td>
													<td>${i.viewname }</td>
													<td>${i.ctime }</td>
													<td><div>
															<iinput type="button" value="添加下载地址" />
														</div>
														<div>
															<iinput type="button" value="删除" />
														</div></td>
												</tr>
											</c:forEach>

										</tbody>

									</table>
								</div>

							</div>
						</div>
					</div>
				</div>

			</div>


			<!--bottom start -->
			<%@ include file="/WEB-INF/jsp/common/bottom.jsp"%>
			<!--bottom end -->

		</div>
	</div>
</body>

</html>
