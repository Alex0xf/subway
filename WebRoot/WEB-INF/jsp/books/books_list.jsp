<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 面包屑 start-->
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>图书管理系统</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="javascript:void(0)"  onclick="gotoHomePage()" >Home</a>
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
                            <a class="dropdown-toggle" data-toggle="dropdown" href="/subway/static/inspinia/table_data_tables.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="/subway/static/inspinia/table_data_tables.html#">Config option 1</a>
                                </li>
                                <li><a href="/subway/static/inspinia/table_data_tables.html#">Config option 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    
                    <%--更改/添加图书信息时用ajax刷新 start --%>
                    <div class="ajax_book_updateORadd">
                    <div class="ibox-content">
                        <div class="table-responsive">     
            <button class="btn btn-primary dim" id="booklist_add_button"><i class="fa fa-plus-circle"> 添加</i></button>
            <button class="btn btn-danger dim" id="booklist_delete_button" ><i class="fa fa-warning"> 删除</i></button> 
            <button class="btn btn-success dim" id="booklist_update_button" ><i class="fa fa-paste"> 修改</i></button> 
            
                 <table id="editable" class="table table-striped table-bordered table-hover dataTables-example display" >
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
                        <!-- <th>操作</th> -->
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                    </table>
                   
                        </div>
                     </div>
                    </div>
                <%--更改图书信息时用ajax刷新 end --%>
                     
                     
                </div>
            </div>
            </div>
         
        </div>
   


    <!-- Page-Level Scripts -->

    <script type="text/javascript">
        $(document).ready(function(){
            var table =$('.dataTables-example').DataTable({
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
                "deferRender": true,//延迟渲染数据以提高速度
                columns: [
                {data:'id'},
                {data:'bookName'},
                {data:'authorName'},
                {data:'ftype_id'},
                {data:'ftype_name'},
                {data:'stype_id'},
                {data:'stype_name'},
                {data:'status',
                	render: function(data) {
                		switch (data) {
                			case 1:
                			data = "连载";
                			break;
                			case 2:
                			data = "完本";
                			break;
                		}
                		return data;
                	}}/* ,
                {
                "targets": -1,
                "data": null,
                 "defaultContent": '<a href="javascript:void(0);" class="btn btn-danger " id="booklist_delete_button" >删除</a>'
                } */

                ]

            });
            
	//点表格选中当前行 并更改样式突出显示
	 var thisbookID; 
	 var thisbookname;
	 var thisauthor;
	 var thisftypeId;
	 var thisftypeName;
	 var thisstypeId;
	 var thisstypeName;
	 var thisstatus;
    $('#editable tbody')
     .on( 'click', 'tr', function () {
     
        if ( $(this).hasClass('selected') ) {
            $(this).removeClass('selected');
        }
        else {
            table.$('tr.selected').removeClass('selected');
            $(this).addClass('selected');
            thisbookID=this.firstChild.innerHTML; //选中时获取ID
            thisbookname=this.childNodes[1].innerHTML;
            thisauthor=this.childNodes[2].innerHTML;
            thisftypeId=this.childNodes[3].innerHTML;
            thisftypeName=this.childNodes[4].innerHTML;
            thisstypeId=this.childNodes[5].innerHTML;
            thisstypeName=this.childNodes[6].innerHTML;
            thisstatus=this.childNodes[7].innerHTML;
        }
    } );
 

     //删除指定行的图书信息
     $('#booklist_delete_button').click( function () { 
         if(thisbookID==null){
         alert("请选择要删除的行");
         }else{ 
         //确认是否删除 
        if(confirm("是否确认删除ID为："+thisbookID+"的记录"))
        {
        //在表格显示页面将该条数据移除
        table.row('.selected').remove().draw( false );
        //不在jsp页面处理复杂逻辑，去servlet页面处理
        $.post("books/list",{page:"delete",book_id:thisbookID},function(data){
        },"html");
        alert("删除成功");
        } 
         }

    } );
           
      //修改指定行的图书信息
     $('#booklist_update_button').click( function () { 
        if(thisbookID==null){
         alert("请选择要修改的行");
         }else{ 
      $.post("books/list",{page:"update",book_id:thisbookID,book_name:thisbookname,book_author:thisauthor,book_ftypeId:thisftypeId,book_ftypename:thisftypeName,book_stypeId:thisstypeId,book_stypeName:thisstypeName,book_status:thisstatus},function(data){
          $(".ajax_book_updateORadd").html(data);
        },"html"); 
        }
        
    } );
           
           
       //增加一条图书记录
        $('#booklist_add_button').click( function () { 
        
      $.post("books/list",{page:"add"},function(data){
          $(".ajax_book_updateORadd").html(data);
        },"html"); 
        
        
    } );
       
          
        });
    
   </script>
   
     
