package com.hdw.tutorial.service;

import com.hdw.tutorial.entity.Authentication;
import com.hdw.tutorial.security.LoginForm;

public interface AuthenService {
	public Authentication findByUserNamePassword(LoginForm loginForm) throws Exception;
	public void update(Authentication authentication) throws Exception;
}
