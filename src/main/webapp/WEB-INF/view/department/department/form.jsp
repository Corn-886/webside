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
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/customer/department/department/form.js"></script>

<div class="page-header">
	<h1>
		<c:if test="${empty departmentEntity}">
		新增组织
		</c:if>
		<c:if test="${!empty departmentEntity}">
		编辑组织
		</c:if>
	</h1>
</div>
<div class="row" style="margin-top: 5px;">
	<div class="col-xs-12">
		<form id="departmenForm" name="departmenForm" class="form-horizontal"
			role="form" method="post">
			<c:if test="${!empty departmenEntity}">
				<input type="hidden" id="pageNum" name="pageNum"
					value="${page.pageNum }">
				<input type="hidden" id="pageSize" name="pageSize"
					value="${page.pageSize }">
				<input type="hidden" id="orderByColumn" name="orderByColumn"
					value="${page.orderByColumn }">
				<input type="hidden" id="orderByType" name="orderByType"
					value="${page.orderByType }">
				<input type="hidden" name="id" id="departmenId"
					value="${departmenEntity.id }">

			</c:if>


			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userName">名称</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="form-control" name="dName" id="departmentname"
							type="text" value="${departmenEntity.dName}"
							placeholder="名称" />
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-1 no-padding-right"
					for="userName">描述</label>
				<div class="col-sm-10">
					<div class="clearfix">
						<input class="form-control" name="dIntroduce" id="departmentdIntroduce"
							type="text" value="${departmenEntity.dIntroduce}"
							placeholder="部门职能描述/150字以内" />
					</div>
				</div>
			</div>
		</form>
		<div class="hr hr-dotted"></div>
	</div>
</div>

<div class="center">
	<button id="btnAdd" type="button"
		onclick="javascript:$('#departmenForm').submit();"
		class="btn btn-success btn-sm">
		<i class="fa fa-user-plus"></i>&nbsp;
		<c:if test="${empty departmenEntity}">
		添加
		</c:if>
		<c:if test="${!empty departmenEntity}">
		保存
		</c:if>
	</button>
	<button id="btn" type="button"
		onclick=""
		class="btn btn-info btn-sm">
		<i class="fa fa-undo"></i>&nbsp;返回
	</button>
</div>