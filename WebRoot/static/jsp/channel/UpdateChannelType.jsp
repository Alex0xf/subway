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
							<form method="get" onsubmit="return updateForm();"
								id="ChannelTypeForm" action="AddChannelTypeServlet">
								<div class="row">
									<div class="col-md-5 col-md-offset-2"  >
										<div class="col-md-12">
											<div class="form-group has-success has-feedback"
												id="TypeNameDiv">
												<label class="control-label" for="inputSuccess2">分类名称</label>
												<input type="text" name="type_name" class="form-control"
													id="inputSuccess2" aria-describedby="inputSuccess2Status"
													value="${channelTypeControlModel.typeName}" placeholder="${channelTypeControlModel.typeName}" onblur="typeNameOnblur(this);">
												<span id="TypeNameCheck" class="" aria-hidden="true"></span>
											</div>
											<div class="form-group has-success">
												<label class="control-label">父级</label> <select
													class="form-control" name="father_type" id="father_select">
														<c:choose>
															<c:when test="${channelTypeControlModel.fatherName eq null}">
															<option class="text-center " value="0">无父级</option>
															</c:when>
															<c:when test="${channelTypeControlModel.fatherName eq null}">
															<option class="text-center " value="0">无父级</option>
															</c:when>
															<c:otherwise>
															<option class="text-center " value="2">${channelTypeControlModel.fatherName}</option>
															</c:otherwise>
														</c:choose>
															
														
													<c:forEach items="${list}" var="i">
														<c:choose>
															<c:when test="${i.fatherName eq null}">
																<option class="text-center " value="0">无父级</option>
															</c:when>
															<c:when test="${empty i.fatherName}">
																<option class="text-center " value="0">无父级</option>
															</c:when>
															<c:otherwise>
																<option class="text-center " value="2">${i.fatherName}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</select>
											</div>
<!-- 											为了传递时间设置的隐藏框 -->
											<input type="text" style="display:none" name = "ctime" value="${ctime}">
											<div class="form-group has-success has-feedback" id="SortDiv">
												<label class="control-label" for="inputSuccess3">标签排序</label>
												<input type="text" class="form-control" id="inputSuccess3"
													aria-describedby="inputSuccess3Status" placeholder="${channelTypeControlModel.sort}"
													name="tag_sort" onblur="SortOnblur(this);" value="${channelTypeControlModel.sort}"> <span
													id="SortCheck" class="" aria-hidden="true"></span>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-12 ">
											<div class="form-group has-success">
												<label class="control-label" for="inputSuccess4">备注</label>
												<textarea rows="3" class="form-control" name="description" id="inputSuccess4"   placeholder="${channelTypeControlModel.description}" >${channelTypeControlModel.description}</textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-5 col-md-offset-2">
										<div class="col-md-5 ">
											<button type="submit" class="btn btn-success">修改</button>
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
