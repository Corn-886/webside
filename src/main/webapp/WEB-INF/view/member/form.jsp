<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet" href="${ctx }/resources/js/datepicker/css/bootstrap-datepicker3.standalone.min.css"/>
<script type="text/javascript" src="${ctx }/resources/js/datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/datepicker/locales/bootstrap-datepicker.zh-CN.min.js" charset="UTF-8"></script>
<link rel="stylesheet"
	href="${ctx }/resources/js/select2/select2.min.css" />
<script type="text/javascript"
	src="${ctx }/resources/js/select2/select2.min.js"></script>
<script type="text/javascript"
	src="${ctx }/resources/js/select2/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/customer/member/form.js"></script>

<style>
.iconShow
{
	padding-left: 10px; 
	padding-top: 3px;
}
.source-icon
{
	 width:95%;
	 float:left;
}
@media screen and (max-width: 374px){
	.source-icon
	{
		 width:82%;
	}
}
@media screen and (min-width: 375px) and (max-width: 449px){
	.source-icon
	{
		 width:85%;
	}
}
@media screen and (min-width: 450px) and (max-width: 1279px) {
	.source-icon
	{
		 width:90%;
	}
}
@media screen and (min_width: 1280px) {
	.source-icon
	{
		 width:90%;
	}
}
</style>
<div class="page-header">
	<h1>
		<c:if test="${empty memberEntity}">
		新增会员
		</c:if>
		<c:if test="${!empty memberEntity}">
		编辑会员
		</c:if>
	</h1>
</div>
<div class="row" style="margin-top: 5px;">
	<div class="col-xs-12">
		<form id="memberForm" name="memberForm" class="form-horizontal" role="form" method="post">
			<c:if test="${!empty memberEntity}">
				<input type="hidden" id="pageNum" name="pageNum" value="${page.pageNum }"> 
				<input type="hidden" id="pageSize" name="pageSize" value="${page.pageSize }"> 
				<input type="hidden" id="orderByColumn" name="orderByColumn" value="${page.orderByColumn }"> 
				<input type="hidden" id="orderByType" name="orderByType" value="${page.orderByType }">
				<input type="hidden" name="id" id="memberId" value="${memberEntity.id }">
				
			</c:if>
	

			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">会员编号</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mNum" id="mNum" type="text"
						value="${memberEntity.name }" placeholder="会员编号..." />
				</div>
				</div>
			</div>
	
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">姓名*</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mName" id="mName" type="text"
						value="${memberEntity.name }" placeholder="姓名..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">性别</label>
				<div class="col-sm-10">
					<div class="radio">
						<label> <input name="mSex" type="radio"
							class="ace input-lg" value="1"
							<c:if test="${memberEntity.mSex eq 1}">checked</c:if>>
							<span class="lbl bigger-110">男</span>
						</label> <label> <input name="mSex" type="radio"
							class="ace input-lg" value="0"
							<c:if test="${memberEntity.mSex eq 0}">checked</c:if>>
							<span class="lbl bigger-110">女</span>
						</label>
					</div>
				</div>
			</div>
		
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">QQ</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mQq" id="mQq" type="text"
						value="${memberEntity.mQq }" placeholder="QQ账号..." />
				</div>
				</div>
			</div>	
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">入学时间</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control date-picker" name="mEntrdate" id="mEntrdate" type="text"
						value="${memberEntity.mEntrdate}" placeholder="入学时间..." />
				</div>
				</div>
			</div>
				
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">村居*</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mVill" id="mVill" type="text"
						value="${memberEntity.mVill }" placeholder="村居..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">学校*</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mSchool" id="mSchool" type="text"
						value="${memberEntity.mSchool }" placeholder="学校..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">毕业时间</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control date-picker" name="mGardate" id="mGardate" type="text"
						value="${memberEntity.mGardate }" placeholder="毕业时间..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">专业</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mMajor" id="mMajor" type="text"
						value="${memberEntity.mMajor }" placeholder="专业..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">学制</label>
				<div class="col-sm-10">
					<div class="radio">
						<label> <input name="mEdusystime" type="radio"
							class="ace input-lg" value="3"
							<c:if test="${memberEntity.mEdusystime eq 3}">checked</c:if>>
							<span class="lbl bigger-110">专科3年制</span>
						</label> <label> <input name="mEdusystime" type="radio"
							class="ace input-lg" value="4"
							<c:if test="${memberEntity.mEdusystime eq 4}">checked</c:if>>
							<span class="lbl bigger-110">本科4年制</span>
						</label>
					</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">入会时间</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control date-picker" name="mInidate" id="mInidate" type="text" data-date-format="yyyy-mm-dd"
						value="${memberEntity.name }" placeholder="入会时间..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">电话*</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mPhone" id="mPhone" type="text"
						value="${memberEntity.mPhone }" placeholder="电话..." />
				</div>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">地址</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mAdress" id="mAdress" type="text"
						value="${memberEntity.mAdress }" placeholder="地址..." />
				</div>
				</div>
			</div>
		
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right" for="name">特长</label>
				<div class="col-sm-10">
				<div class="clearfix">
					<input class="form-control" name="mSpecial" id="mSpecial" type="text"
						value="${memberEntity.mSpecial }" placeholder="特长..." />
				</div>
				</div>
			</div>	
		</form>
		<div class="hr hr-dotted"></div>
	</div>
</div>
<div class="center">
	<button id="btnAdd" type="button" onclick="javascript:$('#memberForm').submit();" class="btn btn-success btn-sm">
		<i class="fa fa-user-plus"></i>&nbsp;
		<c:if test="${empty memberEntity}">
		添加
		</c:if>
		<c:if test="${!empty memberEntity}">
		保存
		</c:if>
	</button>
	<button id="btn" type="button"
		onclick="webside.common.loadPage('/resource/listUI.html<c:if test="${!empty memberEntity}">?page=${page.pageNum }&rows=${page.pageSize }&sidx=${page.orderByColumn }&sord=${page.orderByType }</c:if>')"
		class="btn btn-info btn-sm">
		<i class="fa fa-undo"></i>&nbsp;返回
	</button>
</div>
