<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <div class="ibox-content">
   <div class="table-responsive">     

         <form action='books/list?page=updateByBookId&&adminname=${admin_model.adminName}' method="post">
			  <div class="form-group">
			    <label>ID</label>
			    <input type="text" class="form-control" name="book_id" readonly="readonly"  value="${bookId}">
			  </div>
			  <div class="form-group">
			    <label>书名</label>
			    <input type="text" class="form-control" name="book_name"  value="${bookName}">
			  </div>
			  <div class="form-group">
			    <label>作者</label>
			    <input type="text" class="form-control" name="book_author"  value="${author}">
			  </div>
			  <div class="form-group">
			    <label for="bookName">一级id</label>
			    <input type="text" class="form-control" name="book_ftypeId"  value="${ftypeId}">
			  </div>
			 <%--  <div class="form-group">
			    <label>一级名称</label>
			    <input type="text" class="form-control" name="book_ftypename" placeholder="${ftypeName}">
			  </div> --%>
			  <div class="form-group">
			    <label>二级id</label>
			    <input type="text" class="form-control" name="book_stypeId"  value="${stypeId}">
			  </div>
			 <%--  <div class="form-group">
			    <label>二级名称</label>
			    <input type="text" class="form-control" name="book_stypeName" placeholder="${stypeName}">
			  </div> --%>
			  <div class="form-group">
			    <label>更新状态：请输入数字(1连载/2完本)</label>
			    <input type="text" class="form-control" name="book_status"  value="${status}">
			  </div>
			  <button type="submit" class="btn btn-success "><i class="fa fa-check"> 确认修改</i></button>
       </form>
         
                
    </div>
</div>

            
            















