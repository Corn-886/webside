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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/customer/department/secretary/form.js"></script>

<div class="page-header">
	<h1>
		<c:if test="${empty secretaryEntity}">
		新增干事
		</c:if>
		<c:if test="${!empty secretaryEntity}">
		编辑干事
		</c:if>
	</h1>
</div>

<div class="row" style="margin-top: 5px;">
	<div class="col-xs-12">
		<form id="secretary" name="secretary" class="form-horizontal"
			role="form" method="post">
			<c:if test="${!empty secretaryEntity}">
				<input type="hidden" id="pageNum" name="pageNum"
					value="${page.pageNum }">
				<input type="hidden" id="pageSize" name="pageSize"
					value="${page.pageSize }">
				<input type="hidden" id="orderByColumn" name="orderByColumn"
					value="${page.orderByColumn }">
				<input type="hidden" id="orderByType" name="orderByType"
					value="${page.orderByType }">
				<input type="hidden" name="id" id="secretaryId"
					value="${secretaryEntity.id }">

			</c:if>
			<table
				class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
				<tbody>
					<tr>
						<td style="width: 150px; height: 35px;">姓名</td>
						<td><font color="red">*</font> <input name="sName"
							type="text" id="sName" placeholder="必填" /></td>
						<td style="width: 150px; height: 35px;">性别</td>
						<td>
							<div class="radio">
								<label> <input name="sSex" type="radio" id="sSex"
									class="ace input-lg" value="1"
									<c:if test="${secretaryEntity.sSex eq 1}">checked</c:if>>
									<span class="lbl bigger-110">男</span>
								</label> <label> <input name="sSex" type="radio" id="sSex"
									class="ace input-lg" value="2"
									<c:if test="${secretaryEntity.sSex eq 2}">checked</c:if>>
									<span class="lbl bigger-110">女</span>
								</label>
							</div> </select>
						</td>
					</tr>

					<tr>
						<td style="width: 150px; height: 35px;">所属村居</td>
						<td><font color="red">*</font> <input name="sVill" id="sVill"
							type="text" placeholder="必填" /></td>
						<td style="width: 150px; height: 35px;">所属部门</td>
						<td><select style="width: 250px;" name="dId" id="dId">
							<c:forEach var="dep" items="${departmentList}">
							<option value="${dep.id }">${dep.dName}</option>
							</c:forEach>

						</select></td>
					</tr>

					<tr>
						<td style="width: 150px; height: 35px;">政治面貌</td>
						<td><select style="width: 250px;" name="sPolitical"
							id="sPolitical">

								<option value="1">1</option>

						</select>
						<td style="width: 150px; height: 35px;">出生日期</td>
						<td><font color="red">*</font> <input name="sBirthday"
							id="sBirthday" type="text" placeholder="必填" /></td>

					</tr>

					<tr>
						<td style="width: 150px; height: 35px;">学校</td>
						<td><input name="sSchool" type="text" id="sSchool"
							placeholder="必填" /></td>
						<td style="width: 150px; height: 35px;">年级</td>
						<td><font color="red">*</font> <input name="sGrade"
							type="text" id="sGrade" placeholder="必填" /></td>

					</tr>

					<tr>
						<td style="width: 150px; height: 35px;">专业</td>
						<td><font color="red">*</font> <input name="sMajor"
							type="text" id="sMajor" placeholder="必填" /></td>
						<td style="width: 150px; height: 35px;">QQ</td>
						<td><input name="sQq" type="text" id="sQq" placeholder="必填" />
						</td>

					</tr>





					<tr>
						<td style="width: 150px; height: 35px;">邮箱</td>
						<td><font color="red">*</font> <input name="sEmail"
							id="sEmail" type="text" placeholder="必填" /></td>
						<td style="width: 150px; height: 35px;">电话</td>
						<td><font color="red">*</font> <input name="sPhone"
							type="text" id="sPhone" placeholder="必填" /></td>

					</tr>

					<tr>
						<td style="width: 150px; height: 35px;">固定电话</td>
						<td><font color="red">*</font> <input name="sLandline"
							type="text" id="sLandline" placeholder="必填" /></td>
						<td style="width: 150px; height: 35px;">家庭住址</td>
						<td><font color="red">*</font> <input name="sAddress"
							type="text" id="sAddress" placeholder="必填" style="width: 300px;" />
						</td>

					</tr>
					<tr>
						<td style="width: 150px; height: 35px;">职称</td>
						<td><select style="width: 250px;" name="pId" id="pId">
						<c:forEach var="pos" items="${positionList }">
							<option value="${pos.id }">${pos.pName}</option>
						</c:forEach>

						</select></td>

					</tr>

					<tr>
						<td style="width: 150px; height: 35px;">特长</td>
						<td><input name="sExperience" id="sExperience" type="text"
							placeholder="必填" style="width: 300px;" /></td>

					</tr>

				</tbody>
			</table>
		</form>

	</div>
</div>
<div class="center">
	<button id="btnAdd" type="button"
		onclick="javascript:$('#secretary').submit();"
		class="btn btn-success btn-sm">
		<i class="fa fa-user-plus"></i>&nbsp;
		<c:if test="${empty secretaryEntity}">
		添加
		</c:if>
		<c:if test="${!empty secretaryEntity}">
		保存
		</c:if>
	</button>
	<button id="btn" type="button" onclick="" class="btn btn-info btn-sm">
		<i class="fa fa-undo"></i>&nbsp;返回
	</button>

</div>