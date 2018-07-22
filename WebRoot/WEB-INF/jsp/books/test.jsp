 <%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
                <h5>Editable Table in- combination with jEditable</h5>
                <div class="ibox-tools">
                    <a class="collapse-link">
                        <i class="fa fa-chevron-up"></i>
                    </a>
                    <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                        <i class="fa fa-wrench"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="table_data_tables.html#">Config option 1</a>
                        </li>
                        <li><a href="table_data_tables.html#">Config option 2</a>
                        </li>
                    </ul>
                    <a class="close-link">
                        <i class="fa fa-times"></i>
                    </a>
                </div>
            </div>
            <div class="ibox-content">
            <div class="">
            <a onclick="fnClickAddRow();" href="javascript:void(0);" class="btn btn-primary ">Add a new row</a>
            </div>
            <table class="table table-striped table-bordered table-hover dataTables-example" id="editable" >
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
                    <tr class="gradeA">
                <td>Misc</td>
                <td>NetFront 3.1</td>
                <td>Embedded devices</td>
                <td>Embedded devices</td>
                <td>Embedded devices</td>
                <td>Embedded devices</td>
                <td>Embedded devices</td>
                <td class="center">-</td>
                <td class="center">C</td>
            </tr>
                    </tbody>
                    
                    </table>
                        </div>

                    </div>
                </div>
            </div>
            </div>
         
   
   


    <!-- Page-Level Scripts -->
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
                ]

            });



          /* Init DataTables */
            var oTable = $('#editable').DataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable( '../example_ajax.php', {
                "callback": function( sValue, y ) {
                    var aPos = oTable.fnGetPosition( this );
                    oTable.fnUpdate( sValue, aPos[0], aPos[1] );
                },
                "submitdata": function ( value, settings ) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition( this )[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            } );


       
          

        });
        
         function fnClickAddRow() {
            $('#editable').dataTable().fnAddData( [
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row",
                "New row",
                "New row",
                "New row",
                "New row" ] );

        }
        
         //给按钮添加点击事件的方法，点击则删除
      $('#editable tbody').on( 'click', 'button', function () {
        //var data = table.row( $(this).parents('tr') ).data();
       table.row( $(this).parents('tr') ).remove();
    }); 
   </script>
   
     
    