package com.hdw.tutorial.dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;

public class AddressBean extends UtilityBean{
	
	@Autowired
	MessageSource messageSource;
	
	//static
	String space = " ";
	
	private Long id;
	
	private String detail;

	private String no; 

	private String section; 

	private String building; 

	private String room; 

	private String floor; 

	private String village; 

	private String alley; 

	private String road; 

	private String subdistrict; 

	private String district; 

	private String province; 

	private String postcode; 

	private String country; 

	private String latitude; 

	private String longitude; 

	private String addressType;
	
	private String imagePath;
	
	private String nearbyPlaces;
	
	private String collectAddressDetail;
	
	private ProvinceBean provinceBean;
	
	private AmphurBean amphurBean;
	
	private DistrictBean districtBean;
	
	public void collectAddress(){
		messageSource.getMessage("alert.title.save.success", null, LocaleContextHolder.getLocale());
		String detail = "";
		if(null != getNo() && (!getNo().isEmpty())){
			detail = detail + messageSource.getMessage("address.no", null, LocaleContextHolder.getLocale()) + space + getNo() + space;
		}
		if(null != getSection() && (!getSection().isEmpty())){
			detail = detail + messageSource.getMessage("address.section", null, LocaleContextHolder.getLocale()) + space + getSection() + space;
		}
		if(null != getBuilding() && (!getBuilding().isEmpty())){
			detail = detail + messageSource.getMessage("address.building", null, LocaleContextHolder.getLocale()) + getBuilding() + space;
		}
		if(null != getRoom() && (!getRoom().isEmpty())){
			detail = detail + messageSource.getMessage("address.room", null, LocaleContextHolder.getLocale()) + space + getRoom() + space;
		}
		if(null != getFloor() && (!getFloor().isEmpty())){
			detail = detail + messageSource.getMessage("address.floor", null, LocaleContextHolder.getLocale()) + space + getFloor() + space;
		}
		if(null != getVillage() && (!getVillage().isEmpty())){
			detail = detail + messageSource.getMessage("address.village", null, LocaleContextHolder.getLocale()) +  getVillage() + space;
		}
		if(null != getAlley() && (!getAlley().isEmpty())){
			detail = detail + messageSource.getMessage("address.alley", null, LocaleContextHolder.getLocale()) + getAlley() + space;
		}
		if(null != getRoad() && (!getRoad().isEmpty())){
			detail = detail + messageSource.getMessage("address.road", null, LocaleContextHolder.getLocale()) + getRoad() + space;
		}
		if(null != getDistrictBean() && (!getDistrictBean().getDISTRICT_NAME().isEmpty())){
			detail = detail + messageSource.getMessage("address.subdistrict", null, LocaleContextHolder.getLocale()) + getDistrictBean().getDISTRICT_NAME() + space;
		}
		if(null != getAmphurBean() && (!getAmphurBean().getAMPHUR_NAME().isEmpty())){
			detail = detail + messageSource.getMessage("address.district", null, LocaleContextHolder.getLocale()) + getAmphurBean().getAMPHUR_NAME() + space;
		}
		if(null != getProvinceBean() && (!getProvinceBean().getPROVINCE_NAME().isEmpty())){
			detail = detail + messageSource.getMessage("address.province", null, LocaleContextHolder.getLocale()) + getProvinceBean().getPROVINCE_NAME() + space;
		}
		if(null != getPostcode() && (!getPostcode().isEmpty())){
			detail = detail + getPostcode();
		}
		setCollectAddressDetail(detail);
	}
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getBuilding() {
		return building;
	}
	public void setBuilding(String building) {
		this.building = building;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public String getAlley() {
		return alley;
	}
	public void setAlley(String alley) {
		this.alley = alley;
	}
	public String getRoad() {
		return road;
	}
	public void setRoad(String road) {
		this.road = road;
	}
	public String getSubdistrict() {
		return subdistrict;
	}
	public void setSubdistrict(String subdistrict) {
		this.subdistrict = subdistrict;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	public String getAddressType() {
		return addressType;
	}
	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	public String getNearbyPlaces() {
		return nearbyPlaces;
	}
	public void setNearbyPlaces(String nearbyPlaces) {
		this.nearbyPlaces = nearbyPlaces;
	}
	
	public String getCollectAddressDetail() {
		return collectAddressDetail;
	}
	public void setCollectAddressDetail(String collectAddressDetail) {
		this.collectAddressDetail = collectAddressDetail;
	}
	 
	public ProvinceBean getProvinceBean() {
		return provinceBean;
	}

	public void setProvinceBean(ProvinceBean provinceBean) {
		this.provinceBean = provinceBean;
	}

	public AmphurBean getAmphurBean() {
		return amphurBean;
	}

	public void setAmphurBean(AmphurBean amphurBean) {
		this.amphurBean = amphurBean;
	}

	public DistrictBean getDistrictBean() {
		return districtBean;
	}

	public void setDistrictBean(DistrictBean districtBean) {
		this.districtBean = districtBean;
	}

	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	@Override
	public String toString() {
		return "AddressBean [messageSource=" + messageSource + ", space=" + space + ", id=" + id + ", detail=" + detail
				+ ", no=" + no + ", section=" + section + ", building=" + building + ", room=" + room + ", floor="
				+ floor + ", village=" + village + ", alley=" + alley + ", road=" + road + ", subdistrict="
				+ subdistrict + ", district=" + district + ", province=" + province + ", postcode=" + postcode
				+ ", country=" + country + ", latitude=" + latitude + ", longitude=" + longitude + ", addressType="
				+ addressType + ", imagePath=" + imagePath + ", nearbyPlaces=" + nearbyPlaces
				+ ", collectAddressDetail=" + collectAddressDetail + ", provinceBean=" + provinceBean + ", amphurBean="
				+ amphurBean + ", districtBean=" + districtBean + "]";
	}

}
