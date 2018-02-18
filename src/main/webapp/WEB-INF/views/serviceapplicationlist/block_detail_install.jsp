<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="row mt15">
	<div class="col-md-12">
		<fieldset>
			<legend>&nbsp;&nbsp;&nbsp;<span class="ti-map-alt"></span> ข้อมูลรายละเอียดการติดตั้ง&nbsp;&nbsp;&nbsp;</legend>
			<div class="row mt05">
				<div class="col-md-12">
					<label for="exampleInputEmail1"><b>ที่อยู่ติดตั้ง</b></label><br>
					<select class="form-control" id="select_address1">
						<option value="1" selected="selected">ใช้ที่อยู่เดียวกับ ที่อยู่ในทะเบียนบ้าน</option>
						<option value="2">ใช้ที่อยู่เดียวกับ ที่อยู่ปัจจุบัน</option>
						<option value="">ที่อยู่อื่นๆ</option>
					</select>
				</div>
			</div>
		<c:forEach var="addressBean" items="${serviceApplicationBean.addressList}" varStatus="i">
		<c:if test="${addressBean.addressType eq '3' }">
			<!-- ที่อยู่ -->
			<div class="row detail-install-no-current-address">
				<div class="col-md-2">
					<label for="exampleInputEmail1"><b>บ้านเลขที่<span class="text-red"> *</span></b></label> 
					<input type="text" class="form-control" id="no3" value="${addressBean.no}">
				</div>
				<div class="col-md-1">
					<label for="exampleInputEmail1"><b>หมู่ที่</b></label> 
					<input type="text" class="form-control" id="section3" value="${addressBean.section}">
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>อาคาร</b></label> 
					<input type="text" class="form-control" id="building3" value="${addressBean.building}">
				</div>
				<div class="col-md-1">
					<label for="exampleInputEmail1"><b>เลขที่ห้อง</b></label> 
					<input type="text" class="form-control" id="room3" value="${addressBean.room}">
				</div>
				<div class="col-md-1">
					<label for="exampleInputEmail1"><b>ชั้นที่</b></label> 
					<input type="text" class="form-control" id="floor3" value="${addressBean.floor}">
				</div>
				<div class="col-md-4">
					<label for="exampleInputEmail1"><b>หมู่บ้าน</b></label> 
					<input type="text" class="form-control" id="village3" value="${addressBean.village}">
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>ตรอกซอย</b></label> 
					<input type="text" class="form-control" id="alley3" value="${addressBean.alley}">
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>ถนน</b></label> 
					<input type="text" class="form-control" id="road3" value="${addressBean.road}">
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>จังหวัด<span class="text-red"> *</span></b></label> 
					<select class="form-control" id="province3" name="province3">
						<option disabled="disabled" selected="selected">--- กรุณาเลือกจังหวัด ---</option>
						<c:forEach var="province" items="${provinces}" varStatus="i">
						<option value="${province.id}">${province.PROVINCE_NAME}</option>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>อำเภอ / เขต<span class="text-red"> *</span></b></label>
					<select class="form-control" id="amphur3" name="amphur3">
						<option value="" selected="selected" disabled="disabled">--- กรุณาเลือกอำเภอ ---</option>
					</select>
				</div>
			</div>
			<div class="row detail-install-no-current-address">
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>ตำบล / แขวง<span class="text-red"> *</span></b></label>
				<select class="form-control" id="district3" name="district3" >
					<option value="" selected="selected" disabled="disabled">--- กรุณาเลือกตำบล ---</option>
				</select>
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>รหัสไปรณีย์<span class="text-red"> *</span></b></label>
					<input class="form-control bg-form" type="text" id="postcode3" name="postcode3" value="${addressBean.postcode}">
				</div>
				<div class="col-md-6">
					<label for="exampleInputEmail1"><b>สถานที่ใกล้เคียง</b></label>
					<input type="text" class="form-control" id="nearbyPlaces3" value="${addressBean.nearbyPlaces}">
				</div>
			</div>
							
			<!-- ที่อยู่ -->
		</c:if>
		</c:forEach>
			
			<div class="row">
				<div class="col-md-4">
					<label for="exampleInputEmail1"><b>วันเวลาที่สะดวกในการติดตั้ง</b></label>
					<div class="input-group">
						<input type="text" class="form-control"id="daterange" name="daterange" value="">
						<div class="input-group-addon"><i class="fa fa-calendar-o" style="margin: 0;"></i></div>
					</div>
				</div>
				<div class="col-md-3">
					<c:forEach items="${serviceApplicationBean.addressList }" var="address">
							<c:choose>
								<c:when test="${address.addressType == 3 }">
									<c:set var="zoneID" value="${address.zoneBean.id }"></c:set>
								</c:when>
							</c:choose>
					</c:forEach>
				
					<label for="exampleSelect1"><b>เขตชุมชน / โครงการที่ติดตั้ง</b></label> 
					<select class="form-control" id="select_zone" name="select_zone" data-plugin="select2">
						<c:forEach var="zone" items="${zones}" varStatus="i">						
							<c:choose>
								<c:when test="${zoneID == zone.id }">
									<option value="${zone.id}" selected="selected">${zone.zoneDetail} (${zone.zoneName})</option>
								</c:when>
								<c:otherwise>
									<option value="${zone.id}">${zone.zoneDetail} (${zone.zoneName})</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
				</div>
				<div class="col-md-3">
					<label for="exampleInputEmail1"><b>Plate Number</b></label> 
					<input type="text" class="form-control" id="plate_number" value="${serviceApplicationBean.plateNumber}">
				</div>
<!-- 				<div class="col-md-4"> -->
<!-- 					<label for="exampleInputEmail1"><b>แผนที่ในการติดตั้ง</b></label> -->
<!-- 					<label class="custom-file"> -->
<!-- 						<input type="file" id="install_map" class="custom-file-input"> -->
<!-- 						<span id="install_map_span" class="custom-file-control"></span> -->
<!-- 					</label> -->
<!-- 				</div> -->
			</div>
		</fieldset>
	</div>
</div>



<div class="row mt05">
	<div class="col-md-12">
		<ul class="nav nav-tabs nav-tabs-2" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#home" role="tab" aria-expanded="true"><span
					class="ti-location-pin"></span>&nbsp;&nbsp;<b>แผนที่</b></a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#profile" role="tab" aria-expanded="false"><span
					class="ti-direction-alt"></span>&nbsp;&nbsp;<b>เส้นทาง</b></a></li>
		</ul>
		<div class="tab-content mt15">
			<div class="tab-pane active" id="home" role="tabpanel"
				aria-expanded="true">
				<div class="card modal static-modal custom-modal-4">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="cm-img img-cover"
								style="background-image: url(../../resources/assets/img/point_map.png);">
								<div class="gradient gradient-primary"></div>
								<div class="cm-content">
									<h1 class=" text-uppercase">พื้นที่ติดตั้ง</h1>
									<h4>
										ระยะทางโดยประมาณ <strong id="km"></strong>
									</h4>
									<hr>
									<font style="color: #e3d5ff;"><b>กรุณาระบุตำแหน่งพื้นที่ติดตั้ง
											ด้วยการลากจุดไปยังตำแหน่งใกล้เคียง</b></font>
								</div>
							</div>
							<div class="modal-body" style="padding: 0px;">
								<div id="gmap-route" style="with: 300px; height: 400px;"></div>
							</div>
							<!-- 						<div id="route"></div> -->
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="profile" role="tabpanel"
				aria-expanded="false">
				<div id="route"></div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-6">
		<label for="exampleInputEmail1"><b>LATITUDE</b></label> <input
			class="form-control bg-form" type="text" id="latitude"
			name="latitude" value="${serviceApplicationBean.latitude}">
	</div>
	<div class="col-md-6">
		<label for="exampleInputEmail1"><b>LONGITUDE</b></label> <input
			type="text" class="form-control" id="longitude" name="longitude"
			value="${serviceApplicationBean.longitude}">
	</div>
</div>




</body>
</html>
