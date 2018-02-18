<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="mainMenu" value="report" scope="request"/>
<c:set var="mainSubMenu" value="reportstock" scope="request"/>
<c:set var="subMenu" value="stocksummary" scope="request"/>

<!DOCTYPE html>
<html lang="en">
<head>
<title>รายงานสินค้าคงคลัง</title>
<jsp:include page="../layout/header.jsp"></jsp:include>
</head>
<body class="fixed-header material-design fixed-sidebar">
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
							<h3>รายงานสินค้าคงคลัง</h3>
							<ol class="breadcrumb no-bg mb-1">
								<li class="breadcrumb-item active">รายงานคลังสินค้า</li>
								<li class="breadcrumb-item active">รายงานสินค้าคงคลัง</li>
							</ol>
						</div>
					</div>

					<div class="row">
						<div class="col-md-3">
							<div class="card mt05">
								<div class="card-header text-uppercase">
									<h4>
										<i class="zmdi zmdi-search"></i>&nbsp;ระบุข้อมูลค้นหา
									</h4>
								</div>
								<div class="posts-list posts-list-1">
									<div class="pl-item">
										<form:form method="post" commandName="reportSearchBean"
											action="reportcustomer/searchbycondition">
											<div class="row">												
												<div class="col-md-12">
													<div class="form-group">
														<label for="year"><b>เลือกหมวดหมู่สินค้า</b></label> 
														<select class="form-control" id="equipmentProductType" >
															<option value="0">--- แสดงข้อมูลทุกหมวดหมู่ ---</option>
															<c:forEach items="${epcSearchBeans}" var="epcSearchBean"
																varStatus="i">
																<c:if test="${epcSearchBean.equipmentProductCategoryCode ne '00001'}">
																<option value="${epcSearchBean.id}">
																	${epcSearchBean.equipmentProductCategoryName}</option>
																</c:if>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label for="year"><b>เลือกคลังสินค้า</b></label> 				
														<select class="form-control" id="equipmentStock" >
															<option value="0">--- แสดงข้อมูลทุกคลังสินค้า ---</option>
															<c:forEach items="${stockBeans}" var="stockBean" varStatus="i">
																<option value="${stockBean.id}">
																	${stockBean.stockName} (${stockBean.company.companyName})</option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<label for="year"><b>เลือกรูปแบบการแสดงข้อมูล</b></label>
														<select class="form-control" id="split">
															<option value="1" selected="selected">สินค้าคงคลังแยกตามคลังสินค้า</option>
															<option value="2">สินค้าคงคลังแยกตามบริษัทผู้จำหน่าย</option>
															<option value="3">สินค้าคงคลังแยกตามหมวดหมู่</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row mt05">
												<center>
													<button type="button" id="exportPdf" class="btn btn-lg bg-instagram btn-rounded label-left b-a-0 waves-effect waves-light">
														<span class="btn-label"><span class="ti-printer"></span></span>
														ออกรายงาน (PDF)
													</button>
												</center>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="card mt05" id="div_embed">
<!-- 								<embed class="card" -->
<%-- 									src="${pageContext.request.contextPath}/resources/assets/pdf/worksheet_setup.pdf" --%>
<!-- 									width="100%" height="800" type='application/pdf'> -->
								<div class="card header img-cover mb-2"
									style="background-image: url(../resources/assets/img/report.jpg);">
									<div class="gradient gradient-success"></div>
									<div class="h-content">
										<center>
										<div class="h-title"><b>ระบบการออกรายงานเพื่อการวิเคราะห์ทางธุรกิจ</b></div>
											กรุณาเลือกข้อมูลตามเงื่อนไขด้านซ้ายมือ เพื่อออกรายงาน
										</center>
										<hr>
										<div class="h-form">
											<div class="clearfix">
												<div class="h-links">
													<center>
													</center>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

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

$("#exportPdf").click(function () {

	var equipmentProductType = $("#equipmentProductType").val();
	var equipmentStock = $("#equipmentStock").val();
	var split = $("#split").val();
	
	var embedPdf = '<embed class="card" src="${pageContext.request.contextPath}/stockreport/stocksummary/exportPdf/equipmentProductType/'+equipmentProductType+'/equipmentStock/'+equipmentStock+'/split/'+split+'" width="100%" height="500" type="application/pdf">';
	$("#div_embed").html(embedPdf);
	
});

</script>

</body>
</html>
