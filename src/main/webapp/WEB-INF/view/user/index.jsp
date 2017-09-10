<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <title>ZooORI.用户主页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <%-- <%@ include file="/includes/common.jsp"%> --%>
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <link rel="shortcut  icon" type="image/x-icon" href="img/favicon.ico" media="screen"  />
    <script type="text/javascript" src="../js/util.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/watch.js"></script>
    <!-- 交互通知 -->
    <link rel="stylesheet" href="css/iziToast/iziToast.min.css">
	<link rel="stylesheet" type="text/css" href="css/iziToast/htmleaf-demo.css">
	
	<script>
		
		$(function(){
			
			var account = '${account.account}';
			if(!account){
				account = 'Stranger';
			}
			$(".trigger-custom2").on('click', function (event) {
			    event.preventDefault();

			    iziToast.show({
			        class: 'test',
			        color: 'dark',
			        icon: 'icon-contacts',
			        title: 'Hello!',
			        message: account,
			        position: 'topCenter',
			        transitionIn: 'flipInX',
			        transitionOut: 'flipOutX',
			        progressBarColor: 'rgb(0, 255, 184)',
			        image: 'img/avatar.jpg',
			        imageWidth: 70,
			        layout:2,
			        onClose: function(){
			            console.info('onClose');
			        },
			        iconColor: 'rgb(0, 255, 184)'
			    });
			});
			
			$('#hello').click();
			
			//判断设备
			
			if(isMobile()){
				$('#nav01').hide();
			}else{
				$('#nav02').hide();
			}
			
		});
	
	</script>
	
</head>
<body class="fixed-sidebar full-height-layout gray-bg" style="overflow-y:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-black-tie"></i>
                                        <strong style="color:#67bef9;opacity:0.65;filter: alpha(opacity=65)" onmouseover="changeColor(this,1)" onmouseout="changeColor(this,0)" class="font-bold">Z<span style="color:#97EA74">oo</span>ORI</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">ZooORI
                        </div>
                    </li>
                    <!-- <li class="hidden-folded padder m-t m-b-sm text-muted text-xs">
                        <span class="ng-scope">分类</span>
                    </li> -->
                    <li>
                        <a class="J_menuItem" href="main">
                            <i class="fa fa-home"></i>
                            <span class="nav-label">个人主页</span>
                        </a>
                    </li>
                    <li>
                        <a class="J_menuItem" href="operateInfo">
                            <i class="glyphicon glyphicon-user"></i>
                            <span class="nav-label">信息管理</span>
                        </a>
                    </li>
                    <li>
                        <a class="J_menuItem" href="loginLog">
                            <i class="glyphicon glyphicon-info-sign"></i>
                            <span class="nav-label">登录/登出信息</span>
                        </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-edit"></i> <span class="nav-label">表单</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a class="J_menuItem" href="form_basic.html">基本表单</a>
                            </li>
                            <li><a class="J_menuItem" href="form_validate.html">表单验证</a>
                            </li>
                            <li><a class="J_menuItem" href="form_advanced.html">高级插件</a>
                            </li>
                            <li><a class="J_menuItem" href="form_wizard.html">表单向导</a>
                            </li>
                            <li>
                                <a href="#">文件上传 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="form_webuploader.html">百度WebUploader</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_file_upload.html">DropzoneJS</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">编辑器 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li><a class="J_menuItem" href="form_editors.html">富文本编辑器</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_simditor.html">simditor</a>
                                    </li>
                                    <li><a class="J_menuItem" href="form_markdown.html">MarkDown编辑器</a>
                                    </li>
                                    <li><a class="J_menuItem" href="code_editor.html">代码编辑器</a>
                                    </li>
                                </ul>
                            </li>
                            <li><a class="J_menuItem" href="layerdate.html">日期选择器layerDate</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <!--左侧导航结束-->
       
       
        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div>
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" method="post" action="search_results.html">
                            <div class="form-group">
                                <input type="text" placeholder="请输入您需要查找的内容 …" class="form-control" name="top-search" id="top-search">
                            </div>
                        </form>
                    </div>
                    <ul id="nav01" class="nav navbar-top-links navbar-right">
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" title="点击可查看登录信息" href="#">
                               	 Hi,<strong style="color:#67bef9;">
                               	 		<c:if test="${account.account==null||account.account==''}">Stranger</c:if>
                               	 		<c:if test="${account.account!=null&&account.account!=''}">${account.account}</c:if>
                               	 	</strong>&nbsp;&nbsp;<i class="fa fa-user"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                            	<li>
	                               <div>
	                                 <h3>登录/登出信息</h3>
	                               </div>
	                            </li>
	                            <li class="divider"></li>
                            	<c:forEach items="${logList}" var="logList">
                            		<li>
	                                   <div>
	                                 	  <span class="justify">${logList.address}</span>
	                                      <span class="pull-right text-muted small">${logList.create_time}</span>
	                                   </div>
	                                </li>
	                                <li class="divider"></li>
                            	</c:forEach>
                                <li>
                                    <div class="text-center link-block">
                                        <a class="J_menuItem" href="loginLog">
                                            <strong>查看所有 </strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown pull-right">
                            <a class="dropdown-toggle count-info" href="loginOut">
                               	 退出&nbsp;&nbsp;<i class="fa fa-sign-out"></i>
                            </a>
                        </li>
                    </ul>
                    <a href="loginOut" style="color:#676A7F;">
                    	<div id="nav02" style="position:absolute;z-index:9999;right:0px;top:0px;border:0px solid red;padding:15px 25px">退出</div>
                	</a>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="main" frameborder="0" data-id="user/main.jsp" seamless></iframe>
            </div>
        </div>
        <!--右侧部分结束-->
    </div>
    
    
    <div class="htmleaf-container" style="display:none;">
		<main>
			<section class="cd-section" id="Welcome">
				<div class="highlight bg">
					<div class="core">
		                    <button class="trigger-custom2" id="hello">Custom II</button>
		            </div>
				</div>
			</section>
		</main>
	</div>
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script src="js/iziToast/iziToast.min.js" type="text/javascript"></script>
	<script src="js/iziToast/demo.js" type="text/javascript"></script>

    <!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="js/plugins/layer/layer.min.js"></script>

    <!-- 自定义js -->
    <script src="js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="js/index.js"></script>

    <!-- 第三方插件 -->
    <script src="js/plugins/pace/pace.min.js"></script>


<!-- <div id="audio" onmouseover="changeOpacity(this,'1')" onmouseout="changeOpacity(this,'0')" style="width:20%;position:fixed;margin:auto;left:0;bottom:0;z-index:9999;background:; filter: alpha(opacity=50); opacity: 0.5;">
			<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=280 height=52 src="//music.163.com/outchain/player?type=0&id=567541310&auto=1&height=32"></iframe>
	</div> -->
</body>

</html>