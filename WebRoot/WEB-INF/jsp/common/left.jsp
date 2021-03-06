<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%> --%>
<%-- <base href="<%=basePath%>"> --%>
<nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="/subway/static/inspinia/img/profile_small.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="/static/inspinia/table_data_tables.html#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">${admin_model.adminName}</strong>
                             </span> <span class="text-muted text-xs block">Art Director <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li><a href="javascript:void(0)">Profile</a></li>
                            <li><a href="javascript:void(0)">Contacts</a></li>
                            <li><a href="javascript:void(0)" onclick="changeAdminPsd()">ChangePassword</a></li>
                            <li class="divider"></li>
                            <li><a href="static/jsp/admin/login.jsp">Logout</a></li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        IN+
                    </div>
                </li>
                <li>
                    <a href="javascript:void(0)" onclick="gotoHomePage()"><i class="fa fa-th-large"></i> <span class="nav-label">首页</span></a>
                    
                </li>
                <li>
                    <a href="/static/inspinia/layouts.html"><i class="fa fa-diamond"></i> <span class="nav-label">管理中心</span><span class="fa arrow"></span></a>
                     <ul class="nav nav-second-level collapse">
                        <li><a href="javascript:void(0)">权限管理</a></li>
                        <li><a href="javascript:void(0)">菜单管理</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a ><i class="fa fa-bar-chart-o"></i> <span class="nav-label">模拟管理</span></a>
                    
                </li>
                <li>
                    <a ><i class="fa fa-envelope"></i> <span class="nav-label">广告管理 </span><span class="label label-warning pull-right">16/24</span></a>
                </li>
                <li>
                    <a ><i class="fa fa-pie-chart"></i> <span class="nav-label">游戏管理</span><span class="fa arrow"></span></a>
                     <ul class="nav nav-second-level collapse">
                        <li><a href="games/list">游戏配置</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0)"><i class="fa fa-flask"></i> <span class="nav-label">合作公司管理</span></a>
                </li>
                <li>
                    <a href="/static/inspinia/table_data_tables.html#"><i class="fa fa-edit"></i> <span class="nav-label">渠道版本</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                         <li><a href="JavaScript:void(0)" onclick="loadchannel();">渠道管理</a></li>
                        <li><a href="JavaScript:void(0)" onclick="loadchanneltype();">渠道分类管理</a></li>
                        
                    </ul>
                </li>
                <li>
                    <a ><i class="fa fa-desktop"></i> <span class="nav-label">cp</span>  <span class="pull-right label label-primary">SPECIAL</span></a>
                    
                </li>
                <li>
                    <a ><i class="fa fa-files-o"></i> <span class="nav-label">图书管理</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level collapse">
                        <li><a href="javascript:void(0)" onclick="gotoBookListPage()">图书列表</a></li>
                    </ul>
                </li>
                <li>
                    <a ><i class="fa fa-globe"></i> <span class="nav-label">标签管理</span><span class="label label-info pull-right">NEW</span></a>
                    
                </li>
                <li>
                    <a ><i class="fa fa-flask"></i> <span class="nav-label">分类管理</span></a>
                   
                </li>

                <li>
                    <a ><i class="fa fa-laptop"></i> <span class="nav-label">推荐管理</span></a>
                </li>
               
               </ul>

        </div>
    </nav>
    
  <script type="text/javascript">
		
		 function gotoBookListPage(){
		  var url = "books/list";
			$.post(url,{page:"list",admin:'${adminname}'}, function(data) {
				$(".ajax_replace").html(data);
			}, "html");
		 }
		 
		 function gotoHomePage(){
		  var url = "admin_index";
			$.post(url,{page:"hello"}, function(data) {
				$(".ajax_replace").html(data);
			}, "html");
		 }
		 
		 function changeAdminPsd(){
		   $.post("admin_login",{page:"changePsw",admin:'${adminname}'}, function(data) {
				$(".ajax_replace").html(data);
			}, "html");
		 }
	</script>
