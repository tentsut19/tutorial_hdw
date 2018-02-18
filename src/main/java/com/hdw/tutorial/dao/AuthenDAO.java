package com.hdw.tutorial.dao;

import com.hdw.tutorial.entity.Authentication;
import com.hdw.tutorial.security.LoginForm;

public interface AuthenDAO {
	public Authentication findByUserNamePassword(LoginForm loginForm) throws Exception;
	public void update(Authentication authentication) throws Exception;
}
