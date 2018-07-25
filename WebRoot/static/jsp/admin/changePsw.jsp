<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ page language="java" import="com.javasm.subway.utills.EncryptByMD5" pageEncoding="UTF-8"%> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- 面包屑 start-->
            <div class="row wrapper border-bottom white-bg page-heading ">
                <div class="col-lg-10">
                    <h3></h3>
                    <ol class="breadcrumb">
                        <li>
                            <a href="javascript:void(0)"  onclick="gotoHomePage()">Home</a>
                        </li>
                       
                    </ol>
                </div>
                
            </div>
            <!-- 面包屑 end-->
            
<div class="wrapper wrapper-content animated fadeInRight bookslist" id="changePsw">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up">
                                </i>
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
                            <form action='admin_login?page=doChangeAdminPsw' method="post" ><!-- onsubmit="return isPswIeagle()" -->
				              <div class="form-group">
							    <label>用户名</label>
							    <input type="text" class="form-control" name="admin_name" value="${admin_model.adminName}" readonly="readonly">
							  </div>
							  <div class="form-group">
							    <label>原始密码</label>
							    <input type="text" class="form-control" name="before_password" id="before_password" placeholder="请输入原始密码" autocomplete="off">
							  </div>
							  <div class="form-group">
							    <label>更改后的密码</label>
							    <input type="text" class="form-control" name="new_password"  placeholder="请输入更改后的密码" autocomplete="off">
							  </div>
							  <div class="form-group">
							    <label>再次确认密码</label>
							    <input type="text" class="form-control" name="confirm_new_password"  placeholder="请再次输入" autocomplete="off">
							  </div>
							  <button type="submit" class="btn btn-primary " id="mySubmit"><i class="fa fa-check">确认更改</i></button>
                           </form>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </div>
<!-- <script type="text/javascript">
 function isPswIeagle(){
   if("${admin_model.password}"!=EncryptByMD5.MD5($("#before_password").val())){
     alert("输入密码错误");
     return false;
   }
     
  }
</script> -->



            
            















