/**
 * 
 */
// 时间选择器插件
$('.date-picker').datepicker({
	 format : 'yyyy-mm-dd',
	    autoclose : true,
	    language : 'zh-CN',
	    todayHighlight : true,
	    clearBtn : true,
	    immediateUpdates : true,
});

$('#memberForm').validate({
    errorElement : 'div',
    errorClass : 'help-block',
    focusInvalid : false,
    ignore : "",
    rules : {
    	 mName : {
             required : true
         },
         mVill : {
             required : true
         },
         mSchool : {
             required : true
         },
         mPhone : {
             required : true
         },
    },
    messages : {
    	mName : {
            required : "请填写姓名",                           
        },
        mVill : {
            required : "请填写组织",                           
        },
        mSchool : {
            required : "请填写学校",                           
        },
        mPhone : {
            required : "请填写电话",                           
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
		var villageId = $("#memberId").val();
		var url = "";
		if (villageId != undefined) {
			url = '/member/edit.html';
		} else {
			url = '/member/add.html';
		}

		webside.common.commit('memberForm', url,'/member/listUI.html');
	}

});