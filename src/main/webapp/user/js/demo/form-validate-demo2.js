//以下为修改jQuery Validation插件兼容Bootstrap的方法，没有直接写在插件中是为了便于插件升级


		var flag = true;
        $.validator.setDefaults({
            highlight: function (element) {
                $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
            },
            success: function (element) {
                element.closest('.form-group').removeClass('has-error').addClass('has-success');
            },
            errorElement: "span",
            errorPlacement: function (error, element) {
                if (element.is(":radio") || element.is(":checkbox")) {
                    error.appendTo(element.parent().parent().parent());
                } else {
                    error.appendTo(element.parent());
                }
            },
            errorClass: "help-block m-b-none",
            validClass: "help-block m-b-none",
            submitHandler: function() {
            	$('#date').val($('#birthday').val());
                if(!flag){
                	
                	$.reload();
                	return;
                }

                $.ajax({
                	url:'update',
                	type:'POST',
                	cache:false,
                	dataType:'json',
                	data:$('#signupForm').serialize(),birthday:$('date').val(),
                	success:function(data){
                		if(data.code==1){
                			$('#success').click();
                			$('#info_0').hide();
                			$('#info_1').show();
                		}else{
                			$('#error').click();
                		}
                	}

                });
              }


        });

        //以下为官方示例
        $().ready(function () {
        	//日期选择初始化
        	$('#data_1 .input-group.date').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: false,
                autoclose: true,
                endDate : new Date()
            });
            // validate signup form on keyup and submit
            var icon = "<i class='fa fa-times-circle'></i> ";
            $("#signupForm").validate({
                rules: {
                    account: {
                        /*required: true,
                        minlength: 5,*/
                        maxlength:15
                        /*remote: {
                            url: "validate",     //后台处理程序
                            type: "post",               //数据发送方式
                            dataType: "json",           //接受数据格式   
                            data: {                     //要传递的数据
                                username: function() {
                                    return $("#account").val();
                                }
                            }
                        }*/
                    },
                    password: {
                        required: true,
                        maxlength:15,
                        minlength: 5
                    },
                    confirm_password: {
                        required: true,
                        minlength: 5,
                        maxlength:15,
                        equalTo: "#password"
                    },
                    phone: {
                    	digits:true
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    topic: {
                        required: "#newsletter:checked",
                        minlength: 2
                    },
                    agree: "required"
                },
                messages: {
                	account: icon + "请输入您的账号",
                    account: {
                        required: icon + "请输入您的账号",
                        minlength: icon + "用户名必须5个字符以上"
                    },
                    password: {
                        required: icon + "请输入您的密码",
                        minlength: icon + "密码必须5个字符以上"
                    },
                    confirm_password: {
                        required: icon + "请再次输入密码",
                        minlength: icon + "密码必须5个字符以上",
                        equalTo: icon + "两次输入的密码不一致"
                    },
                    email: icon + "请输入您的E-mail"
                }
            });

        });
