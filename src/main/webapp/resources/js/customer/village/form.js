     $('#villageForm').validate({
                    errorElement : 'div',
                    errorClass : 'help-block',
                    focusInvalid : false,
                    ignore : "",
                    rules : {
                    	villageName : {
                             required : true
                         },
                    },
                    messages : {
                    	villageName : {
                            required : "请填写组织名称",                           
                        },
                        key : "请填写角色标识"
                    },
                    highlight : function(e) {
                        $(e).closest('.form-group').removeClass('has-info').addClass('has-error');
                    },
                    success : function(e) {
                        $(e).closest('.form-group').removeClass('has-error').addClass('has-success');
                        $(e).remove();
                    },
                    errorPlacement : function(error, element) {
                        error.insertAfter(element.parent());
                    },
        			submitHandler : function(form) {
        				var villageId = $("#villageId").val();
        				var url = "";
        				if (villageId != undefined) {
        					url = '/village/edit.html';
        				} else {
        					url = '/village/add.html';
        				}

        				webside.common.commit('villageForm', url,'/village/listUI.html');
        			}

                });
          