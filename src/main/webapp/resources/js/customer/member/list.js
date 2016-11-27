/**
 * member.js
 */
//查看删除功能
var dtGridColumns = [{
    id : 'id',
    title : '编号',
    type : 'number',
    columnClass : 'text-center',
    hideType : 'xs',
    headerClass : 'dlshouwen-grid-header'
}, {
    id : 'mNum',
    title : '会员编号',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mName',
    title : '姓名',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mSex',
    title : '性别',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mQq',
    title : 'QQ',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mEntrdate',
    title : '入学时间',
    type : 'date',
    format : 'yyyy-MM-dd',
    otype : 'string',
    oformat : 'yyyy-MM-dd',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
    hideType : 'sm|xs'
}, {
    id : 'mVill',
    title : '村居',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mSchool',
    title : '学校',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mMajor',
    title : '专业',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mGardate',
    title : '毕业时间',
    type : 'date',
    format : 'yyyy-MM-dd',
    otype : 'string',
    oformat : 'yyyy-MM-dd',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
    hideType : 'sm|xs'
}, {
    id : 'mInidate',
    title : '入会时间',
    type : 'date',
    format : 'yyyy-MM-dd',
    otype : 'string',
    oformat : 'yyyy-MM-dd',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
    hideType : 'sm|xs'
}, {
    id : 'mPhone',
    title : '电话',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mAdress',
    title : '地址',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}, {
    id : 'mSpecial',
    title : '特长',
    type : 'string',
    columnClass : 'text-center',
    headerClass : 'dlshouwen-grid-header',
}];

//动态设置jqGrid的rowNum
var pageSize = $("#pageSize").val();
pageSize = pageSize == 0 || pageSize == "" ? sys.pageNum : pageSize;

var dtGridOption = {
    lang : 'zh-cn',
    ajaxLoad : true,
    check : true,
    checkWidth :'37px',
    extraWidth : '37px',
    loadURL : sys.rootPath + '/member/list.html',
    columns : dtGridColumns,
    gridContainer : 'dtGridContainer',
    toolbarContainer : 'dtGridToolBarContainer',
    tools : 'refresh|print|export[excel,csv,pdf,txt]',
    exportFileName : '会员信息',
    pageSize : pageSize,
    pageSizeLimit : [10, 20, 30]
};

var grid = $.fn.dlshouwen.grid.init(dtGridOption);
$(function() {
    if(null != $("#orderByColumn").val() && '' != $("#orderByColumn").val())
    {
        grid.sortParameter.columnId = $("#orderByColumn").val();
        grid.sortParameter.sortType = $("#orderByType").val();
    }
    grid.load();
    $("#btnSearch").click(customSearch);
    
    //注册回车键事件
    document.onkeypress = function(e){
    var ev = document.all ? window.event : e;
        if(ev.keyCode==13) {
            customSearch();
        }
    };
    
});
/**
 * 自定义查询
 * 这里不传入分页信息，防止删除记录后重新计算的页码比当前页码小而导致计算异常
 */
function customSearch() {
    grid.parameters = new Object();
    grid.parameters['vName'] = $("#searchKey").val();
    grid.refresh(true);
}