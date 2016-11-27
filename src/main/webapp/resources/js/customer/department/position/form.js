/**
 * position.js
 */
 $('#positionForm').validate({
                    errorElement : 'div',
                    errorClass : 'help-block',
                    focusInvalid : false,
                    ignore : "",
                    rules : {
                    	positiontpName : {
                             required : true
                         },
                    },
                    messages : {
                    	positiontpName : {
                            required : "请填写名称",                           
                        },
                        
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
        				var positionId = $("#positionId").val();
        				var url = "";
        				if (positionId != undefined) {
        					url = '/position/edit.html';
        				} else {
        					url = '/position/add.html';
        				}

        				webside.common.commit('positionForm', url,'/position/listUI.html');
        			}

                });