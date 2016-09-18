<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }" />
<link rel="stylesheet"
	href="${ctx }/resources/js/select2/select2.min.css" />
<script type="text/javascript"
	src="${ctx }/resources/js/select2/select2.min.js"></script>
<script type="text/javascript"
	src="${ctx }/resources/js/select2/zh-CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/customer/village/form.js"></script>

<div class="page-header">
	<h1>
		<c:if test="${empty villageEntity}">
		新增组织
		</c:if>
		<c:if test="${!empty villageEntity}">
		编辑组织
		</c:if>
	</h1>
</div>
<div class="row" style="margin-top: 5px;">
	<div class="col-xs-12">
		<form id="villageForm" name="villageForm" class="form-horizontal"
			role="form" method="post">
			<c:if test="${!empty villageEntity}">
				<input type="hidden" id="pageNum" name="pageNum"
					value="${page.pageNum }">
				<input type="hidden" id="pageSize" name="pageSize"
					value="${page.pageSize }">
				<input type="hidden" id="orderByColumn" name="orderByColumn"
					value="${page.orderByColumn }">
				<input type="hidden" id="orderByType" name="orderByType"
					value="${page.orderByType }">
				<input type="hidden" name="id" id="villageId"
					value="${villageEntity.id }">

			</c:if>

			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userName">LOGO</label>
				<div class="col-sm-10">
					<ul class="ace-thumbnails clearfix">
						<li><a href=""
							data-rel="colorbox" class="cboxElement"> <img width="150"
								height="150" alt="150x150"
								src="">
								<div class="text">
									<div class="inner">Sample Caption on Hover</div>
								</div>
						</a>

							<div class="tools tools-bottom">
								<a href="#"> <i class="ace-icon fa fa-link"></i>
								</a> <a href="#"> <i class="ace-icon fa fa-paperclip"></i>
								</a> <a href="#"> <i class="ace-icon fa fa-pencil"></i>
								</a> <a href="#"> <i class="ace-icon fa fa-times red"></i>
								</a>
							</div></li>
					</ul>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userInfo.sex">是否启用</label>
				<div class="col-sm-10">
					<div class="radio">
						<label> <input name="vInuseFlag" type="radio"
							class="ace input-lg" value="1"
							<c:if test="${villageEntity.vInuseFlag eq 1}">checked</c:if>>
							<span class="lbl bigger-110">是</span>
						</label> <label> <input name="vInuseFlag" type="radio"
							class="ace input-lg" value="2"
							<c:if test="${villageEntity.vInuseFlag eq 2}">checked</c:if>>
							<span class="lbl bigger-110">否</span>
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userName">名称</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="form-control" name="vName" id="vName"
							type="text" value="${villageEntity.vName}"
							placeholder="村居或者组织名称..." />
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userName">电话</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="form-control" name="vPhone" id="villagePhone"
							type="text" value="${villageEntity.vPhone}"
							placeholder="村居/组织联系电话..." />
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userName">地址</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="form-control" name="vAddress" id="villageAddress"
							type="text" value="${villageEntity.vAddress}"
							placeholder="村居/组织地址..." />
					</div>
				</div>
			</div>



			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="description">组织描述</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="form-control" name="vDesc" id="description"
							type="text" value="${villageEntity.vDesc }"
							placeholder="组织描述描述..." />
					</div>
				</div>
			</div>
		</form>
		<div class="hr hr-dotted"></div>
	</div>
</div>
<div class="center">
	<button id="btnAdd" type="button"
		onclick="javascript:$('#villageForm').submit();"
		class="btn btn-success btn-sm">
		<i class="fa fa-user-plus"></i>&nbsp;
		<c:if test="${empty villageEntity}">
		添加
		</c:if>
		<c:if test="${!empty villageEntity}">
		保存
		</c:if>
	</button>
	<button id="btn" type="button"
		onclick="webside.common.loadPage('/village/listUI.html<c:if test="${!empty userEntity}">?page=${page.pageNum }&rows=${page.pageSize }&sidx=${page.orderByColumn }&sord=${page.orderByType }</c:if>')"
		class="btn btn-info btn-sm">
		<i class="fa fa-undo"></i>&nbsp;返回
	</button>
</div>