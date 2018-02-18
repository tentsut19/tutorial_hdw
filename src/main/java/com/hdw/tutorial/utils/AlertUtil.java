package com.hdw.tutorial.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.hdw.tutorial.dto.AlertBean;
import com.hdw.tutorial.dto.JsonResponse;

public class AlertUtil {
	
	public void generateAlert(JsonResponse jsonResponse, HttpServletRequest request, String title, String detail){
		AlertBean alertBean = new AlertBean();
		if(!jsonResponse.isError()){
			alertBean.setTitle(title);
			alertBean.setDetail(detail);
			alertBean.setType("success");
		}else{
			alertBean.setTitle("เกิดข้อผิดพลาด");
			alertBean.setType("error");
		}		
		HttpSession session = request.getSession();
		session.setAttribute("alertBean", alertBean);
	}
}
