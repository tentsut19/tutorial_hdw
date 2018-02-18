package com.hdw.tutorial.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hdw.tutorial.dao.AuthenDAO;
import com.hdw.tutorial.entity.Authentication;
import com.hdw.tutorial.security.LoginForm;
import com.hdw.tutorial.service.AuthenService;


@Service
public class AuthenServiceImpl implements AuthenService{
	
	@Autowired
	private AuthenDAO authenDAO;

	public void setAuthenDAO(AuthenDAO authenDAO) {
		this.authenDAO = authenDAO;
	}

	@Transactional
	public Authentication findByUserNamePassword(LoginForm loginForm) throws Exception {
		return authenDAO.findByUserNamePassword(loginForm);
	}

	@Transactional
	public void update(Authentication authentication) throws Exception {
		this.authenDAO.update(authentication);
	}

}
