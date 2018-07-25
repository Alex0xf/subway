<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <div class="ibox-content">
   <div class="table-responsive">     

         <form action='books/list?page=addABook&&adminname=${adminname}' method="post">
             <div class="form-group">
			    <label>书籍id</label>
			    <input type="text" class="form-control" name="true_book_id"  placeholder="请输入书籍id如3000">
			  </div>
			  <div class="form-group">
			    <label>书名</label>
			    <input type="text" class="form-control" name="book_name"  placeholder="name" autocomplete="off">
			  </div>
			  <div class="form-group">
			    <label>作者</label>
			    <input type="text" class="form-control" name="book_author"  placeholder="author" autocomplete="off">
			  </div>
			  <div class="form-group">
			    <label for="bookName">一级id</label>
			    <input type="text" class="form-control" name="book_ftypeId"  value="9">
			  </div>
			
			  <div class="form-group">
			    <label>二级id</label>
			    <input type="text" class="form-control" name="book_stypeId"  value="89">
			  </div>
			
			  <div class="form-group">
			    <label>更新状态：请输入数字(1连载/2完本)</label>
			    <input type="text" class="form-control" name="book_status"  value="1">
			  </div>
			  <button type="submit" class="btn btn-success "><i class="fa fa-check"> 确认添加</i></button>
       </form>
         
                
    </div>
</div>

            
            















