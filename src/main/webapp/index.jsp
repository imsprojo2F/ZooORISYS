<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<!--<![endif]-->
<!DOCTYPE html >
<head>
<meta property="wb:webmaster" content="fe037905267ea260" />
<meta name="baidu-site-verification" content="oN78diMuIY" />
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
<meta name="keywords" content="ZooORI、ZooORI.才华有限公司、才华有限公司、网站建设、网站开发、HTML5、CSS3、用户体验、整站开发、自媒体、微信公众号、系统开发、系统优化、网页设计、微信小程序、企业建站、网站优化、知乎、人生、知乎人生">
<meta name="description" content="ZooORI是一支专业的互联网科技队伍，主要从事网站建设，软件开发，系统开发，模板制作。专为中小企业提供一站式在线建站服务的平台。无需懂技术代码，无需租用空间，利用完善、智能的系统，一键开通，即可轻松快速地创建企业官网、电商网站、手机网站以及微网站。以客户利益为出发点，ZooORI为客户规划、定制符合企业需求、带有营销价值的网络建站方案，提供从网站前期定位分析策划、技术架构，到网站界面设计、创意表现、站点架构搭建以及后续访问监控、维护、网站运营反馈建议等一系列服务。
					   我们能结合企业的产品特点和网络需求，有效帮助企业达成网络营销效果，在用户体验、公信力塑造、搜索引擎优化等方面为客户带来实际价值。ZooORI以给客户带来实质价值为基点，为客户提供实战内容的培训、交流服务，帮助客户在网络营销上取得实际效果。">
<link rel="shortcut  icon" type="image/x-icon" href="img/favicon.ico" media="screen"  />
<!-- <!-- Favicon 
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" /> -->
<link rel="stylesheet" href="css/flexslider.css" >
<link rel="stylesheet" href="css/jquery.fancybox.css" >
<link rel="stylesheet" href="css/main.css" >
<link rel="stylesheet" href="css/responsive.css" >
<link rel="stylesheet" href="css/font-icon.css" >
<link rel="stylesheet" href="css/animate.min.css" >
<link rel="stylesheet" type="text/css" href="css/style4.css"  />
<link rel="stylesheet" href="css/font-awesome.min.css" >
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
<!--预加载-->
<link rel="stylesheet" id="pageloader-css"  href="css/pageloader.css" type="text/css" media="all" />
<!-- 客服 -->
<link rel="stylesheet" href="css/kefu.css"> 
<!--返回顶部-->
<link rel="stylesheet" href="css/style.css"> 
<!-- 播放器 -->
<!-- <link rel="stylesheet" href="css/audio/audio.css" type="text/css" /> -->
<!-- 点赞提示框 -->
<link rel="stylesheet" href="css/sweet-alert.css">
<link rel="stylesheet" href="css/animate.css">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/sweet-alert.js"></script>
<!-- <script src="js/index.js"></script>  -->
<script src="js/modernizr.js"></script> 
<script src="http://apps.bdimg.com/libs/jquery-lazyload/1.9.5/jquery.lazyload.js"></script>


<title>ZooORI.才华有限公司</title>
<script type="text/javascript">
$(function(){
	
	$("img.lazy").lazyload({
		placeholder : "img/loading.gif",
		effect : "fadeIn",
		threshold : 400
	});
	
	//判断是否为移动设备
	var flag = isMobile();
	console.log(flag+"--------");
	if(flag){
		$("#kefu").hide();
		$('#login').hide();
		$('#btop').hide();
	  }else{
		  $('#audio').html('<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=280 height=52 src="//music.163.com/outchain/player?type=0&id=567243130&auto=1&height=32"></iframe>'); 
	  }
	//刷新时返回顶部
	goTop();
	//客服
	$(".side ul li").hover(function(){
		$(this).find(".sidebox").stop().animate({"width":"124px"},200).css({"opacity":"0.8","filter":"Alpha(opacity=100)","background":"rgba(103, 190, 249,0.8)"})	
	},function(){
		$(this).find(".sidebox").stop().animate({"width":"60px"},200).css({"opacity":"0.8","filter":"Alpha(opacity=80)","background":"#000c"})	
	});
	
	//提示工具
	$(".tooltip-options a").tooltip({html : true });
	
	//获取赞数
	getFabulous('admin/getAllAdmin');
	//点赞状态
	getFabulous('admin/getAllIPList');
	
	
	$('a').on('focus',function(){
		this.blur();
	});
	
	//jquery页面初始化结束----------------------------------------------------------------------------------------------------
});

  

//判断是否为移动设备
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

function changeOpacity(this_,flag){
	if(flag==1){
		$(this_).css('opacity','0.85');
		$(this_).attr('filter: alpha(opacity=85)');
	}else{
		$(this_).css('opacity','0.35');
		$(this_).attr('filter: alpha(opacity=35)');
	}
}
//回到顶部
function goTop(){
	$('html,body').animate({'scrollTop':0},100);
}
//获取点赞数、点赞状态
function getFabulous(URL){
	$.ajax({
			url : URL,
			type : "GET",
			cache : false,
			dataType : "json",
			success : function(data) {
				if(data){
					if(URL=='admin/getAllAdmin'){
						for(var i=0;i<4;i++){
							var ELE = '#admin'+i;
							$(ELE).html(data[i].zanCount);
						}
					}else{
						//console.log("正序:"+data);
						//console.log("反序:"+data.reverse());
						data.reverse()
						for(var i=3;i>-1;i--){
							var ELE_ = '#admin_'+i;
							
								if(data[i].isValid==1){
									$(ELE_).addClass('fa fa-thumbs-up');
								}
						}
					}
				}
			},
			complete : function() {
				
			}
		});
}
//点赞行为
function updateFabulou(e1,e2,id){
	var isValid = $(e1).attr('class');
	if(isValid=='fa fa-thumbs-o-up'){//未点赞状态
		isValid = 1;
	}else{
		isValid = 0;
		canFabulous(e1,e2,id,isValid);
		return false;
	}
	$.ajax({
			url : 'admin/updateFabulou',
			type : "GET",
			cache : false,
			data:	{'id':id,'isValid':isValid},
			dataType : "json",
			success : function(data) {
					  if(data.code==1){
					     fabulous();
						 //点赞数+1
						 $(e1).attr('class','fa fa-thumbs-up');
						 var count = parseInt($(e2).text())+1;
						 $(e2).html(count);
					  }
			},
			complete : function() {
				
			}
		});
}
//点赞成功
function fabulous(){
	swal("点赞成功,谢谢啦", "「	每一次的鼓励总能带来新的动力	」", "success");

};

//取消点赞确认
function canFabulous(e1,e2,id,isValid){

	swal({

		title: "您确定要取消点赞吗?",

		text: "「	或许因为我做的不够好	」",

		type: "warning",

		showCancelButton: true,

		confirmButtonColor: '#DD6B55',

		confirmButtonText: '确定',

		cancelButtonText: "取消",

		closeOnConfirm: false,

		closeOnCancel: false

	},
	function(isConfirm){

	    if (isConfirm){
	    	$.ajax({
				url : 'admin/updateFabulou',
				type : "GET",
				cache : false,
				data:	{'id':id,'isValid':isValid},
				dataType : "json",
				success : function(data) {
						if(data.code==1){
								swal("取消赞成功!", "「	我一定会更努力的	」", "success");
								//点赞数-1
								$(e1).attr('class','fa fa-thumbs-o-up');
								var count = parseInt($(e2).text())-1;
								$(e2).html(count);
							}
				},
			});
	    } else {
	      swal("点赞继续,谢谢啦", "「		点赞并不是为了做的足够好，而是更好	」", "error");
	    }
	});
};


function subDemand(){
	if(!$('#comments').val().trim()){
		swal("您还没填写需求呢", "不能太心急哦", "error");
		return;
	}
	$.ajax({
		type:'POST',
		url:'demand/add',
		cache:false,
		dataType:'json',
		data:$('#cform').serialize(),
		success:function(data){
			if(data.code==1){
				swal("您的需求我们已收到", "客服将尽快与您联系", "success"); 
				$('#cform')[0].reset();
				goTop();
			}else{
				swal("服务器不小心被外星人带走了", "稍后再试吧", "error");
			}
		}
	});
}
window.onload = function () {
	document.getElementById('loading-mask').style.display = 'none';
}

</script>
<style>
	#loading-mask {
    background: #222021;
    height: 100%;
    left: auto;
    right:auto
    opacity: 1;
    filter: alpha(opacity=100);
    position: fixed;
    text-align: center;
    top: 0;
    width: 100%;
    z-index: 999999999;
}

.loading-img {
    height: 100%;
    left: auto;
    right:auto;
    position: fixed;
    top: 25%;
    width: 100%;
}
</style>
</head>
<body  ondragstart="return false"  onselectstart ="return false"  onbeforecopy="return false" >

<div id="loading-mask">
	<div class="loading-img">
		<img alt="努力加载中..." src="img/preloader.gif"  />
	</div>
</div>

<!-- header section -->
<section class="banner" role="banner">
  <header id="header">
	    <div class="header-content clearfix"> 
	      <a href="investigate.html" target="_blank">
	    	<span id="logo" class="logo">Z<span id="Z">Z</span><span style="color: #97EA74;">oo</span>ORI<span id="I">I</span></span>
	      </a>
	      <nav class="navigation" role="navigation">
	        <ul id="nav" class="primary-nav" style="margin-top: 4%;">
			  <li><a href="#Nav01" >主页</a></li>
	          <li><a href="#Nav02" >关于我们</a></li> 
	          <li><a href="#Nav03" >产品案例</a></li>
	          <li><a href="#Nav04" >团队架构</a></li>
	          <li><a href="#Nav05" >人生箴言</a></li>
	          <li><a href="#Nav06" >联系我们</a></li>
	        </ul>
	      </nav>
	      <a href="#" class="nav-toggle">Menu<span></span></a> 
	   </div>
  </header>

  <!-- banner text --> 
    <div class="banner" id="Nav01"> 
	  <ul class="cb-slideshow">
            <li><span>Image 01</span><div><h3>互联互通</h3></div></li>
            <li><span>Image 02</span><div><h3>需求调研</h3></div></li>
            <li><span>Image 03</span><div><h3>万物互联</h3></div></li>
            <li><span>Image 04</span><div><h3>指数复利</h3></div></li>
            <li><span>Image 05</span><div><h3>报表分析</h3></div></li>
            <li><span>Image 06</span><div><h3>个性定制</h3></div></li>
        </ul>
      <!-- banner text --> 
    </div> 
</section>
<!-- header section --> 
<a  href="login.html" target="_blank" id="toLogin">
	<div id="login" class="toLogin" >
		  登录/注册
	</div>
</a>
<!-- intro section -->
<section id="intro" class="section intro">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 text-center">
      <h3>如果，可以</h3>
      <p>
      	船停在码头是最安全的，但那不是造船的目的；人呆在家里是最舒服的，但那不是人生的意义。
      	<br>最美好的生活方式，莫过于和一群志同道合的人奔跑在理想的路上！

      	回头，有一路的故事；低头，有坚定的脚步；<br>抬头，有清晰的远方。
      	人生没有彩排，每一场都是现场直播，把握好每次演出，便是对人生最好的珍惜 。
      </p>
    </div>
  </div>
</section>
<!-- intro section --> 

<br><br><br><br><br><br><br><br>


<!--About-->
<section id="Nav02" class="content-block data-section nopad content-3-10">
	<div class="image-container col-sm-6 col-xs-12 pull-left">
		<div class="background-image-holder">

		</div>
	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-6 col-xs-12 content">
				<div class="editContent">
					<h3>ZooORI.才华有限公司</h3>
				</div>
				<div class="editContent">
					<p>ZooORI是一支专业的互联网科技队伍，主要从事网站建设，软件开发，系统开发，模板制作。专为中小企业提供一站式在线建站服务的平台。无需懂技术代码，无需租用空间，利用完善、智能的系统，一键开通，即可轻松快速地创建企业官网、电商网站、手机网站以及微网站。以客户利益为出发点，ZooORI为客户规划、定制符合企业需求、带有营销价值的网络建站方案，提供从网站前期定位分析策划、技术架构，到网站界面设计、创意表现、站点架构搭建以及后续访问监控、维护、网站运营反馈建议等一系列服务。
					   我们能结合企业的产品特点和网络需求，有效帮助企业达成网络营销效果，在用户体验、公信力塑造、搜索引擎优化等方面为客户带来实际价值。ZooORI以给客户带来实质价值为基点，为客户提供实战内容的培训、交流服务，帮助客户在网络营销上取得实际效果。
					</p>
					<p class="about_">
						ZooORI is a professional Internet technology development team, mainly engaged in site construction, software development, system development, template production. For small and medium enterprises to provide one-stop online Jianzhan service platform. Without the need to understand the technical code, no need to rent space, the use of sound, intelligent system, a key to open, you can easily create a business official website, electronic business sites, mobile sites and micro sites. From the point of view of customer benefits, ZooORI can plan and customize the network building plan with the marketing value according to the enterprise's needs. It can provide the technical support for website design, technical architecture, website interface design, creative performance, site structure and follow-up visit. Monitoring, maintenance, site operation feedback and a series of recommendations.
						We can combine the characteristics of enterprise products and network needs, effectively help enterprises achieve network marketing effect, in the user experience, credibility modeling, search engine optimization, etc. to bring real value to customers. ZooORI to provide customers with real value as the starting point, to provide customers with real content training, communication services to help customers achieve real results in the network marketing.
					</p>
				</div>
				<a href="#" class="btn btn-outline btn-outline outline-dark">了解更多</a>
			</div>
		</div><!-- /.row-->
	</div><!-- /.container -->
</section>

<!-- services section -->
<section id="services" class="services service-section">
  <div class="container">
  <div class="section-header">
                <h2 class="wow fadeInDown animated">我们的服务</h2>
                <p class="wow fadeInDown animated">We end their lives，is to get rid of someone else's expectations，and find the real oneself.
                <br>我们终其一生，就是要摆脱别人的期盼，找到真正的自己。 
                </p >
            </div>
    <div class="row">
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-global"></span>
        <div class="services-content">
          <h4>企业建站</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;基于B/S的网页开发,具有信息传递性、互动性.根据您的需求完成各功能模块定制化网站开发服务。</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-tools"></span>
        <div class="services-content">
          <h4>网页设计</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;清晰业务逻辑，优化用户体验，让用户在视觉及操作上都能感到舒适，
    		 建站目标明晰，向用户展示产品、服务、理念、文化。
		  </p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-heart"></span>
        <div class="services-content">
          <h4>需求分析</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;通过详细调查现实世界要处理的对象，充分了解原系统工作概况，明确用户的各种需求，在此基础上确定新系统的功能。</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-magnifying-glass"></span>
        <div class="services-content">
          <h4>系统优化</h4>
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;更改系统工作模式，优化文件位置使数据读写更快，空出更多的系统资源供用户支配，以及减少不必要的系统加载项及自启动项</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-paintbrush"></span>
        <div class="services-content">
          <h4>微信开发</h4>
          <p>利用HTML5，CSS3技术，架构炫酷页面，全面提高用户交互效果及用户体验，完美适配PC、手机、iPad等多种设备的网页</p>
        </div>
      </div>
      <div class="col-md-4 col-sm-6 services text-center"> <span class="icon icon-layers"></span>
        <div class="services-content" style="height:169px;line-height:100px;font-size:2em;font-weight:normal;">
	          <span>更多服务</span>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- services section --> 



<!-- package section -->
<!-- <section class="video-section">
  <div class="container"> 
    <div class="row">  
            <div id="content24" data-section="content-24" class="data-section"> 
    		<div class="col-md-6">
				<h3 class="eidtContent">Content Video</h3>
				<p class="eidtContent">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
   				<p class="editContent">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
				<p class="editContent">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
    		</div>
    	</div>
			</div><!-- end row -->    
  <!--</div>
</section> -->
<!-- package section --> 

<hr>
<!-- 产品案例 -->
<section id="Nav03" class="gallery section">
  <div class="container-fluid">
    <div class="section-header">
                <h2 class="wow fadeInDown animated">产品案例</h2>
                <p class="wow fadeInDown animated">One of the greatest bravery in life is the ability to maintain trust and love after experiencing deception and injury.<br> 人生最大的勇敢之一，就是经历欺骗和伤害之后，还能保持信任和爱的能力。</p>
                <br>
                <a style="text-decoration:none;font-size:18px;" href="http://www.lfqinghui.cn/" target="_blank">廊坊●庆辉建材有限公司</a>
            </div>
    <div class="row no-gutter">
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/01.jpg"  class="lazy work-box"> <img class="lazy"  data-original="img/01.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
             <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/02.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/02.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/03.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/03.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/04.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/04.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption"> 
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/05.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/05.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/06.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/06.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/07.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/07.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
            <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
      <div class="col-lg-3 col-md-6 col-sm-6 work"> <a href="img/08.jpg"  class="lazy work-box"> <img class="lazy" data-original="img/08.jpg"  alt="">
        <div class="overlay">
          <div class="overlay-caption">
             <p><span class="icon icon-magnifying-glass"></span></p>
          </div>
        </div>
        <!-- overlay --> 
        </a> </div>
    </div>
  </div>
</section>
<!-- 产品案例 --> 


<!-- 团队架构 -->
<section id="Nav04" class="section teams">
  <div class="container">
      <div class="section-header">
                <h2 class="wow fadeInDown animated">团队架构</h2>
                <p class="wow fadeInDown animated">People are either good-looking，or ugly，the middle is not the United States is not ugly，can only say cute. <br> 人要么是好看，要么是丑陋，中间不美不丑的，只能说可爱。</p>
            </div>
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <div class="person"><img data-original="img/team-1.jpg"  alt="" class="lazy img-responsive">
          <div class="person-content">
            <h4>Imsprojo FAN</h4>
            <h5 class="role">Founder</h5>
            <p>最怕一生碌碌无为，却慰自己<br>平凡可贵。</p>
          </div>
          <ul class="social-icons clearfix">
            <li><a target="_blank" href="tencent://message/?uin=1374356021&Site=&Menu=yes" title="点击联系我"><span class="fa fa-qq"></span></a></li>
            <li class="tooltip-options" ><a href="javascript:void(0);" data-toggle="tooltip" title="13922305912"><span class="fa fa-mobile"></span></a></li> 
            <li><a href="javascript:void(0);" onfocus="this.blur();" onclick="updateFabulou(admin_0,admin0,1)"><span class="fa fa-thumbs-o-up" id="admin_0"></span></a></li> 
            <li><span style="color:gray;font-size:11px;">(<span id="admin0">0</span>)</span></li> 
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="person"> <img data-original="img/team-2.jpg"  alt="" class="lazy img-responsive">
          <div class="person-content">
            <h4>Robin Zhang</h4>
            <h5 class="role">Creative</h5>
            <p>你要按你所想的去生活，否则，你迟早会按你生活的去想。</p>
          </div>
          <ul class="social-icons clearfix">
            <li><a target="_blank" href="tencent://message/?uin=757342791&Site=&Menu=yes" title="点击联系我"><span class="fa fa-qq"></span></a></li>
            <li class="tooltip-options"><a href="javascript:void(0);" data-toggle="tooltip" title="15280204325"><span class="fa fa-mobile"></span></a></li> 
            <li><a href="javascript:void(0);" onfocus="this.blur();" onclick="updateFabulou(admin_1,admin1,2)"><span class="fa fa-thumbs-o-up" id="admin_1"></span></a></li>
            <li><span style="color:gray;font-size:11px;" >(<span id="admin1">0</span>)</span></li>  
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="person"> <img data-original="img/team-3.jpg"  alt="" class="lazy img-responsive">
          <div class="person-content">
            <h4>Alison Lin</h4>
            <h5 class="role">Technical</h5>
            <p>在二十出头的生命里，做一件到八十岁想起来都还会微笑的事。</p>
          </div>
          <ul class="social-icons clearfix">
            <li><a target="_blank" href="tencent://message/?uin=378007539&Site=&Menu=yes" title="点击联系我"><span class="fa fa-qq"></span></a></li>
            <li class="tooltip-options"><a href="javascript:void(0);" data-toggle="tooltip" title="13003916767"><span class="fa fa-mobile"></span></a></li> 
            <li><a href="javascript:void(0);" onfocus="this.blur();" onclick="updateFabulou(admin_2,admin2,3)"><span class="fa fa-thumbs-o-up" id="admin_2"></span></a></li> 
            <li><span style="color:gray;font-size:11px;" >(<span id="admin2">0</span>)</span></li> 
          </ul>
        </div>
      </div>
      <div class="col-md-3 col-sm-6">
        <div class="person"> <img data-original="img/team-4.jpg"  alt="" class="lazy img-responsive">
          <div class="person-content">
            <h4>Vintes Mars</h4>
            <h5 class="role">Marketing</h5>
            <p>有时候，你对人生的所有规划，抵不过命运一次不怀好意的安排。</p>
          </div>
          <ul class="social-icons clearfix">
            <li><a target="_blank" href="tencent://message/?uin=529229677&Site=&Menu=yes" title="点击联系我"><span class="fa fa-qq"></span></a></li>
            <li class="tooltip-options"><a href="javascript:void(0);" data-toggle="tooltip" title="15659212629"><span class="fa fa-mobile"></span></a></li> 
            <li><a href="javascript:void(0);" onfocus="this.blur();" onclick="updateFabulou(admin_3,admin3,4)"><span class="fa fa-thumbs-o-up" id="admin_3"></span></a></li> 
            <li><span style="color:gray;font-size:11px;" >(<span id="admin3">0</span>)</span></li> 
          </ul>
        </div>
      </div>
    </div>
  </div>
  <br>
  <div id="TIP01">
  		<div class="div01"></div><div class="animate01"><!-- 给我们点赞吧 --></div>
  </div>
  <div id="TIP02">
  		<div></div><span class="animate02"><!-- 给我们点赞吧 --></span>
  </div>
</section>
<!-- 团队架构 --> 
<!-- 资讯 -->
<section id="Nav05" class="section testimonials ">
  <div class="container-fluid">
    <div class="row no-gutter">
      <div class="flexslider">
        <ul class="slides">
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>If a ship does not know which port to drive to, then the direction of the wind blowing will not be downwind</h1>
                <h1>如果一艘船不知道该驶去哪个港口，那么任何方向吹来的风都不会是顺风</h1>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>Sometimes people are strange,by the grievances will not say anything,but heard the words of consolation,broke down in tears </h1>
                <h1>有时候人就是这么奇怪，受了天大的委屈都不会吭声，但听到安慰的话却泣不成声</h1>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>Far away are the scenery, leaving is the life, nothing better than a natural thing better</h1>
                <h1>远去的都是风景，留下的才是人生，没有什么东西比自然而然的东西更美好了 </h1>
              </blockquote>
            </div>
          </li>
          <li>
            <div class="col-md-12">
              <blockquote>
                <h1>Be sure to try to do a major event, or you do not know how small</h1>
                <h1>一定要尝试去干一件大事，不然你不知道自己有多渺小 </h1>
              </blockquote>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- 资讯 --> 

<!-- 联系我们 -->
<section id="Nav06" class="section">
  <div class="container">
      <div class="section-header">
                <h2 class="wow fadeInDown animated">联系我们</h2>
                <p class="wow fadeInDown animated">Busy up what you think is not missing, empty down to know you have nothing <br> 忙起来觉得什么都不缺，空下来才知道什么都没有
</p>
            </div>
    <div class="row">
      <div class="col-md-8 col-md-offset-2 conForm">       
        <div id="message"></div>
        <form method="post" id="cform">
          <input name="name" id="name" type="text" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="您的姓名" >
          <input name="phone" onkeyup="this.value = this.value.replace(/[^0-9\-]/g,'');" maxlength="11" id="phone" type="text" class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 noMarr" placeholder="您的电话" >
          <input name="mail" id="mail" type="text" class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 noMarr" placeholder="您的邮箱" >
          <textarea name="demand" id="comments" cols="" rows="" class="col-xs-12 col-sm-12 col-md-12 col-lg-12" placeholder="您的需求"></textarea>
          <input type="button" onclick="subDemand()" id="submit"  class="submitBnt" value="发送">
          <div id="simple-msg"></div>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- 联系我们 --> 

<!--播放器-->
<div id="audio" onmouseover="changeOpacity(this,'1')" onmouseout="changeOpacity(this,'0')" style="width:20%;position:fixed;bottom:1.5%;left:0%;z-index:9999;background:; filter: alpha(opacity=35); opacity: 0.35;">
</div>



<!--底栏-->
<div class="container">
		<div class="row">
			<hr>
			<center>
				<a href="#">关于我们</a> - <a href="#">广告合作</a> - 
				<a href="#">联系我们</a> <!-- - <a href="#">免责声明</a> - 
				<a href="#">在线投稿</a>  --><br>
				友情链接:
					<a href="https://www.zhihu.com/" target="_blank">知乎</a>
					<a href="http://weibo.com/" target="_blank">新浪微博</a>
					<a href="http://music.163.com/" target="_blank">网易云音乐</a>
					<a href="https://www.taobao.com/" target="_blank">淘宝</a>
					<a href="https://www.baidu.com/" target="_blank">百度</a>
			</center>
			<center>©CopyRight  2014-2017 ZooORI.Net Inc All Rights Reserved. ZooORI 版权所有<br/>
			<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1264493493'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1264493493%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
		</div>
</div>
<!-- 客服 -->
<div id="kefu" class="side" >

	<ul >
		<li><a href="investigate.html" target="_blank" id="toSurvey"><div class="sidebox"><img src="img/side_icon02.png">调研计划</div></a></li>
		<li><a target="_blank" href="tencent://message/?uin=1374356021&Site=&Menu=yes" ><div class="sidebox"><img src="img/side_icon04.png">QQ客服</div></a></li>
		<li><a href="javascript:void(0);" ><div class="sidebox"><img src="img/side_icon03.png">新浪微博</div></a></li>
	</ul>

</div>
<!--返回顶部-->
<a id="btop"  href="#0" class="cd-top" onfocus="this.blur();">Top</a>

<!-- 点赞js -->
<script>



</script>


<script src="js/top.js"></script> <!-- Gem jQuery -->
<script src="js/jquery.flexslider-min.js" ></script> 
<script src="js/jquery.fancybox.pack.js" ></script> 
<script src="js/retina.min.js" ></script> 
<script src="js/modernizr.js" ></script> 
<script src="js/main.js" ></script> 
<script type="text/javascript" src="js/jquery.contact.js" ></script>

</body>
</html>