<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="/WEB-INF/tld/permission.tld" prefix="perm"%>

<c:set var="mainMenu" value="personnel" scope="request"/>
<c:set var="subMenu" value="personnel" scope="request"/>

<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>ระเบียบพนักงาน</title>
<jsp:include page="../layout/header.jsp"></jsp:include>
<style type="text/css">
.form-group{
	margin-bottom: 0rem !important;
}
</style>
</head>
<body class="material-design fixed-sidebar fixed-header">

	<div class="wrapper">

		<!-- Preloader -->
		<div class="preloader"></div>
		<jsp:include page="../layout/menu-left.jsp"></jsp:include>
		<jsp:include page="../layout/menu-right.jsp"></jsp:include>

		<jsp:include page="../layout/menu-top.jsp"></jsp:include>

		<div class="site-content">
			<!-- Content -->
			<div class="content-area py-1">
				<div class="container-fluid">
					<div class="row mb05 mt05" >
						<div class="col-md-8">
							<h3>ระเบียบพนักงาน</h3>
							<ol class="breadcrumb no-bg mb-1">
								<li class="breadcrumb-item active">ข้อมูลพนักงาน</li>
								<li class="breadcrumb-item active">ระเบียบพนักงาน</li>
							</ol>
						</div>
						<div class="col-md-4 mt05" align="right">
						<perm:permission object="M11.add" >
							<a data-toggle="modal" onclick="openDialogAdd();"><button
									type="button"
									class="btn btn-info label-left float-xs-right mr-0-5">
									<span class="btn-label"><i class="ti-plus"></i></span>เพิ่มข้อมูลพนักงาน
								</button></a>
						</perm:permission>
						</div>
					</div>
					<div class="card mt05">
						<div class="card-header text-uppercase">
							<h4>
								<i class="zmdi zmdi-search"></i>&nbsp; ค้นหาข้อมูลพนักงาน
							</h4>
						</div>
						<div class="posts-list posts-list-1">
							<div class="pl-item">
								<div class="row mb15">
									<form:form method="post" commandName="personnelSearchBean" action="personnel/search">
										<div class="col-md-4 mt05">
											<input type="hidden" id="tempKey" value="${personnelSearchBean.key }" />
											<form:input type="text" id="key" path="key" class="form-control" value="${personnelSearchBean.key }"
												placeholder="ระบุชื่อหรือรหัสพนักงานที่ต้องการค้นหา..." />
										</div>
										<div class="col-md-3 mt05">
											<input type="hidden" id="tempSearchPositionSelect" value="${personnelSearchBean.position }" />
											<form:select path="position" class="form-control" id="searchPositionSelect" >
												<option value="" selected="selected">--- แสดงทุกตำแหน่งงาน  ---</option>
												<c:forEach items="${positionBeans}" var="psb"> 
													<c:choose>
														<c:when test="${psb.positionName eq personnelSearchBean.position}">
													        <option value="${psb.positionName }" selected="selected">
																${psb.positionName }
															</option>
													    </c:when>
														 <c:otherwise>
													        	<option value="${psb.positionName }" >
																	${psb.positionName }
																</option>
													    </c:otherwise> 
												    </c:choose>
												</c:forEach>
											</form:select>
										</div>
										<div class="col-md-3 mt05">
											<input type="hidden" id="tempSearchPermissionGroupSelect" value="${personnelSearchBean.permissionGroup }" />
											<form:select path="permissionGroup" class="form-control" id="searchPermissionGroupSelect">
												<option value="0">--- แสดงกลุ่มสิทธิ์ทั้งหมด  ---</option>
												<c:forEach items="${permissionGroupBeans}" var="pgb"> 
													<c:choose>
														<c:when test="${pgb.id eq personnelSearchBean.permissionGroup}">
													        <option value="${pgb.id }" selected="selected">
																${pgb.permissionGroupName }
															</option>
													    </c:when>
														 <c:otherwise>
													        	<option value="${pgb.id }" >
																	${pgb.permissionGroupName }
																</option>
													    </c:otherwise> 
												    </c:choose>
												</c:forEach>
											</form:select>
										</div>
										<div class="col-md-2 mt05 col-xs-12">											
											<button type="submit" class="btn btn-lg bg-instagram b-a-0 waves-effect waves-light col-xs-12">
												<span class="ti-search"></span>&nbsp;&nbsp;ค้นหา
											</button>
											
										</div>
									</form:form>
								</div>
							</div>
						</div>
					</div>
					<div class="card mb40">
						<div class="card-header text-uppercase">
							<h4>
								<i class="zmdi zmdi-format-list-bulleted"></i>&nbsp;&nbsp;รายชื่อพนักงาน
							</h4>
						</div>
						<div class="posts-list posts-list-1">
							<div class="pl-item">
								<div class="row mb05">
									<div class="col-md-12 mb05">
										<div class="table-responsive">
											<table class="table table-bordered table-hover" id="table-1">
												<thead class="thead-default">
													<tr>
														<th><center>รหัสพนักงาน</center></th>
														<th>ชื่อ -นามสกุล</th>
														<th><center>บริษัท</center></th>
														<th><center>ตำแหน่งงาน</center></th>
														<th><center>กลุ่มสิทธิ์</center></th>
														<th><center>เบอร์โทร</center></th>
<%-- 														<th><center>E-mail</center></th> --%>
														<th width="50px;"></th>
													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${personnels != null && personnels.size() > 0 }">
															<c:forEach var="personnel" items="${personnels}" varStatus="i">
																<tr>
																	<td><center>
																			<perm:permission object="M11.view" >
																			 <a class="cursor-p" href="${pageContext.request.contextPath}/personnel/view/${personnel.id }" data-toggle="tooltip" data-placement="bottom" title=""
																				data-original-title="ดูรายละเอียด">
																			</perm:permission>
																				${personnel.personnelCode }
																			<perm:permission object="M11.view" >	
																				</a>
																			</perm:permission>
																		</center>
																	</td>
																	<td>
																		${personnel.firstName } ${personnel.lastName } (${personnel.nickName})
																	 </td>
																	 <td>
																		${personnel.company.companyName }
																	 </td>
																	<td><center>${personnel.position.positionName }</center></td>
																	<td><center>${personnel.permissionGroup.permissionGroupName }</center></td>
																	<td><center>${personnel.contact.mobile }</center></td>
<%-- 																	<td><center>${personnel.contact.email }</center></td> --%>
																	<td align="center">
																	<perm:permission object="M11.edit" >
																	<a class="cursor-p">
																		<span   class="ti-pencil-alt" onclick="openDialogEdit(${personnel.id });" 
																				data-toggle="tooltip" data-placement="bottom" title=""
																				data-original-title="แก้ไข">
																		</span>
																	</a> 		
																	</perm:permission>
																	
																	<perm:permission object="M11.delete" >															
																	<a class="cursor-p">
																		<span class="ti-trash" onclick="openDialogDelete(${personnel.id });"
																				data-toggle="tooltip" data-placement="bottom" title=""
																				data-original-title="ลบ">
																		</span>
																	</a>
																	</perm:permission>
																	</td>
																</tr>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<tr><td colspan="8"><center>ไม่พบข้อมูล</center></td></tr>
														</c:otherwise>
													</c:choose>
													
												</tbody>
											</table>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- modal add -->
			<jsp:include page="modal_add.jsp"></jsp:include>
			<!-- end modal add -->
			<!-- modal delete -->
			<jsp:include page="modal_delete.jsp"></jsp:include>
			<!-- end modal delete -->
			<!-- modal edit -->
			<jsp:include page="modal_edit.jsp"></jsp:include>
			<!-- end modal edit -->
			
			<!-- Footer -->
			<jsp:include page="../layout/footer.jsp"></jsp:include>
		</div>

	</div>

	<jsp:include page="../layout/script.jsp"></jsp:include>

	<c:if test="${not empty alertBean}">
		<script type="text/javascript">
			openAlert('${alertBean.type}', '${alertBean.title}',
					'${alertBean.detail}');
		</script>
	</c:if>
	
	<script type="text/javascript">
		$('input[name=empIDType]').change(function() {
			if (this.value == 'custom') {
				$('.empid').show();
			} else {
				$('.empid').hide();
			}
		});
		
		//generate session search personnel
		function generatePersonnelSearchSession(){
			var personnelSearchBean = {};
			personnelSearchBean.key = $('#tempKey').val();
			personnelSearchBean.position = $('#tempSearchPositionSelect').val();
			personnelSearchBean.permissionGroup = $('#tempSearchPermissionGroupSelect').val();
			
			//send generate session personnel search
			$.ajax({
				type : "POST",
				contentType : "application/json; charset=utf-8",
				url : "${pageContext.request.contextPath}/personnel/generatePersonnelSearchSession",
				dataType : 'json',
				async: false,
				data : JSON.stringify(personnelSearchBean),
				//timeout : 100000,
				success : function(data) {
					
				},
				error : function(e) {
					console.log("ERROR: ", e);
				},
				done : function(e) {
					console.log("DONE");
				}
			});
		}		

	</script>

</body>
</html>
