

var survey01,survey02,survey03,survey04,survey05,survey06,survey07,survey08,survey09,survey10,survey11,
survey11,survey12,survey13,survey14,survey15,survey16,survey17,survey18,survey19;
var surveyType = 0;
$(function(){
			
			$('tr').css('cursor','pointer');
			$(".tableradio tr").slice(1).each(function(){  
		        var p = this;
		        
		        ++surveyType;
		        console.log("surveyType---------"+surveyType);
		        
		        if(surveyType!=9&&surveyType!=10&&surveyType!=11){
		        	 $(this).children().slice(1).click(function(){  
				            $($(p).children()[0]).children().each(function(){
				            	
				                if(this.type=="radio"){  
				                    if(!this.checked){  
				                        this.checked = true;
				                        shownewts_next();
				                    }else{  
				                        this.checked = false;  
				                    }  
				                }  
				            });  
				        });  
		        	
		        }
		        
		    });
	
			
			$('#pre_').css("display","none");
    		$('#next_').css("display","none");
			//清空radio选中
			$(":radio").attr('checked',false);
			$('textarea').val('');
			
			 /*var trBgcolor;
			 var ArrTR = $("tr");
			 ArrTR.each(function(index,element){
				 $(element).mouseout(function(){
					 $(this).css('background-color','#ffffff4d');
				});
			    
			  $(element).mouseenter(function(){
				  	$(this).css('background-color','#fff');
				  });
			  });*/
			 $(":radio").click(function(this_){
				   var val = $(this).val();

				   var name = $(this).context.name;
				   if(name=="survey01"){
					   survey01 = val;
				   }else if(name=="survey02"){
					   survey02 = val;
				   }else if(name=="survey03"){
					   survey03 = val;
				   }else if(name=="survey04"){
					   survey04 = val;
				   }else if(name=="survey05"){
					   survey05 = val;
				   }else if(name=="survey06"){
					   survey06 = val;
				   }else if(name=="survey07"){
					   survey07 = val;
				   }else if(name=="survey08"){
					   survey08 = val;
				   }else if(name=="survey09"){
					   survey09 = val;
				   }else if(name=="survey10"){
					   survey10 = val;
				   }else if(name=="survey11"){
					   survey11 = val;
				   }else if(name=="survey12"){
					   survey12 = val;
				   }else if(name=="survey13"){
					   survey13 = val;
				   }else if(name=="survey14"){
					   survey14 = val;
				   }else if(name=="survey15"){
					   survey15 = val;
				   }else if(name=="survey16"){
					   survey16 = val;
				   }else if(name=="survey17"){
					   survey17 = val;
				   }else if(name=="survey18"){
					   survey18 = val;
				   }else if(name=="survey19"){
					   survey19 = val;
				   }
				   shownewts_next();
			 });
});

		
       function toSend(val){
    	   console.log(val);
    	   if(!val.trim()){
    		   return false;
    	   }
    	   swal({
    			  title: "您的需求或建议是否填写完毕？",
    			  text: "「		每一个字符的填写都饱含着我们满满的感恩	」",
    			  type: "info",
    			  showCancelButton: true,
    			  confirmButtonColor: "#DD6B55",
    			  confirmButtonText: "是",
    			  cancelButtonText: "否",
    			  closeOnConfirm: false
    			  },
	    		  function(isConfirm){
	    			if (isConfirm) {
	    				$("#next").removeAttr("onclick");
	    				$("#next").attr("onclick","shownewts_next();");
	    				$('#next').click();
	    				swal({
	    					title: "",
	    					text: "",
	    					timer: 1
	    					});
		    			}
	    		 });
       }
       
       function subSurvey(){
    	   var mail = $('#mail').val().trim();
    	   if(!mail){
    		   swal("还没填写邮箱喔", "「	每一次联系总能让彼此走的更近」", "error");
    		   return;
    	   }else{
    		   console.log(survey01);
				  $.ajax({
						url:'survey/add',
						type:'post',
						cache:false,
						dataType:'json',
						data:{
							survey01:survey01,
							survey02:survey02,
							survey03:survey03,
							survey04:survey04,
							survey05:survey05,
							survey06:survey06,
							survey06:survey06,
							survey07:survey07,
							survey08:survey08,
							survey09:survey09,
							survey10:survey10,
							survey11:survey11,
							survey12:survey12,
							survey13:survey13,
							survey14:survey14,
							survey15:survey15,
							survey16:survey16,
							survey17:survey17,
							survey18:survey18,
							survey19:survey19,
							demand:$('#demand').val(),
							mail:$('#mail').val()
						},
						success:function(data){
							if(data.code==1){
								swal("您是第"+data.data+"位参与调研的用户", "我们会继续努力的^_^o", "success");
								$('#submit').hide();
								$('#foot02').hide();
								$('#succ').show();
								$('#foot04').show();
								var num = 15;
								setInterval(function(){
									num--
									if(num<10){
										num = '0'+num;
									}
									$('#timer').html(num);
									if(num==0){
										window.open('quickSign.html','_self');
									}
								},1000);
							}else{
								swal("服务器不小心被汪星人带走了", "稍后再试吧", "error");
							}
						}
					});
    	   }
	}
       
       function toSign(){
    	    window.open('quickSign.html','_self');
       }
       
       
       