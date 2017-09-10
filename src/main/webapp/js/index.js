
$(function(){
				
		//判断是否为移动设备
		watch();
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
	
	/*  
     * 监听滚动条，本来不想用jQuery但是发现js里面监听滚动条的事件不好添加，这边就引用了Jquery的$(obj).scroll();这个方法了  
     */
     var num = 0;
    $(window).scroll(function(){  

        //下面这句主要是获取网页的总高度，主要是考虑兼容性所以把Ie支持的documentElement也写了，这个方法至少支持IE8  
        var htmlHeight=document.body.scrollHeight||document.documentElement.scrollHeight;  
        //clientHeight是网页在浏览器中的可视高度，  
        var clientHeight=document.body.clientHeight||document.documentElement.clientHeight;  
        //scrollTop是浏览器滚动条的top位置，  
        var scrollTop=document.body.scrollTop||document.documentElement.scrollTop;  
        //通过判断滚动条的top位置与可视网页之和与整个网页的高度是否相等来决定是否加载内容；  
        //console.log(typeof (scrollTop));
        if(3406==scrollTop){  
             $('#TIP').show();  
        }/* else{
        	$('#TIP').hide();
        }  */  
    })  
	
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
	function watch(){
  	  var flag_ = 0;
  	  //alert("test");
  	  if(isMobile()){
  		$("#kefu").hide();
  		$('#login').hide();
  	  }else{
  		  
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
					
					if(URL=='admin/getAllAdmin'){
						for(var i=0;i<4;i++){
							var ELE = '#admin'+i;
							$(ELE).html(data[i].zanCount);
						}
					}else{
						console.log("正序:"+data);
						console.log("反序:"+data.reverse());
						for(var i=3;i>-1;i--){
							var ELE_ = '#admin_'+i;
							
								if(data[i].isValid==1){
									$(ELE_).addClass('fa fa-thumbs-up');
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
		swal("点赞成功,谢谢!", "(≥◇≤)", "success");

	};
	
	//取消点赞确认
	function canFabulous(e1,e2,id,isValid){

		swal({

			title: "您确定要取消点赞吗?",

			text: "→_→",

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
								swal("取消赞成功!", "(＋﹏＋)", "success");
								//点赞数-1
								$(e1).attr('class','fa fa-thumbs-o-up');
								var count = parseInt($(e2).text())-1;
								$(e2).html(count);
							}
				},
			});
	    } else {
	      swal("点赞继续,谢谢!", "^_^o", "error");
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
	
	
	
