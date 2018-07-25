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
<script type="text/javascript">
	$(function($) {
		if ("${updateSuccess}" != "" && "${updateSuccess}" != null) {
			if ("${updateSuccess}" == "true") {

				alert("修改成功(*^_^*)");
			} else {
				alert("修改失败(⊙﹏⊙)")
			}
		}
		console.log("输出啊:"+"${deleteSuccess}")
		if ("${deleteSuccess}" != "" && "${deleteSuccess}" != null) {
			if ("${deleteSuccess}" == "true") {

				alert("删除成功(*^_^*)");
			} else {
				alert("删除失败(⊙﹏⊙)")
			}
		}
	});
</script>



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
		<div class="row wrapper border-bottom white-bg page-heading"
			style="margin-left:9px">
			<div class="col-lg-10" style="margin-left:-9px">
				<h3 class=".topName">首页&nbsp;&nbsp;/&nbsp;&nbsp;渠道分类管理</h3>
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
							<h3 style="margin-left:5px">渠道分类管理</h3>
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

							<div class="table-responsive">
								<div class="">
									<a onclick="addchanneltype();" href="javascript:void(0);"
										class="btn btn-primary ">添加渠道分类</a>
								</div>
								<table id="editable"
									class="table table-striped table-bordered table-hover dataTables-example">
									<thead>
										<tr>
											<th class="text-center ">一级分类</th>
											<th class="text-center ">父级</th>
											<th class="text-center ">标签排序</th>
											<th class="text-center ">创建时间</th>
											<th class="text-center ">操作</th>
										</tr>
									</thead>
									<!-- 									=================================== -->

									<%-- 									<c:forEach items="${ChannelControlModelList}" var="i" begin="0" --%>
									<%-- 										end="${size-1}"> --%>
									<!-- 										<tr> -->
									<%-- 											<td class="text-center">${i.topTypeName}</td> --%>
									<%-- 											<td class="text-center">${i.secondTypeName }</td> --%>
									<%-- 											<td class="text-center">${i.code}</td> --%>
									<%-- 											<td class="text-center">${i.downloadurl}</td> --%>
									<%-- 											<td class="text-center">${i.name }</td> --%>
									<%-- 											<td class="text-center">${i.viewname }</td> --%>
									<%-- 											<td class="text-center">${i.ctime }</td> --%>
									<!-- 											<td><div> -->
									<!-- 													<button type="button" -->
									<!-- 														class="add_upload_address btn btn-success btn-xs"> -->
									<!-- 														<span class="glyphicon glyphicon-edit" aria-hidden="true"></span> -->
									<!-- 														添加下载地址 -->
									<!-- 													</button> -->
									<!-- 												</div> -->
									<!-- 												<div class="col-md-offset-3"> -->
									<!-- 													<button type="button" -->
									<!-- 														class="delete_channel btn btn-danger btn-xs " -->
									<!-- 														onclick="delete_channel(this);"> -->
									<!-- 														<span class="glyphicon glyphicon-trash" aria-hidden="true"></span> -->
									<!-- 														删除 -->
									<!-- 													</button> -->
									<!-- 												</div></td> -->
									<!-- 										</tr> -->
									<%-- 									</c:forEach> --%>



									<!-- 									======================================================================== -->
									<tbody class="ChannelTypeTable">
										<c:forEach items="${list}" var="i" begin="0" end="${size-1}">
											<tr>
												<td class="text-center ">${i.typeName}</td>
												<c:choose>
													<c:when test="${i.fatherName eq null}">
														<td class="text-center ">无</td>
													</c:when>
													<c:when test="${empty i.fatherName}">
														<td class="text-center ">无</td>
													</c:when>
													<c:otherwise>
														<td class="text-center ">${i.fatherName}</td>
													</c:otherwise>
												</c:choose>
												<td class="text-center ">${i.sort}</td>
												<td class="text-center ">${i.ctime }</td>
												<td>

													<div class="col-md-2 col-md-offset-4">
														<button type="button" onclick="updateChannelType(this);"
															class="add_upload_address btn btn-success btn-xs"
															value='{"ctime":"${i.ctime }"}'>
															<span class="glyphicon glyphicon-edit" aria-hidden="true"></span>
															修改
														</button>
													</div>
													<div class="col-md-2">
														<button type="button"
															class="delete_channel btn btn-danger btn-xs"
															onclick="delete_channel(this);" id=""  value='{"ctime":"${i.ctime }"}'>
															<span class="glyphicon glyphicon-trash"
																aria-hidden="true"></span> 删除
														</button>
													</div>
												</td>
											</tr>
										</c:forEach>

									</tbody>

								</table>

								<!-- 								分页 -->
								<div>
									<form class="form-inline" style="margin-left:936px">
										<button type="button" class="delete_channel btn btn-default "
											onclick="pageStart();">
											<span class="glyphicon glyphicon-flag" aria-hidden="true"></span>
											首页
										</button>

										<div class="form-group">

											<nav aria-label="Page navigation">
												<ul class="pagination pagination-lg sharePage">
													<li><a href="JavaScript:void(0)" aria-label="Previous"
														onclick="pageUp();"> <span aria-hidden="true">&laquo;</span>
													</a></li>
													<c:forEach begin="0" end="4" var="i">
														<li id="${i+1}" class="mm"><a
															href="JavaScript:void(0)" onclick="pageNum(this);">${i+1}</a></li>
													</c:forEach>
													<li><a href="JavaScript:void(0)" aria-label="Next"
														onclick="pageDown();"> <span aria-hidden="true">&raquo;</span>
													</a></li>

												</ul>
											</nav>
										</div>
										<button type="button" class="delete_channel btn btn-default "
											onclick="pageEnd();">
											<span class="glyphicon glyphicon-warning-sign"
												aria-hidden="true"></span> 尾页
										</button>
										<div class="form-group">
											<span>每页</span>
											<div class="btn-group" style="height:34px,margin-top:80px">

												<button type="button"
													class="btn btn-default dropdown-toggle"
													data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="pageSize">${size}</span><span class="caret"></span>
												</button>

												<ul class="dropdown-menu" style="min-width:42px">
													<li style="width:42px" style="padding:0px"><a
														style="padding-left:3px" href="JavaScript:void(0)"
														onclick="changePageSize(this);" style="width:42px">5</a></li>
													<li style="width:42px" style="padding:0px"><a
														style="padding-left:3px" href="JavaScript:void(0)"
														onclick="changePageSize(this);" style="width:42px">10</a></li>
													<li style="width:42px" style="padding:0px"><a
														style="padding-left:3px" href="JavaScript:void(0)"
														onclick="changePageSize(this);" style="width:42px">15</a></li>
												</ul>


											</div>
											<span>条</span>
										</div>
										<div class="form-group">
											<span>共 <span id="countSpan">${count}</span> 页
											</span>
										</div>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

		</div>


		<!-- 			<!--bottom start -->
		<%-- 			<%@ include file="/WEB-INF/jsp/common/bottom.jsp"%> --%>
		<!-- 			<!--bottom end -->

	</div>
	</div>
</body>

</html>
