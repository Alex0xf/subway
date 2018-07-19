<%-- <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
   <base href="<%=basePath%>">
  <title>图书列表页</title>
    <%@ include file="../common/head.jsp" %>
  </head>
  
  <body>
   
    <div id="wrapper">
    <!--left start  -->
    <%@ include file="../common/left.jsp" %>
     <!--left endt  -->
        <div id="page-wrapper" class="gray-bg">
        <!--top start  -->
       <%@ include file="../common/top.jsp" %>
           <!--top end  -->
           
           
          --%>
           <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
           <!-- 面包屑 start-->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>图书管理系统</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="static/inspinia/index.html">Home</a>
                        </li>
                        <li>
                            <a>图书管理</a>
                        </li>
                        <li class="active">
                            <strong>图书列表</strong>
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
                           
            <a onclick="fnClickAddRow();" href="javascript:void(0);" class="btn btn-primary ">添加</a>
            
                    <table id="editable" class="table table-striped table-bordered table-hover dataTables-example" >
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>书名</th>
                        <th>作者</th>
                        <th>一级id</th>
                        <th>一级名称</th>
                        <th>二级id</th>
                        <th>二级名称</th>
                        <th>更新状态</th>
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
            $('.dataTables-example').DataTable({
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [
                    { extend: 'copy'},//在搜索框后面加按钮
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
                   url: 'books/ajax_list',
                   dataSrc: 'DATA_LIST'
                },
                columns: [
                {data:'id'},
                {data:'bookName'},
                {data:'authorName'},
                {data:'ftype_id'},
                {data:'ftype_name'},
                {data:'stype_id'},
                {data:'stype_name'},
                {data:'status'},
                {
                "targets": -1,
                "data": null,
                "defaultContent": "<button>Delete!</button>"}
                ]
            });
        });


        //添加按钮
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
        }
        
        //给按钮添加点击事件的方法，点击则删除
      $('#editable tbody').on( 'click', 'button', function () {
        //var data = table.row( $(this).parents('tr') ).data();
       table.row( $(this).parents('tr') ).remove();
    } );
    </script>
    
<!--   </body>
</html> -->
