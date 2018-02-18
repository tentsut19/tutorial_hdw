<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:set var="mainMenu" value="finance" scope="request"/>
<c:set var="subMenu" value="printinvoice" scope="request"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>มอบหมายพนักงานเก็บเงิน</title>
<jsp:include page="../layout/header.jsp"></jsp:include>
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
					<div class="row mt05 mb05" >
						<div class="col-md-12">
							<h3>พิมพ์ใบแจ้งหนี้</h3>
							<ol class="breadcrumb no-bg mb-1">
								<li class="breadcrumb-item active">ระบบการเงิน</li>
								<li class="breadcrumb-item active">มอบหมายพนักงานเก็บเงิน</li>
							</ol>
						</div>
					</div>

					<div class="row">
						<div class="col-md-12">
							<ul class="card nav nav-tabs nav-tabs-2">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/printinvoice/cashier"><b><i
											class="fa fa-print"></i> มอบหมายพนักงานเก็บเงิน</b></a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/printinvoice"><b><i
											class="fa fa-print"></i> รายละเอียดการพิมพ์</b></a></li>
								<li class="nav-item"><a class="nav-link active"
									href="${pageContext.request.contextPath}/printinvoice/cashierconfig"><b><i
											class="ti-settings"></i> ตั้งค่ามอบหมายพนักงานเก็บเงิน</b></a></li>
							</ul>
						</div>
					</div>

					<div class="card">
						<div class="posts-list posts-list-1">
							<div class="pl-item">
								<div class="row">
									<div class="col-md-3">
										<b>มอบหมายพนักงานเก็บเงินผู้รับผิดชอบ</b>
									</div>
									<div class="col-md-7 mb05">
										<select id="cashier" class="form-control">
											<c:forEach items="${personnelBeans}" var="personnelBean">
												<option value="${personnelBean.id }"
													<c:if test="${personnelBean.id == applicationSearchBean.personnelId}">selected="selected"</c:if>>${personnelBean.firstName }
													${personnelBean.lastName } (${personnelBean.nickName })</option>
											</c:forEach>
										</select>
									</div>
									<div class="col-md-2 mb05">
										<button type="button" data-toggle="modal" onclick="openModalServiceapplication();"
											class="btn btn-info label-left float-xs-right col-xs-12 btn-xs"><span class="btn-label">
											<i class="ti-search"></i></span>ค้นหาใบสมัครใช้บริการ
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="card mt05 ">
						<div class="card-header text-uppercase">
							<h4>
								<i class="ti-list"></i>&nbsp;&nbsp;รายการใบสมัคร
							</h4>
						</div>
						<div class="posts-list posts-list-1">
							<div class="pl-item">
								<div class="row mb05 mt15">
									<div class="row mt15 mb15">
										<div class="col-md-12">
											<center>
												<button type="button" class="btn btn-lg btn-lg btn-success btn-rounded label-left b-a-0 waves-effect waves-light submit_cashierconfig">
													<span class="btn-label"><span class="ti-check"></span></span>
													<b>ยืนยันการตั้งค่า</b>
												</button>
											</center>
										</div>
									</div>
									<div class="row mb05">
										<div class="col-md-12">
											<jsp:include page="../layout/paging-entries.jsp"></jsp:include>
										</div>									
									</div>
									<div class="col-md-12 mb05">
										<div class="table-responsive">
											<table class="table table-bordered table-hover" id="table_serviceapplication">
												<thead class="thead-default">
													<tr> 
														<th width="10%"><center>เลขที่ใบสมัคร</center></th>
														<th width="20%">ข้อมูลลูกค้า</th>
														<th width="30%">ข้อมูลบริการที่สมัคร</th>
														<th width="35%"><center>เขตชุมชน / โครงการ</center></th>
														<th width="5%"></th>
													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${pagination.dataListBean != null && pagination.dataListBean.size() > 0}">
															<c:forEach var="serviceApplicationBean" items="${pagination.dataListBean}" varStatus="i">
																<tr id="tr_${serviceApplicationBean.id}">
																	<td class="td-middle">
																		<center>
																		<input type="hidden" value="${serviceApplicationBean.id}" >
																			<a class="cursor-p" target="_blank" href="${pageContext.request.contextPath}/serviceapplicationlist/view/${serviceApplicationBean.id}" data-toggle="tooltip" data-placement="bottom" title="ดูรายละเอียด">
																				<b>${serviceApplicationBean.serviceApplicationNo}</b>
																			</a>
																			</
																		</center>
																	</td>
																	<td class="td-middle">
																	${serviceApplicationBean.customer.prefix}${serviceApplicationBean.customer.firstName}&nbsp;
																	${serviceApplicationBean.customer.lastName} ${serviceApplicationBean.plateNumber }<br>
																	<small style="color: gray;">
																	<b>รหัสลูกค้า&nbsp;:&nbsp;</b><a href="${pageContext.request.contextPath}/customerregistration/view/${serviceApplicationBean.customer.id }" target="_blank" data-toggle="tooltip" data-placement="bottom" title="ดูรายละเอียด">${serviceApplicationBean.customer.custCode }</a><br>
																	
																	<c:choose>
																		<c:when test="${serviceApplicationBean.plateNumber != null && serviceApplicationBean.plateNumber != \"\" }">
																			<b>Plate Number&nbsp;:&nbsp;</b>${serviceApplicationBean.plateNumber }<br>
																		</c:when>
																		<c:otherwise>
																			<c:if test="${serviceApplicationBean.customer.contact.email != null && serviceApplicationBean.customer.contact.email != \"\" }">
																				<b>Email&nbsp;:&nbsp;</b>${serviceApplicationBean.customer.contact.email}<br>
																			</c:if>
																		</c:otherwise>
																	</c:choose>
																	
																	<b>โทร&nbsp;:&nbsp;</b>${serviceApplicationBean.customer.contact.mobile}
																	</small>
																	</td>
																	<td class="td-middle">${serviceApplicationBean.servicepackage.packageName}<br>
																	<small style="color: gray;"><b>รหัส Package :</b> ${serviceApplicationBean.servicepackage.packageCode}<br><b>ประเภทบริการ ${serviceApplicationBean.servicepackage.serviceType.packageTypeName}</b></small></td>
																	<td class="td-middle">
																		<center>
																			<c:forEach var="addressBean" items="${serviceApplicationBean.addressList}" varStatus="j">
																				<c:if test="${addressBean.addressType == 3}">																			
																					${addressBean.collectAddressDetail } <br><b>(${addressBean.zoneBean.zoneDetail })</b>
																					<c:if test="${addressBean.nearbyPlaces != null }">
																					<br>
																					<font style="color: gray;">ใกล้เคียงกับ ${addressBean.nearbyPlaces }</font>
																					</c:if>
																				</c:if>
																			</c:forEach>																	
																		</center>
																	</td>
																	<td class="td-middle"><center>
																		<a class="run-swal cursor-p">
																		<span class="ti-trash" onclick="deleteServiceapplication('${serviceApplicationBean.id}');" 
																		data-toggle="tooltip" data-placement="bottom" title="" data-original-title="ลบ">
																		</span></a></center>
																	</td>
																</tr>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<tr>
																<td colspan="5"><center>ไม่พบข้อมูลใบสมัคร</center></td>
															</tr>
														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
										</div>
									</div>
									
									<div class="row mt15 mb15">
										<div class="col-md-12">
											<center>
												<button type="button" class="btn btn-lg btn-lg btn-success btn-rounded label-left b-a-0 waves-effect waves-light submit_cashierconfig">
													<span class="btn-label"><span class="ti-check"></span></span>
													<b>ยืนยันการตั้งค่า</b>
												</button>
											</center>
										</div>
									</div>
									<jsp:include page="../layout/paging.jsp"></jsp:include>
								</div>
							</div>
						</div>
					</div>

				</div>
				
				<jsp:include page="modal_serviceapplication.jsp"></jsp:include>
				
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
		
			$("#select_all").click(function() {
				$(".checkbox_inv").prop('checked', $(this).prop("checked"));
			});
			
			$(".submit_cashierconfig").click(function() {
				var personnelId = $('#cashier').val();
				var serviceApplicationBeanList = [];
				
				var serviceApplicationBean = {};
				serviceApplicationBean.personnelId = personnelId;
				serviceApplicationBeanList.push(serviceApplicationBean);
				
				$('#table_serviceapplication > tbody  > tr').each(function() {
					var serviceApplicationBean = {};
					$(this).find('input').each(function(i) {
							switch (i) {
							case 0:
								serviceApplicationBean.id = $(this).val();
								serviceApplicationBeanList.push(serviceApplicationBean);
								break;
							}
					});
				}); //end find tr
				console.log(serviceApplicationBeanList);
				
				$('.preloader').modal('show');
				$.ajax({
						type : "POST",
						contentType : "application/json; charset=utf-8",
						url : "${pageContext.request.contextPath}/printinvoice/setassigncashier",
						dataType : 'json',
						data : JSON.stringify(serviceApplicationBeanList),
							//timeout : 100000,
							success : function(data) {
								//window.open('${pageContext.request.contextPath}/financialreport/invoiceOrReceiptList/exportPdf','_blank');
								window.location.reload();
							},
							error : function(e) {
								console.log("ERROR: ",e);
								$('.preloader').modal('hide');
							},
							done : function(e) {
								console.log("DONE");
								$('.preloader').modal('hide');
							}
						});
				
			});
			
			$('#cashier').change(function() {
				console.log($(this).val());
				var personnelId =  $(this).val();
				var applicationSearchBean = {};
				applicationSearchBean.personnelId = personnelId;
				
				$('.preloader').modal('show');
				$.ajax({
						type : "POST",
						contentType : "application/json; charset=utf-8",
						url : "${pageContext.request.contextPath}/printinvoice/searchCashierconfig",
						dataType : 'json',
						data : JSON.stringify(applicationSearchBean),
							//timeout : 100000,
							success : function(data) {
								window.location.href = "${pageContext.request.contextPath}/printinvoice/cashierconfig";
							},
							error : function(e) {
								console.log("ERROR: ",e);
								$('.preloader').modal('hide');
							},
							done : function(e) {
								console.log("DONE");
								$('.preloader').modal('hide');
							}
						});
				
			});

		</script>
</body>
</html>
