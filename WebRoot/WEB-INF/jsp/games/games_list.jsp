<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
  <title>游戏列表页</title>
    <%@ include file="../common/head.jsp" %>
  </head>
  
  <body>
   
    <div id="wrapper">
      <!--left start  -->
      <%@ include file="../common/left.jsp" %>
      <!--left end  -->
        <div id="page-wrapper" class="gray-bg">
          <!--top start  -->
       	  <%@ include file="../common/top.jsp" %>
          <!--top end  -->
           
            <!-- 面包屑 start-->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>游戏管理系统</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="static/inspinia/index.html">首页</a>
                        </li>
                        <li>
                            <a href="games/manage">游戏管理</a>
                        </li>
                        <li class="active">
                            <strong>游戏列表</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
            <!-- 面包屑 end-->
            
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="static/inspinia/table_data_tables.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="static/inspinia/table_data_tables.html#">Config option 1</a>
                                </li>
                                <li><a href="static/inspinia/table_data_tables.html#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">

                        <div class="table-responsive">
                          <div class="">
            				<a href="games/manage" class="btn btn-primary ">添加</a>
            			  </div>
                    <table id="editable" class="table table-striped table-bordered table-hover dataTables-example" >
                    <thead>
                    <tr>
                        <th>名称</th>
                        <th>标题</th>
                        <th>下载量</th>
                        <th>大小(M)</th>
                        <th>状态</th>
                        <th>分类</th>
                        <th>平台类型</th>
                        <th>推荐类型</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    
                    </table>
                        </div>

                    </div>
                </div>
            </div>
            </div>
         
        </div>
        <!--bottom start -->
        <%@ include file="../common/bottom.jsp" %>
        <!--bottom end -->
        </div>
        </div>


    <!-- Page-Level Scripts 分页-->
    <script>
        $(document).ready(function(){
        	selectGamesType()
        	InitTable();
        });
        // 页面加载的时候获取所有的gamesType
        var gamesType = new Array();
        function selectGamesType() {
        	$.getJSON("games/type/JSON", {}, function(data){
				$.each(data, function(i, p){
					gamesType.push(p.typeName);
				})
			});
        }    
        // 初始化表格
        function InitTable(){
            $('.dataTables-example').DataTable({
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    {extend: 'copy'},//在搜索框后面加按钮
                    {extend: 'csv'},
                    {extend: 'excel', title: 'ExampleFile'},
                    {extend: 'pdf', title: 'ExampleFile'},

                    {extend: 'print',
                     customize: function (win){
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                    .addClass('compact')
                                    .css('font-size', 'inherit');
                    }
                    }
                ],
                ajax: {
                   url: 'games/ajax_list',
                   dataSrc: 'DATA_LIST'
                },
                columns: [
                {data:'name'},
                {data:'title'},
                {data:'downloadCount'},
                {data:'size'},
                // 状态(1启用, 0下线)
                {
                	data:'status',
                	render: function(data) {
                		switch (data) {
                			case 0:
                			data = "下线";
                			break;
                			case 1:
                			data = "启用";
                			break;
                		}
                		return data;
                	}
                },
                // 游戏分类id
                {
                	data:'tid',
                	render: function(data) {
                		return gamesType[data - 1];;
                	}
                },
                // 平台类型：1all, 2android, 3ios
                {
                	data:'platform',
                	render: function(data) {
                		switch (data) {
                			case 1:
                			data = "all";
                			break;
                			case 2:
                			data = "android";
                			break;
                			case 3:
                    		data = "ios";
                    		break;
                		}
                		return data;
                	}
                },
                // 推荐类型：1普通, 2最新, 3精选, 4首页推荐
                {
                	data:'recType',
                	render: function(data) {
                		switch (data) {
                			case 1:
                			data = "普通";
                			break;
                			case 2:
                			data = "最新";
                			break;
                			case 3:
                    		data = "精选";
                    		break;
                			case 4:
                       		data = "首页推荐";
                       		break;
                		}
                		return data;
                	}
                },
                {
                "targets": -1,
                "data": null,
                "defaultContent": "<button>修改</button>"
                }
                ]
            });
        }

/*         //添加按钮
        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData( [
                "新的一行",
                "2",
                "3",
                "3",
                "3",
                "3",
                "3",
                "3"
           ] );
        } */
        
        //给操作按钮添加点击事件的方法
      $('#editable tbody').on( 'click', 'button', function () {
        //var data = table.row( $(this).parents('tr') ).data();
        alert( 1 );
    } );
    </script>
    
  </body>
</html>
