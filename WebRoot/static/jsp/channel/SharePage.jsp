<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<li><a href="JavaScript:void(0)" aria-label="Previous"> <span
		aria-hidden="true" onclick="pageUp();">&laquo;</span>
</a></li>
<c:forEach begin="${pageNum}" end="${pageNum+4}" var="i">
	<c:if test="${pageNum eq i}">
		<li class="active" id = "${i+1}"><a href="JavaScript:void(0)" onclick="pageNum(this);">${i+1}</a></li>
	</c:if>
	<c:if test="${pageNum lt i}">
	<li id = "${i+1}"><a href="JavaScript:void(0)" onclick="pageNum(this);">${i+1}</a></li>	
	</c:if>
</c:forEach>
<li><a href="JavaScript:void(0)" aria-label="Next"
	onclick="pageDown();"> <span aria-hidden="true">&raquo;</span>
</a></li>