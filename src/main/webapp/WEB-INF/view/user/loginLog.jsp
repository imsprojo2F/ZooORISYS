<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录信息</title>
	<meta name="keywords" content="">
    <meta name="description" content="">
	<!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">

    <!-- jqgrid-->
    <link href="css/plugins/jqgrid/ui.jqgrid.css?0820" rel="stylesheet">

    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
	<script src="js/watch.js"></script>
    <style>
        /* Additional style to fix warning dialog position */

        #alertmod_table_list_2 {
            top: 900px !important;
        }
    </style>
    
    <script>
    	$(function(){
    		if(isMobile()){
    			location.href="toLoginLog_mobile";
    		}else{
    			
    		}
    	});
    </script>

</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content  animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox ">
                    <div class="ibox-content">
                        <div class="jqGrid_wrapper">
                            <table id="table_list_2"></table>
                            <div id="pager_list_2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    



    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>

    <!-- jqGrid -->
    <script src="js/plugins/jqgrid/i18n/grid.locale-cn.js?0820"></script>
    <script src="js/plugins/jqgrid/jquery.jqGrid.min.js?0820"></script>

    <!-- 自定义js -->
    <script src="js/content.js?v=1.0.0"></script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function () {

            $.jgrid.defaults.styleUI = 'Bootstrap';
            
            // Configuration for jqGrid Example 2
            $("#table_list_2").jqGrid({
                url: '${pageContext.request.contextPath}/user/getLogList',
                datatype: "json",
                height: 550,
                autowidth: true,
                shrinkToFit: true,
                rownumbers: true,
                rowNum: 15,
                rowList: [15, 25, 35],
                colNames: [/* '序号', */ '操作类型','操作地址', '操作时间'],
                alogn:'center',
                colModel: [
                    /* {
                        name: 'id',
                        index: 'id',
                        editable: true,
                        width: 60,
                        sorttype: "int",
                        search: true
                    }, */
                    {
                        name: 'type',
                        index: 'type',
                        editable: false,
                        align:'center',
                        sortable:false,
                        autowidth:true,
                        width: 100,
                        formatter: function(value){
                        	if(value==1){
                        		return '<span style="color:green">登录</span>';
                        	}else{
                        		return '<span style="color:red">登出</span>';
                        	}
                        }
                    },{
                        name: 'address',
                        index: 'address',
                        editable: false,
                        align:'center',
                        sortable:false,
                        autowidth:true,
                        width: 100,
                        formatter: function(value){
                        	if(value){
                        		return value;
                        	}else{
                        		return '未知地址';
                        	}
                        }
                    },
                    {
                        name: 'create_time',
                        index: 'create_time',
                        editable: false,
                        autowidth:true,
                        width: 75,
                        align:'center',
                        sortable:false,
                        //sorttype: "date",
                        formatter: "datetime"
                    }
                ],
                pager: "#pager_list_2",
                emptyrecords: "暂无信息",
                viewrecords: true,
                caption: "登录/登出信息",
                add: true,
                edit: true,
                addtext: 'Add',
                edittext: 'Edit',
                hidegrid: true,
                loadtext:'努力加载中...',
                pginput:true,
                scroll:false
            });
            
            

            // Add selection
            $("#table_list_2").setSelection(4, true);


            // Setup buttons
            $("#table_list_2").jqGrid('navGrid', '#pager_list_2', {
                edit: false,
                add: false,
                del: false,
                search: false,
                reload:false
            }, {
                height: 200,
                reloadAfterSubmit: true
            });

            // Add responsive to jqGrid
            $(window).bind('resize', function () {
                var width = $('.jqGrid_wrapper').width();
                $('#table_list_2').setGridWidth(width);
            });
 
            
        });
    </script>

    <style>
    	#jqgh_table_list_2_address {
		    text-align: center;
		}
		#jqgh_table_list_2_type {
		    text-align: center;
		}
		#jqgh_table_list_2_create_time {
		    text-align: center;
		}
    </style>
    

</body>

</html>