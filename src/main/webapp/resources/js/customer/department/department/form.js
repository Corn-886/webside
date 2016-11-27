/**
 * department form.js
 */
 $('#departmenForm').validate({
                    errorElement : 'div',
                    errorClass : 'help-block',
                    focusInvalid : false,
                    ignore : "",
                    rules : {
                    	departmentname : {
                             required : true
                         },
                    },
                    messages : {
                    	departmentname : {
                            required : "请填写部门名称",                           
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
        				var departmentId = $("#departmentId").val();
        				var url = "";
        				if (departmentId != undefined) {
        					url = '/department/edit.html';
        				} else {
        					url = '/department/add.html';
        				}

        				webside.common.commit('departmenForm', url,'/department/listUI.html');
        			}

                });
