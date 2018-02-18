<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="job10" class="job" style="display: none;">
	<div class="row">
		<div class="col-md-8">
			<b>ค้นหาอุปกรณ์รับสัญญาณเคเบิลทีวี และอุปกรณ์เสริมอื่นๆ
				ที่ต้องการยืม</b>
		</div>
		<form action="borrow_adminlistproduct" method="post">
			<div class="col-md-4" align="right">
				<button type="button" data-toggle="modal" onclick="openModalAddBorrow()" class="btn btn-info label-left float-xs-right" style="display: block;"><span class="btn-label"><i class="ti-plus"></i></span>เลือกสินค้า</button>
			</div>
		</form>
	</div>
	
	<div class="row mt05">
		<div class="col-md-12">
		<div class="table-responsive">
			<table class="table table-bordered mb-0 table-hover" id="c_borrow_tableEquipmentProduct">
				<thead class="thead-bg">
					<tr>
						<th><center>ลำดับ</center></th>
						<th><center>หมายเลข S/N</center></th>
						<th><center>ชื่อเรียกอุปกรณ์</center></th>
						<th style="width: 150px;"><center>ราคาต้นทุน</center></th>
						<th style="width: 150px;"><center>ราคาขาย</center></th>
						<th style="width: 150px;"><center>ราคามัดจำ</center></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			</div>
		</div>
	</div>
	<div class="row mt05">
		<div class="col-md-12">
			<b>หมายเหตุ / ข้อมูลเพิ่มเติม</b>
			<textarea class="form-control" id="c_borrow_remark" rows="3"></textarea>
		</div>
	</div>
</div>

<script type="text/javascript"
	src="<c:url value="/resources/assets/plugins/jquery/jquery-1.12.3.min.js" />"></script>
<script type="text/javascript">
function saveBorrow(){
	$('.preloader').modal('show');
	var borrowWorksheetBean = {};
	borrowWorksheetBean.remark = $('#c_borrow_remark').val();
	
	//service application
	ServiceApplicationBean = {};
	ServiceApplicationBean.id = $('#idServiceApplication').val();
	borrowWorksheetBean.serviceApplication = ServiceApplicationBean;
	//product item worksheet bean
	var productItemList = [];
	$('#c_borrow_tableEquipmentProduct > tbody  > tr.c_borrow_trNewItem').each(function() {
		var productWorksheetItem = [];
		var worksheetItem = {};
		var productItem = {};
		 $(this).find('input').each(function (i) {
				switch (i) {
						case 0:
							worksheetItem.price = $(this).val();
							break;
						case 1:
							worksheetItem.amount = $(this).val();
							break;
						case 2:
							worksheetItem.deposit = $(this).val();
							break;
						case 3:
							var EquipmentProductItemBean = {};
							EquipmentProductItemBean.id = $(this).val();
							worksheetItem.equipmentProductItemBean = EquipmentProductItemBean;
							break;
					    case 4:
					    	productItem.id =  $(this).val();
							break;
						}
				
					});
		 			productWorksheetItem.push(worksheetItem);
		 			productItem.productItemWorksheetBeanList = productWorksheetItem;
		 			productItemList.push(productItem);
				});
	
	borrowWorksheetBean.productItemList = productItemList;
	//send save worksheet borrow
	$.ajax({
		type : "POST",
		contentType : "application/json; charset=utf-8",
		url : "${pageContext.request.contextPath}/worksheetadd/saveBorrow",
		dataType : 'json',
		async : false,
		data : JSON.stringify(borrowWorksheetBean),
		//timeout : 100000,
		success : function(data) {
			if(data["error"] == false){
				window.location.reload();
			}else{
				
			}
		},
		error : function(e) {
			console.log("ERROR: ", e);
		},
		done : function(e) {
			console.log("DONE");
		}
	});
}
function loadBorrow(){
	
}
</script>