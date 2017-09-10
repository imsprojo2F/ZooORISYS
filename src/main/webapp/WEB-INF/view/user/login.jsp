<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1,user-scalable=no">
	<link rel="shortcut  icon" type="image/x-icon" href="img/favicon.ico" media="screen"  />
	<title>ZooORI.才华有限公司</title>
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
	<!-- 点赞提示框 -->
	<link rel="stylesheet" href="css/sweet-alert.css">
	<link rel="stylesheet" href="css/animate.css">
	<script src="js/sweet-alert.js"></script>
	<script src="js/util.js"></script>
	<script src="js/cookie.js"></script>
	<!-- 动画加载 -->
	<link rel="stylesheet" type="text/css" href="css/loaders.css"/>
	<!-- 滑动验证 -->
	<link href="css/drag.css" rel="stylesheet" type="text/css">
	<script src="js/drag.js" type="text/javascript"></script>
	<link href="css/signdrag.css" rel="stylesheet" type="text/css">
	<script src="js/signdrag.js" type="text/javascript"></script>
	<script type="text/javascript">
	//文字动画==================================================================
	
	$(function(){
		
		var ACC = getCookieValue('account');
		var PASS = getCookieValue('password');
		$('#account').val(ACC);
		$('#password').val(PASS);
		if(ACC&&PASS){
			$('#cookie').attr('checked',true);
		}else{
			$('#cookie').checked = false;
		}
		
		 //刷新注册表单
		 $('#signForm')[0].reset();
		 watch();
		 $(function (){
			 	
			    var log = function (msg) {
			      
			    }

			    $('code').each(function () {
			      var $this = $(this);
			      $this.text($this.html());

			    })

			    var animateClasses = 'flash bounce shake tada swing wobble pulse flip flipInX flipOutX flipInY flipOutY fadeIn fadeInUp fadeInDown fadeInLeft fadeInRight fadeInUpBig fadeInDownBig fadeInLeftBig fadeInRightBig fadeOut fadeOutUp fadeOutDown fadeOutLeft fadeOutRight fadeOutUpBig fadeOutDownBig fadeOutLeftBig fadeOutRightBig bounceIn bounceInDown bounceInUp bounceInLeft bounceInRight bounceOut bounceOutDown bounceOutUp bounceOutLeft bounceOutRight rotateIn rotateInDownLeft rotateInDownRight rotateInUpLeft rotateInUpRight rotateOut rotateOutDownLeft rotateOutDownRight rotateOutUpLeft rotateOutUpRight hinge rollIn rollOut';

			    var $form = $('.playground form')
			      , $viewport = $('.playground .viewport');

			    var getFormData = function () {

			      var data = { 
			        loop: true, 
			        in: { callback: log('') }, 
			        out: { callback: log('') }
			      };

			      $form.find('[data-key="effect"]').each(function () {

			        var $this = $(this)
			          , key = $this.data('key')
			          , type = $this.data('type');
			          data[type][key] = $this.val();

			      });

			      $form.find('[data-key="type"]').each(function () {

			        var $this = $(this)
			          , key = $this.data('key')
			          , type = $this.data('type')
			          , val = $this.val();

			          data[type].shuffle = (val === 'shuffle');
			          data[type].reverse = (val === 'reverse');
			          data[type].sync = (val === 'sync');
			      });
			      return data;
			    };

			    $.each(animateClasses.split(' '), function (i, value) {
			      var type = '[data-type]'
			        , option = '<option value="' + value + '">' + value + '</option>';
			      if (/Out/.test(value) || value === 'hinge') {
			        type = '[data-type="out"]';
			      } else if (/In/.test(value)) {
			        type = '[data-type="in"]';
			      } 
			      if (type) {
			        $form.find('[data-key="effect"]' + type).append(option);        
			      }

			    });

			    $form.find('[data-key="effect"][data-type="in"]').val('fadeInLeftBig');
			    $form.find('[data-key="effect"][data-type="out"]').val('fadeOutDownBig');

			    $('.jumbotron h1')
			      .fitText(0.5)
			      .textillate({ in: { effect: 'flipInY' }});

			    
			    $('.jumbotron p')
			      .fitText(3.2, { maxFontSize: 18 })
			      .textillate({ initialDelay: 1000, in: { delay: 3, shuffle: true } });

			    setTimeout(function () {
			        $('.fade').addClass('in');
			    }, 250);

			    setTimeout(function () {
			      $('h1.glow').removeClass('in');
			    }, 2000);



			    var $tlt = $viewport.find('.tlt')
			      .on('start.tlt', log('start.tlt triggered.'))
			      .on('inAnimationBegin.tlt', log(''))
			      .on('inAnimationEnd.tlt', log(''))
			      .on('outAnimationBegin.tlt', log(''))
			      .on('outAnimationEnd.tlt', log(''))
			      .on('end.tlt', log(''));

			    $form.on('change', function () {
			      var obj = getFormData();
			      $tlt.textillate(obj);
			    }).trigger('change');
			  });
		//文字动画结束=======================================================================================
		 //offRight();
	 });	 
	 function watch(){
		  var flag_ = 0;
		  //alert("test");
		  if(isMobile()){
			  	 $('#cookie_').hide();
				 $('#drag').hide();
				 $('#signdrag').hide();
				 $('#login_gray').hide();
				 $('#login_blue').show();
				 $('#sign_gray').hide();
				 $('#sign_blue').show();
				 $('#body').removeClass('unselect');
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
	 
	 function toQuicksign(){
		 window.open('quickSign.html','_self');
		 window.close();
	 }

	</script>

	<style type="text/css">
		.unselect{
		moz-user-select: -moz-none;
		-moz-user-select: none;
		-o-user-select:none;
		-khtml-user-select:none;
		-webkit-user-select:none;
		-ms-user-select:none;
		user-select:none;
		}
		.zhezhao{
			 width:100%;
			 height:100%;
			 background-color:#000;
			 filter:alpha(opacity=50);
			 -moz-opacity:0.5;
			 opacity:0.5;
			 position:absolute;
			 left:0px;
			 top:0px;
			 display:none;
			 z-index:1000; 
        }
        .loader{
			top: 40%;
			left: 46%; 
			position:absolute;
        }
        
  	</style>
</head>

<body id="body" class="unselect" ondragstart="return false"  onselectstart ="return false"   onbeforecopy="return false" ">
	
	<div id="zhezhao" class="zhezhao">
		<div class="loader" >
	        <!-- <div class="loader-inner pacman">
	          <div></div>
	          <div></div>
	          <div></div>
	          <div></div>
	          <div></div>
	        </div> -->
			<div class="loader-inner line-scale-pulse-out-rapid">
	          <div></div>
	          <div></div>
	          <div></div>
	          <div></div>
	          <div></div>
	        </div>
        </div>
    </div>
	
	
	<div style="width:100%;height:80px;position:fixed;top:0;background:#fff;z-index: 999">
		
		<div class="logo">
			<span style="color:#67bef9;">Z<span id="Z">Z</span><span style="color: #97EA74;">oo</span>ORI<span id="I">I</span></span>
		</div>
		
		<a href="http://www.zooori.cn/index.jsp" target="_blank">
		<!-- 文字动画 -->
		<div id="FONT01"  class="amifont" >
			<div class="grid grid-pad">
			     <section class="col-1-1">
			        <div class="playground grid">
			           <div id="FONT02" class="col-1-1 viewport">
			              <div class="tlt">
			                 <ul class="texts" style="display: none">
			                    <li>时间从来不回答，生命从来不喧哗。</li>
			                    <li>当初你乘光而来，为何今逆光离去。</li>
			                    <li>时常梳理下自己，你将还会是太阳。</li>
			                 </ul>
			              </div>
			            </div>
			
			            <div class="col-1-1 controls" style="padding-right:0;display:none;">
			               <form class="grid grid-pad">
			                  <div class="control col-1-2">
			                    <label>In Animation</label>
			                    <select data-key="effect" data-type="in"></select>
			                    <select data-key="type" data-type="in">
			                      <option value="">sequence</option>
			                      <option value="reverse">reverse</option>
			                      <option value="sync">sync</option>
			                      <option value="shuffle">shuffle</option>
			                    </select>
			                  </div>
			                  <div class="control col-1-2">
			                    <label>Out Animation</label>
			                    <select data-key="effect" data-type="out"></select>
			                    <select data-key="type" data-type="out">
			                      <option value="">sequence</option>
			                      <option value="reverse">reverse</option>
			                      <option value="sync">sync</option>
			                      <option selected="selected" value="shuffle">shuffle</option>
			                    </select>
			                  </div>
			                </form>
			              </div>
			            </div>
			       </section>
			</div>
	    </div>
		<div style="margin-top:-3%;" tabindex=-1>
			<div id="AMI01">
		  		<span class="ami01"></span>
			</div>
			<div id="AMI02">
				<span class="ami02"></span>
			</div>
		</div>
	</div>
	</a>

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
	

	
<!-- 登录 -->
	<div class="login-box" tabindex=-1 onfocus="this.blur()">
		<div class="box-con tran" tabindex=-1 onfocus="this.blur()">
			<div class="login-con f-l" tabindex=-1  onfocus="this.blur();">
				<form id="loginForm" method="post">
				<div class="form-group">
					<div class="signup-form">
						<input tabindex=-1 maxlength="35" name="account" onfocus="clearTip('#account_result')" id="account" type="text" placeholder="登录账号" 
							onkeyup="this.value = this.value.replace(/[^0-9a-zA-Z@.\-]/g,'');"
							onblur="showTag('#l_acc',this.value);"
							/>
						<a href="javascript:;" id="l_acc" style="display:none;">登录账号</a>
					</div>
				</div>
				<div id="account_result" ></div>
				<div class="form-group">
					<div class="signup-form">
						<input tabindex=-1 maxlength="15" name="password" id="password" onfocus="clearTip('#login_result')" type="password" placeholder="登录密码" onblur="showTag('#l_pass',this.value);"/>
						<a href="javascript:;" id="l_pass" style="display:none;">登录密码</a>
					</div>
				</div>
				</form>
				<div id="login_result" ></div>
				<!-- 验证滑块 -->
				<div class="form-group">
					<div id="drag"></div>
					<script type="text/javascript">
						$('#drag').drag();
					</script>
				</div>
				
				<div class="form-group">
					<div style="" id="cookie_">
						<table style="width:100%;">
							<tr >
								<td style="vertical-align:middle;text-align:right;"><input id="cookie" onfocus="this.blur();" type="checkbox" style="width:8px;height:8px;"></td>
								<td style="vertical-align:middle;color:#605d5d;">&nbsp;一周内免登录</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="form-group">
					<div style="background:gray;" id="login_gray"  tabindex=-1 class="sign" >
						登录
						<img  src="images/loading.gif" style="display:none">
					</div>
					<div style="display:none;" id="login_blue" onclick="login()" tabindex="-1" class="sign" onmouseover="changeBg(this,'#0096da');" onmouseout="changeBg(this,'#67bef9');" style="background: rgb(103, 190, 249) none repeat scroll 0% 0%;">
						登录
					</div>
				</div>
				<div class="from-line"></div>
				<div class="form-group" tabindex=-1>
					<a href="javascript:;" tabindex=-1 class="move-signup a-tag tran blue-border">还没帐号？手动注册<i class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group" tabindex=-1>
					<a href="quickSign.html" target="_self" tabindex=-1 class="a-tag tran blue-border">快捷方式，扫码注册<i class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
<!-- 登录 -->


<!-- 注册 -->
			<form id="signForm" method="post">
			<div class="signup f-l" tabindex=-1  onfocus="this.blur();">
			
				<div class="form-group">
						<div class="signup-form">
							<input tabindex=-1 style="padding-left:10px;margin-left:-10px;" id="register_mail" onfocus="clearTip('#tip04')" type="text" 
								onblur="checkMail(this.value);validate(this.value);showTag('#r_mail',this.value);" onkeyup="this.value = this.value.replace(/[^0-9a-zA-Z.@\-]/g,'');"
								placeholder="邮箱注册">
							<a class="endTip" href="javascript:;" id="r_mail" style="display:none;">邮箱地址</a>
						</div>
						<span id="tip04" class="error-notic"></span>
				</div>
				<div class="form-group">
					<div id="signdrag"></div>
					<script type="text/javascript">
						$('#signdrag').signdrag();
					</script>
				</div>
				<div class="form-group" style="display:none;">
					<div class="signup-form">
						<input tabindex=-1 id="register_acc" style="padding-left:10px;margin-left:-10px;" type="text" placeholder="登录账号(字母/数字，至少5位)"
							 onfocus="clearTip('#tip01');" maxlength="20"
							 onkeyup="this.value = this.value.replace(/[^0-9a-zA-Z\-]/g,'');"
							 class="email-mobile" onblur="validate(this.value);showTag('#r_acc',this.value);">
							 <!-- <a href="javascript:;" class="signup-select">手机注册</a> -->
							 <a class="endTip" tabindex=-1 href="javascript:;" id="r_acc" style="display:none;">登录账号</a>
					</div>
					<span id="tip01" ></span>
				</div>

				<div class="signup-email">
					<div class="form-group" style="display:none;">
						<div class="signup-form">
							<input tabindex=-1 style="padding-left:10px;margin-left:-10px;" onfocus="clearTip('#tip02')" maxlength="15" id="register_password" type="password" placeholder="登录密码(字母/数字，至少6位)"
								 onblur="varifyPass(this.value);showTag('#r_pass',this.value);">
							<a class="endTip"  href="javascript:;" id="r_pass" style="display:none;">登录密码</a>
						</div>
						<span id="tip02" class="error-notic"></span>
					</div>
					<div class="form-group" style="display:none;">
						<div class="signup-form">
							<input tabindex=-1 onblur="showTag('#r_name',this.value);" style="padding-left:10px;margin-left:-10px;" id="register_name" type="text" placeholder="您的姓名">
							<a class="endTip" href="javascript:;" id="r_name" style="display:none;">您的姓名</a>
						</div>
					</div>
					<div class="form-group" style="display:none;">
						<div class="signup-form">
							<input tabindex=-1 style="padding-left:10px;margin-left:-10px;" id="register_phone" type="text" placeholder="您的电话"
								onfocus="clearTip('#tip03')" maxlength="11"
								onkeyup="this.value = this.value.replace(/[^0-9a-zA-Z\-]/g,'');"
								onblur="checkMobile(this.value);showTag('#r_phone',this.value);"
							>
							<a class="endTip" href="javascript:;" id="r_phone" style="display:none;">您的电话</a>
						</div>
						<span id="tip03" class="error-notic"></span>
					</div>
					
					</form>
					<div >
						<div id="sign_gray" style="background:gray;" tabindex=-1 class="sign" >
							注册
						</div>
						<div id="sign_blue" style="display:none;" onclick="sign()" tabindex=-1 class="sign" onmouseover="changeBg(this,'#0096da');" onmouseout="changeBg(this,'#67bef9');">
							注册
						</div>
					</div>
					<p class="view-clause">点击注册，即同意我们的 <a tabindex=-1 href="#">用户隐私条款</a></p>
				</div>
				
<!-- 邮箱注册 -->
				<div class="from-line"></div>
				<div class="form-group" tabindex=-1>
					<a href="javascript:;" tabindex=-1 class="move-login a-tag tran blue-border">已有帐号？登录<i class="iconfont tran">&#xe606;</i></a>
				</div>
				<!-- <div class="form-group">
					<a href="javascript:;" class="move-other a-tag tran">使用第三方帐号登录<i class="iconfont tran">&#xe606;</i></a>
				</div> -->

			</div>
<!-- 注册 -->

		</div>
		<!-- <div id="audio" onmouseover="changeOpacity(this,'1')" onmouseout="changeOpacity(this,'0')" style="width:20%;position:fixed;margin:auto;left:0;bottom:0;z-index:9999;background:; filter: alpha(opacity=50); opacity: 0.5;">
			<iframe frameborder="no" border="0" marginwidth="0" marginheight="0" width=280 height=52 src="//music.163.com/outchain/player?type=0&id=567521862&auto=1&height=32"></iframe>
		</div> -->
</body>

</html>