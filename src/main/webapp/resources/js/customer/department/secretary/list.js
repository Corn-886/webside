/**
 * secretary list.js
 * 
 */
var dtGridColumns = [
		{
			id : 'id',
			title : '编号',
			type : 'number',
			columnClass : 'text-center',
			hideType : 'xs',
			headerClass : 'dlshouwen-grid-header'
		},
		{
			id : 'sName',
			title : '姓名',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header'
		},
		{
			id : 'sVill',
			title : '村居',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header'
		},
		{
			id : 'sSex',
			title : '地址',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
		}, {
			id : 'sPolitical',
			title : '政治面貌',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sBirthday',
			title : '出生年月',
			type : 'date',
			format : 'yyyy-MM-dd',
			otype : 'string',
			oformat : 'yyyy-MM-dd',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'sm|xs'
		}, {
			id : 'sSchool',
			title : '学校',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sGrade',
			title : '年级',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sMajor',
			title : '专业',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sEmail',
			title : '邮箱',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		},{
			id : 'sPhone',
			title : '电话',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sLandline',
			title : '固话',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sAddress',
			title : '地址',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		}, {
			id : 'sExperience',
			title : '特长',
			type : 'string',
			columnClass : 'text-center',
			headerClass : 'dlshouwen-grid-header',
			hideType : 'xs'
		} ];

// 动态设置jqGrid的rowNum
var pageSize = $("#pageSize").val();
pageSize = pageSize == 0 || pageSize == "" ? sys.pageNum : pageSize;

var dtGridOption = {
	lang : 'zh-cn',
	ajaxLoad : true,
	check : true,
	checkWidth : '37px',
	extraWidth : '37px',
	loadURL : sys.rootPath + '/secretary/list.html',
	columns : dtGridColumns,
	gridContainer : 'dtGridContainer',
	toolbarContainer : 'dtGridToolBarContainer',
	tools : 'refresh|print|export[excel,csv,pdf,txt]',
	exportFileName : '角色信息',
	pageSize : pageSize,
	pageSizeLimit : [ 10, 20, 30 ]
};

var grid = $.fn.dlshouwen.grid.init(dtGridOption);
$(function() {
	if (null != $("#orderByColumn").val() && '' != $("#orderByColumn").val()) {
		grid.sortParameter.columnId = $("#orderByColumn").val();
		grid.sortParameter.sortType = $("#orderByType").val();
	}
	grid.load();
	$("#btnSearch").click(customSearch);

	// 注册回车键事件
	document.onkeypress = function(e) {
		var ev = document.all ? window.event : e;
		if (ev.keyCode == 13) {
			customSearch();
		}
	};

});

/**
 * 自定义查询 这里不传入分页信息，防止删除记录后重新计算的页码比当前页码小而导致计算异常
 */
function customSearch() {
	grid.parameters = new Object();
	grid.parameters['Sname'] = $("#searchKey").val();
	grid.refresh(true);
}
