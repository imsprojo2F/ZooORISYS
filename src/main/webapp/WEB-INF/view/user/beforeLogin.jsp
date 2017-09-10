<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="/includes/common.jsp"%>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1,user-scalable=no">
	<link rel="shortcut  icon" type="image/x-icon" href="img/favicon.ico" media="screen"  />
	<title>ZooORI-筑蓝科技</title>
	<link rel="stylesheet" href="css/login.css">
	<link href="css/login_animate.css" rel="stylesheet">
	<link rel="stylesheet" href="css/iconfont.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/windmill.css">
	<link href="css/assets/animate.css" rel="stylesheet">
  	<link href="css/assets/style.css" rel="stylesheet">
	
	<script src="http://cdn.static.runoob.com/libs/jquery/1.10.2/jquery.min.js"></script>
	<script type="text/javascript" src="js/login.js"></script>
	<script src="js/assets/jquery.fittext.js"></script>
	<script src="js/assets/jquery.lettering.js"></script>
	<script src="js/assets/jquery.textillate.js"></script>
	<!-- 提示框 -->
	<link rel="stylesheet" href="css/sweet-alert.css">
	<link rel="stylesheet" href="css/animate.css">
	<script src="js/sweet-alert.js"></script>
	<script src="js/util.js"></script>
	<script type="text/javascript">
	//文字动画==================================================================
	
	$(function(){
		 watch();
		 var result = '${result}';
		 if(result=='账号注册成功'){
			 $('#result').html('<span style="color:green;font-size:20px;">账号注册成功。</span>');
		 }else if(result=='账号不可用，请重新注册'){
			 $('#wrap').css('line-height','100px');
			 $('#result').html('<span style="color:green;font-size:20px;">账号不可用，请重新注册。</span>');
			 $('#acc').hide();
			 $('#pass').hide();
			 $('#tip').html('<span style="color:red;">*</span>TIP：点击logo即可返回注册页。');
			 
		 }else{
			 $('#wrap').css('line-height','100px');
			 $('#result').html('<span style="color:green;font-size:20px;">账号注册失败，请稍候再试。</span>');
			 $('#acc').hide();
			 $('#pass').hide();
			 $('#tip').html('<span style="color:red;">*</span>TIP：点击logo即可返回注册页。');
		 }
	 });

	 function watch(){
		  var flag_ = 0;
		  //alert("test");
		  if(isMobile()){
			$('#audio').html('');
		  }else{

		  }
	}
	 
	 function isMobile() {
		    var sUserAgent = navigator.userAgent.toLowerCase();
		    var bIsIpad = sUserAgent.match(/ipad/i) == "ipad";
		    var bIsIphoneOs = sUserAgent.match(/iphone os/i) == "iphone os";
		    var bIsMidp = sUserAgent.match(/midp/i) == "midp";
		    var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == "rv:1.2.3.4";
		    var bIsUc = sUserAgent.match(/ucweb/i) == "ucweb";
		    var bIsAndroid = sUserAgent.match(/android/i) == "android";
		    var bIsCE = sUserAgent.match(/windows ce/i) == "windows ce";
		    var bIsWM = sUserAgent.match(/windows mobile/i) == "windows mobile";
		    return bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM ;
		}
	 
	 function changeColor(this_,color){
		 $(this_).css('background',color);
	 }
	 function toLogin(){
		 swal({
			  title: "是否已经记住您的账号和密码？",
			  text: "",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#DD6B55",
			  confirmButtonText: "是",
			  cancelButtonText: "否",
			  closeOnConfirm: false
			},
			function(isConfirm){
				  if (isConfirm) {
					  window.open('login.html','_self');
					  window.close();
				  } else {
				  }
				});
	 }
	 </script>
</head>


<body>
	
	<div style="width:100%;height:80px;position:fixed;top:0;background:;z-index: 999">
		<a href="quickSign.html" target="_self">
		<div class="logo">
			<span style="color:#67bef9;">Z<span id="Z">Z</span><span style="color: #97EA74;">oo</span>ORI<span id="I">I</span></span>
		</div>
	    </a>
		<div style="margin-top:-3%;">
			<div id="AMI01">
		  		<span class="ami01"></span>
			</div>
			<div id="AMI02">
				<span class="ami02"></span>
			</div>
		</div>
	</div>
	
	<div style="border-top:1px solid #eee;border-bottom:0px solid #eee;width:100%;height:200px;text-align:center;margin:auto;position:fixed;top:20%;background:;z-index: 999">
		<div id="wrap" style="width:80%;margin:auto;height:200px;border:0px solid red;">
			<div id="result" style="padding-top:30px"></div>
			<div id="acc" style="padding-top:30px">账号：${acc }</div>
			<div id="pass"style="padding:15px 0;">密码：${pass }</div>
			<div id="tip" style="padding:0;font-size:0.8rem;color:gray;line-height:25px;"><span style="color:red;">*</span>TIP：账号和密码由系统生成请尽快更改。</div>
		</div>
	</div>
	
	<div style="border-top:0px solid #eee;border-bottom:1px solid #eee;width:100%;height:45px;text-align:center;margin:auto;position:fixed;top:56%;background:;z-index: 999">
		<div id="wrap_" style="width:50%;margin:auto;height:45px;line-height:45px;border:0px solid red;">
			<div style="cursor:pointer;" onclick="toLogin()" onmouseout="changeColor(this,'#fff')" onmouseover="changeColor(this,'#eee')">前往登录</div>
		</div>
	</div>

	<div class="wrap01" >
		<!--动画1-->
		<section id="animate01">
		    <article>
		      <div class="blue"></div>
		      <div class="gray"></div>
		      <div class="green"></div>
		    </article>
		  </section>
		  <script src="js/anime.js"></script>
		  <script>

		  var blueAnimation = anime({
		    targets: '.blue',
		    translateX: 300,
		    direction: 'alternate',
		    autoplay: false
		  });

		  var redAnimation = anime({
		    targets: '.gray',
		    translateX: 200,
		    direction: 'alternate',
		    autoplay: false
		  });

		  var greenAnimation = anime({
		    targets: '.green',
		    translateX: 250,
		    direction: 'alternate',
		    autoplay: false
		  });

		  blueAnimation.settings.complete = function() {
		    greenAnimation.restart();
		  }

		  redAnimation.settings.complete = function() {
		    blueAnimation.restart();
		  }

		  greenAnimation.settings.complete = function() {
		    redAnimation.restart();
		  }

		  blueAnimation.play();

		  </script>
	</div>

	<div class="wrap02" >
		<!--动画2-->
		<section id="animate01">
		    <article>
		      <div class="blue02"></div>
		      <div class="gray02"></div>
		      <div class="green02"></div>
		    </article>
		  </section>
		  <script src="js/anime.js"></script>
		  <script>
		  var blueAnimation02 = anime({
		    targets: '.blue02',
		    translateX: -200,
		    direction: 'alternate',
		    autoplay: false
		  });
		  var redAnimation02 = anime({
		    targets: '.gray02',
		    translateX: -300,
		    direction: 'alternate',
		    autoplay: false
		  });
		  var greenAnimation02 = anime({
		    targets: '.green02',
		    translateX: -250,
		    direction: 'alternate',
		    autoplay: false
		  });
		  blueAnimation02.settings.complete = function() {
		    greenAnimation02.restart();
		  }
		  redAnimation02.settings.complete = function() {
		    blueAnimation02.restart();
		  }
		  greenAnimation02.settings.complete = function() {
		    redAnimation02.restart();
		  }
		  greenAnimation02.play();
		  </script>
	</div>
	<!-- 风车3 -->
	<div class="windmill03">
		<span class="windmill2_3">
           <span class="pillar"></span>
           <span class="axis">
             <span class="swing"></span>
             <span class="swing2"></span>
             <span class="swing3"></span>
           </span>
         </span>
	</div>

	<!-- 风车6 -->
	<div class="windmill06">
		<span class="windmill2_3">
           <span class="pillar"></span>
           <span class="axis">
             <span class="swing"></span>
             <span class="swing2"></span>
             <span class="swing3"></span>
           </span>
         </span>
	</div>
	<div class="windmill070"></div>

<!-- 播放器 -->
<div id="audio" onmouseover="changeOpacity(this,'1')" onmouseout="changeOpacity(this,'0')" style="width:20%;position:fixed;margin:auto;left:0;bottom:0;z-index:9999;background:; filter: alpha(opacity=50); opacity: 0.5;">
	<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=280 height=52 src="//music.163.com/outchain/player?type=0&id=567541310&auto=1&height=32"></iframe>
</div>
<script>
	
	function tip(result){
		 if(result=='账号注册成功'){
			 swal("账号注册成功", "马上开始新的旅程吧0+0", "success");
		 }else{
			 swal("账号注册失败", "稍候再试吧", "error");
		 }
	}

</script>
</body>

</html>