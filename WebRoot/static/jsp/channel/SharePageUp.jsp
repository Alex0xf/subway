<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<li><a href="JavaScript:void(0)" aria-label="Previous"> <span
		aria-hidden="true" onclick="pageUp();">&laquo;</span>
</a></li>
<c:forEach begin="${pageNum}" end="${pageNum+4}" var="i">
	<c:choose>
		<c:when test="${pageNum+4 eq i}">

			<li class="active" id="${i+1}"><a href="JavaScript:void(0)"
				onclick="pageNum(this);">${i+1}</a></li>
		</c:when>
		<c:otherwise>
			<li id="${i+1}"><a href="JavaScript:void(0)"
				onclick="pageNum(this);">${i+1}</a></li>
		</c:otherwise>
	</c:choose>

</c:forEach>
<li><a href="JavaScript:void(0)" aria-label="Next"
	onclick="pageDown();"> <span aria-hidden="true">&raquo;</span>
</a></li>