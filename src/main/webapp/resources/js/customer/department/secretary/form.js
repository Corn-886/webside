/**
 * secretary.js
 */
$('#secretary')
		.validate(
				{
					errorElement : 'div',
					errorClass : 'help-block',
					focusInvalid : false,
					ignore : "",
					rules : {
						sName : {
							required : true
						},
						sSex : {
							required : true
						},
						sVill : {
							required : true
						},
						sBirthday : {
							required : true
						},
						sGrade : {
							required : true
						},
						sMajor : {
							required : true
						},
						dId : {
							required : true
						},
						pId : {
							required : true
						},
						sAddress : {
							required : true
						},
						sLandline : {
							required : true
						},
						sPhone : {
							required : true
						},
						sEmail : {
							required : true
						}

					},
					messages : {
						sName : {
							required : "请填写姓名",
						},
						sSex : {
							required : "请选择性别",
						},
						sVill : {
							required : "请选择村居",
						},
						sBirthday : {
							required : "请选择生日",
						},
						sGrade : {
							required : "请选择年级",
						},
						sMajor : {
							required :"请选择专业",
						},
						dId : {
							required : "请选择部门",
						},
						pId : {
							required : "请选择职称",
						},
						sAddress : {
							required : "请填写地址",
						},
						sLandline : {
							required : "请填写固话",
						},
						sPhone : {
							required : "填写电话",
						},
						sEmail : {
							required : "填写邮箱",
						},
					},
					highlight : function(e) {
						$(e).closest('.form-group').removeClass('has-info')
								.addClass('has-error');
					},
					success : function(e) {
						$(e).closest('.form-group').removeClass('has-error')
								.addClass('has-success');
						$(e).remove();
					},
					errorPlacement : function(error, element) {
						error.insertAfter(element.parent());
					},
					submitHandler : function(form) {
						var secretaryId = $("secretaryId").val();
						var url = "";
						if (secretaryId != undefined) {
							url = '/secretary/edit.html';
						} else {
							url = '/secretary/add.html';
						}

						webside.common.commit('secretary', url,
								'/secretary/listUI.html');
					}

				});