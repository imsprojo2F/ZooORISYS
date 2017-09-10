<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>登录信息</title>
	<!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <link rel="shortcut icon" href="favicon.ico"> <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">

	<script src="js/watch.js"></script>
	<script>
		$(function(){
			getList(0);
		});
		var pageNow = 1;
		var pageSize = 15;
		function getList(type){
			
			var total_ = $('#total').text();
			if(type=='pre'){
				pageNow = pageNow-1;
				if(pageNow<=0){
					pageNow = 1;
					return false;
				}
			}
			if(type=='next'){
				pageNow = pageNow+1;
				if(pageNow>total_){
					pageNow = total_;
					return false;
				}
			}
				$.ajax({
					url: '${pageContext.request.contextPath}/user/getLogList',
					type:'GET',
					dataType:'json',
					cache:false,
					data:{
						'page':pageNow,
						'rows':pageSize
					},
					success:function(data){
						$('#dataList').html('');
						$('#now').html(pageNow);
						$('#total').html(data.total);
						if(pageNow==data.total){
							$('#next').css('color','#eee');
							$('#pre').css('color','#67bef9');
						}
						if(pageNow==1){
							$('#pre').css('color','#eee');
							$('#next').css('color','#67bef9');
						}
						if(pageNow==1&&pageNow==data.total){
							$('#pre').css('color','#eee');
							$('#next').css('color','#eee');
						}
						var arr = data.rows;
						for(var i=0;i<arr.length;i++){
							var type = arr[i].type;
							if(type=='1'){
								type = '<span style="color:green">登录</span>';
							}else{
								type = '<span style="color:red">登出</span>';
							}
							var address = arr[i].address;
							if(address){
								address = address;
							}else{
								address = '未知地址';
							}
							var create_time = arr[i].create_time;
							$('#dataList').append('<tr ><td style="width:25%;">'+type+'</td><td style="width:30%;font-size:10px;">'+address+'</td><td style="width:45%;font-size:12px;">'+create_time+'</td></tr>');
						}
					}
				});	
		}
	</script>
    <style>
		tr{
			height:35px;
			line-height:35px;
			border-top:1px solid #eee;
			border-bottom:1px solid #eee;
			
		}
    </style>

</head>

<body class="gray-bg">
	<input type="hidden"
    <div class="wrapper wrapper-content  animated fadeInRight">
       	 <div style="width:100%;position:fixed;top:0;background:#fff;">
       	 	<table style="height:40px;width:100%;border:0px solid red;text-align:center;">
       	 		<tr style="font-weight:bold;">
       	 			<td style="width:25%;">操作类型</td>
       	 			<td style="width:30%;">操作地点</td>
       	 			<td style="width:45%;">操作时间</td>
       	 		</tr>
       	 	</table>
       	 </div>
       	 <table id="dataList" style="margin-top:40px;width:100%;border:0px solid red;text-align:center;font-size:13px;color:#676a6c;padding-bottom:35px;">
       	 		
       	 </table>
       	 <table style="height:40px;width:100%;border:0px solid red;text-align:center;">
       	 		<tr style="font-weight:bold;">
       	 			<td onclick="getList('pre')" style="width:40%;color:#67bef9;cursor:pointer;" id="pre">上一页</td>
       	 			<td style="width:20%;"><span id="now"></span>/<span id="total"></span></td>
       	 			<td onclick="getList('next')" style="width:40%;color:#67bef9;cursor:pointer;" id="next">下一页</td>
       	 		</tr>
       	 </table>

    </div>
</body>

</html>