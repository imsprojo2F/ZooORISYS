

var isToSurvey = false;
var isPhone = false;

$(document).ready(function() {
	
	isToSurvey = getCookieValue('isToSurvey');
	watch();
	// Header Scroll
	$(window).on('scroll', function() {
		var scroll = $(window).scrollTop();
		if (scroll >= 50) {
			$('#header').addClass('fixed');
			$('#login').show();
			if (scroll>= 2048) {
				if(!isToSurvey){
					toInvestigate(isPhone);
				}
			}
		} else {
			$('#header').removeClass('fixed');
			$('#login').hide();
		}
	});

	// Fancybox
	$('.work-box').fancybox();

	// Flexslider
	$('.flexslider').flexslider({
		animation: "fade",
		directionNav: false,
	});

	// Page Scroll
	var sections = $('section')
		nav = $('nav[role="navigation"]');

	$(window).on('scroll', function () {
	  	var cur_pos = $(this).scrollTop();
	  	sections.each(function() {
	    	var top = $(this).offset().top - 76
	        	bottom = top + $(this).outerHeight();
	    	if (cur_pos >= top && cur_pos <= bottom) {
	      		nav.find('a').removeClass('active');
	      		nav.find('a[href="#'+$(this).attr('id')+'"]').addClass('active');
	    	}
	  	});
	});
	nav.find('a').on('click', function () {
	  	var $el = $(this)
	    	id = $el.attr('href');
		$('html, body').animate({
			scrollTop: $(id).offset().top - 75
		}, 500);
	  return false;
	});

	// Mobile Navigation
	$('.nav-toggle').on('click', function() {
		$(this).toggleClass('close-nav');
		nav.toggleClass('open');
		return false;
	});	
	nav.find('a').on('click', function() {
		$('.nav-toggle').toggleClass('close-nav');
		nav.toggleClass('open');
	});
	
});

//提醒是否前往调研计划
function toInvestigate(isPhone){
	
	addCookie('isToSurvey', true, 1, '/');
	isToSurvey = true;
	swal({
		  title: "我们有个调研需要您的参与",
		  text: "是否前往？",
		  type: "info",
		  showCancelButton: true,
		  confirmButtonColor: "#DD6B55",
		  confirmButtonText: "是",
		  cancelButtonText: "否",
		  closeOnConfirm: false
		},

		function(){
		  /*if(isPhone){
			  window.open("investigate.html","_blank");
		  }else{*/
			  window.open("investigate.html","_blank");
		  /*}*/
		  
		  swal("感谢您的配合", "「		您的决策将会是我们伟大计划中至关重要的一步	」", "success");

		});
};

function watch(){
	  var flag_ = 0;
	  //alert("test");
	  if(isMobile()){
		  isPhone = true;
	  }else{
		  isPhone = false;
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

		function addCookie(name,value,days,path){   /**添加设置cookie**/  
			var name = escape(name);  
			var value = escape(value);  
			var expires = new Date();  
			expires.setTime(expires.getTime() + days * 3600000 * 24);  
			//path=/，表示cookie能在整个网站下使用，path=/temp，表示cookie只能在temp目录下使用  
			path = path == "" ? "" : ";path=" + path;  
			//GMT(Greenwich Mean Time)是格林尼治平时，现在的标准时间，协调世界时是UTC  
			//参数days只能是数字型  
			var _expires = (typeof days) == "string" ? "" : ";expires=" + expires.toUTCString();  
			document.cookie = name + "=" + value + _expires + path;  
		}  
		function getCookieValue(name){  /**获取cookie的值，根据cookie的键获取值**/  
			//用处理字符串的方式查找到key对应value  
			var name = escape(name);  
			//读cookie属性，这将返回文档的所有cookie  
			var allcookies = document.cookie;         
			//查找名为name的cookie的开始位置  
			name += "=";  
			var pos = allcookies.indexOf(name);      
			//如果找到了具有该名字的cookie，那么提取并使用它的值  
			if (pos != -1){                                      //如果pos值为-1则说明搜索"version="失败  
				var start = pos + name.length;                  //cookie值开始的位置  
				var end = allcookies.indexOf(";",start);        //从cookie值开始的位置起搜索第一个";"的位置,即cookie值结尾的位置  
				if (end == -1) end = allcookies.length;        //如果end值为-1说明cookie列表里只有一个cookie  
				var value = allcookies.substring(start,end); //提取cookie的值  
				return (value);                           //对它解码        
			}else{  //搜索失败，返回空字符串  
				return "";  
			}  
		}  
		function deleteCookie(name,path){   /**根据cookie的键，删除cookie，其实就是设置其失效**/  
			var name = escape(name);  
			var expires = new Date(0);  
			path = path == "" ? "" : ";path=" + path;  
			document.cookie = name + "="+ ";expires=" + expires.toUTCString() + path;  
		}  


