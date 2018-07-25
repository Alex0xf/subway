<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
				<button type="button" onclick="updateChannelType(this)"
					class="add_upload_address btn btn-success btn-xs" value='{"ctime":"${i.ctime }"}'>
					<span class="glyphicon glyphicon-edit" aria-hidden="true"  ></span>
					修改
				</button>
			</div>
			<div class="col-md-2">
				<button type="button" class="delete_channel btn btn-danger btn-xs"
					onclick="delete_channel(this);" id=""  value='{"ctime":"${i.ctime }"}'>
					<span class="glyphicon glyphicon-trash" aria-hidden="true" ></span>
					删除
				</button>
			</div>
		</td>
	</tr>
</c:forEach>