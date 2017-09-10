<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>信息管理</title>
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="css/plugins/chosen/chosen.css" rel="stylesheet">
    <!-- 裁剪图片 -->
    <link href="css/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
    <link href="css/plugins/cropper/cropper.min.css" rel="stylesheet">
    <!-- 切换按钮 -->
    <link href="css/plugins/switchery/switchery.css" rel="stylesheet">
    <link href="css/plugins/jasny/jasny-bootstrap.min.css" rel="stylesheet">
    <link href="css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
    <link href="css/plugins/clockpicker/clockpicker.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <!-- 通知 -->
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css?v=4.1.0" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    
    <!-- 提示框 -->
	<link rel="stylesheet" href="css/sweet-alert.css">
	<link rel="stylesheet" href="css/animate.css">
	<script src="js/sweet-alert.js"></script>
    
    <!-- 交互通知 -->
    <link rel="stylesheet" href="css/iziToast/iziToast.min.css">
	<link rel="stylesheet" type="text/css" href="css/iziToast/htmleaf-demo.css">
	<script>
	
	var acc = '${user.account}';
	var mail = '${user.mail}';
	$(function(){
		var flag = isMobile();
		if(flag){
			$('.address_hot').css('width','225px');
		}else{
			$('.address_hot').css('width','625px');
		}
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
		
		function setVal(){
			var account = $('#account').val().trim();
            if(!account){
            	$('#account').val(acc);
            }
		}
		
		function setMail(){
			var email = $('#email').val().trim();
            if(!email){
            	$('#email').val(mail);
            }
		}
	
    	//城市选择
    	function validate(val){
    		if(val==acc){
    			return;
    		}
    		if(!val){
    			return ;
    		}
    		if(val.length<5){
    			$('#tip').html('');
    			$('#tip').css('color','#a94442');
    			$('#tip').append('<i class="fa fa-times-circle">账号需至少5个字符</i>');
    			flag = false;
    			return;
    		}
    		$.ajax({
    			url:'validate',
    			type:'GET',
    			dataType:'json',
    			data:{
    				account:val
    			},
    			success:function(data){
    				if(data.code==1){
    					$('#tip').html('');
    					$('#tip').css('color','#3c763d');
    					$('#tip').append('<i class="fa fa-info-circle">账号可用</i>');
    					flag = true;
    				}else{
    					$('#tip').html('');
    					$('#tip').css('color','#a94442');
    					$('#tip').append('<i class="fa fa-times-circle">账号不可用</i>');
    					flag = false;
    				}
    			}
    		});
    	}
    </script>
    <style>
    	@media screen and (max-width: 768px) {
		    .address_hot{
		        background-color: #FFFFFF; font-size: 12px; width: 225px;
		    }
		}
		@media screen and (max-width: 1024px) {
		    .address_hot{
		        background-color: #FFFFFF; font-size: 12px; width: 425px;
		    }
		}
		.form-group{
			margin-bottom:5px;
		}
    </style>

</head>

<body class="gray-bg">

	<div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-8">
                <div class="ibox float-e-margins">
                	<form class="form-horizontal m-t" id="signupForm">
	                    <div class="ibox-content" style="padding:15px 15% 65px 15%;border-color:#fff;">
	                        	<input type="hidden" name="id" value="${user.id}"/>
	                        	<input type="hidden" name="uid" value="${user.uid}"/>
	                        <h4>账号</h4>
	                        <div class="form-group" >
		                        <input value="${user.account}" onblur="validate(this.value)" onkeyup="this.value = this.value.replace(/[^0-9a-zA-Z\-]/g,'');setVal(this);" id="account" name="account" maxlength="15" placeholder="请输入含至少5个字符账号,可用于登录" class="form-control" type="text">
		                        <span id="tip" class="help-block m-b-none"></span>
	                        </div>
	                        <h4>姓名:</h4>
	                        <div class="form-group" >
		                        <input id="lastname" value="${user.name}" name="name" maxlength="11" class="form-control" type="text" aria-required="true" aria-invalid="false" class="valid">
	                        </div>
	                        <h4>性别:</h4>
	                        <div class="form-group" >
		                        <div class="radio radio-info radio-inline">
                                	<input type="radio" onfocus = 'this.blur()' id="inlineRadio1" <c:if test="${user.gender=='男生' }">checked="checked"</c:if>  value="男生" name="gender"  >
                                    <label for="inlineRadio1"><span style="font-size:14px;">男生</span></label>
                                </div>
                                <div class="radio radio-danger radio-inline">
                                    <input type="radio" onfocus = 'this.blur()' id="inlineRadio2" <c:if test="${user.gender=='女生' }">checked="checked"</c:if> value="女生" name="gender">
                                    <label for="inlineRadio2"><span style="font-size:14px;">女生</span></label>
                                </div>
	                        </div>
	                        <!-- <h4>昵称:</h4>
	                        <div class="form-group" >
		                        <input id="username" max-length="11" name="anothername" class="form-control" type="text" aria-required="true" aria-invalid="true" class="error">
	                        </div> -->
	                        <h4>密码:</h4>
	                        <div class="form-group" >
		                        <input id="password" value="${user.password}" name="password" placeholder="请输入至少5个字符密码" maxlength="15" class="form-control" type="password">
	                        </div>
	                        <h4>确认密码:</h4>
	                        <div class="form-group" >
		                        <input id="confirm_password" value="${user.password}" name="confirm_password" maxlength="15" class="form-control" type="password">
                                <!-- <span class="help-block m-b-none"><i class="fa fa-info-circle"></i> 请再次输入您的密码</span> -->
	                        </div>
	                        <h4>生日:</h4>
	                        <div class="form-group" id="data_1">
	                            <div class="input-group date">
	                                <span class="input-group-addon" style="height:30px;"><i class="fa fa-calendar"></i></span> 
	                                <input type="text" disabled="disabled" id="birthday"  class="form-control" value="${user.birthday}">
	                                <input type="hidden" id="date" name="birthday"/>
	                            </div>
	                        </div>
	                        <!-- <h4>时间选择</h4>
	                        <div class="input-group clockpicker" data-autoclose="true">
	                            <input type="text" class="form-control" value="09:30">
	                            <span class="input-group-addon">
	                                    <span class="fa fa-clock-o"></span>
	                            </span>
	                        </div> -->
	                        <h4>所在城市:</h4>
	                        <div class="form-group" >
		                        <!-- <input id="city" name="address" maxlength="15" class="form-control" type="text"> -->
								<div>
									<input type="text" class="form-control" id="homecity_name" value="${user.city}" name="city" mod="address|notice" mod_address_source="hotel" mod_address_suggest="@Beijing|北京|53@Shanghai|上海|321@Shenzhen|深圳|91@Guangzhou|广州|80@Qingdao|青岛|292@Chengdu|成都|324@Hangzhou|杭州|383@Wuhan|武汉|192@Tianjin|天津|343@Dalian|大连|248@Xiamen|厦门|61@Chongqing|重庆|394@" mod_address_reference="cityid" mod_notice_tip="可输入中文/拼音" />
									<input id="cityid" name="cityid" type="hidden" value="{$cityid}" />
								</div>
								<div id="jsContainer" class="jsContainer" style="height:0">
								    <div id="tuna_alert" style="display:none;position:absolute;z-index:999;overflow:hidden;"></div>
								    <div id="tuna_jmpinfo" style="visibility:hidden;position:absolute;z-index:120;"></div>
								</div>
	                        </div>
	                        <h4>地址:</h4>
	                        <div class="form-group" >
		                        <input id="address" value="${user.address}"  name="address" class="form-control" type="text" maxlength="55">
	                        </div>
	                        <h4>个性签名:</h4>
	                        <div class="form-group" >
		                        <input id="signature" value="${user.signature}"  name="signature" class="form-control" type="text" maxlength="225">
	                        </div>
	                        <h4>手机:</h4>
	                        <div class="form-group" >
		                        <input id="phone" value="${user.phone}" onkeyup="this.value = this.value.replace(/[^0-9\-]/g,'');" name="phone" class="form-control" type="text" maxlength="11">
	                        </div>
	                        <h4>邮箱:</h4>
	                        <div class="form-group" >
		                        <input id="email" value="${user.mail }" onkeyup="this.value = this.value.replace(/[^0-9a-zA-Z.@\-]/g,'');setMail();" name="mail" placeholder="请输入邮箱地址" class="form-control" type="email">
	                        </div>
	                        <div class="form-group justified" >
		                        <button style="width:212px;margin:0 auto;display:block;margin-top:15px;" class="btn btn-outline btn-info" type="submit">提交</button>
	                        </div>
	                    </div>
	                 </form>
                </div>
            </div>
        </div>
    </div>

	
	<div class="htmleaf-container" style="display:none;">
		<main>
			<section class="cd-section" id="Welcome">
				<div class="highlight bg">
					<div class="core">
		                    <ul class="buttons">
		                        <li><button class="trigger-info" id="info" data-iziToast>Info</button></li>
		                        <li><button class="trigger-success" id="success" data-iziToast>Success</button></li>
		                        <li><button class="trigger-warning" id="warning" data-iziToast>Warning</button></li>
		                        <li><button id="error" class="trigger-error">Error</button></li>
		                        <li><button class="trigger-custom1">Custom I</button></li>
		                        <li><button class="trigger-custom2">Custom II</button></li>
		                        <li class="lava"></li>
		                    </ul>
		            </div>
				</div>
			</section>
		</main>
	</div>
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script src="js/iziToast/iziToast.min.js" type="text/javascript"></script>
	<script src="js/iziToast/demo.js" type="text/javascript"></script>
	
	<!-- 城市选择 -->
	<script type="text/javascript" src="js/fixdiv.js"></script>
	<script type="text/javascript" src="js/address.js"></script>
	<!-- 全局js -->
    <script src="js/jquery.min.js?v=2.1.4"></script>
    <script src="js/bootstrap.min.js?v=3.3.6"></script>   
    <!-- 自定义js -->
    <script src="js/content.js?v=1.0.0"></script>
    <!-- jQuery Validation plugin javascript-->
    <script src="js/plugins/validate/jquery.validate.min.js"></script>
    <script src="js/plugins/validate/messages_zh.min.js"></script>
    <script src="js/demo/form-validate-demo.js"></script>
    <!-- Chosen -->
    <script src="js/plugins/chosen/chosen.jquery.js"></script>
    <!-- JSKnob -->
    <script src="js/plugins/jsKnob/jquery.knob.js"></script>
    <!-- Input Mask-->
    <script src="js/plugins/jasny/jasny-bootstrap.min.js"></script>
    <!-- Data picker -->
    <script src="js/plugins/datapicker/bootstrap-datepicker.js"></script>
    <!-- Prettyfile -->
    <script src="js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
    <!-- Switchery -->
    <script src="js/plugins/switchery/switchery.js"></script>
    <!-- IonRangeSlider -->
    <script src="js/plugins/ionRangeSlider/ion.rangeSlider.min.js"></script>
    <!-- iCheck -->
    <script src="js/plugins/iCheck/icheck.min.js"></script>
    <!-- MENU -->
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>


</body>
</html>