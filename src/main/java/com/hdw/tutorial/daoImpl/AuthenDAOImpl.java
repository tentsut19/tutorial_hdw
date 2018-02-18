package com.hdw.tutorial.daoImpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.hdw.tutorial.dao.AuthenDAO;
import com.hdw.tutorial.entity.Authentication;
import com.hdw.tutorial.security.LoginForm;
import com.hdw.tutorial.utils.SecurityUtils;


@Repository
public class AuthenDAOImpl extends AbstractDao<Integer, Authentication> implements AuthenDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(AuthenDAOImpl.class);
	
	public Authentication findByUserNamePassword(LoginForm loginForm) throws Exception {
		logger.info("[method : findByPersonnelCode][Type : DAO]");

		Session session = getSession();
		Authentication authentication = null;
		try {
			if(loginForm!=null){
			authentication = (Authentication) session
					.createQuery("from Authentication where username = :username and password = :password")
					.setString("username", loginForm.getUsername())
					.setString("password", SecurityUtils.encrypt(loginForm.getPassword())).uniqueResult();
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			throw (ex);
		}
		logger.info("Authen : "+ authentication);
		return authentication;
	}

	public void update(Authentication authentication) throws Exception {
		logger.info("[method : update][Type : DAO]");
		Session session = getSession();
		try{
			session.update(authentication);
			session.flush();
		}catch(Exception ex){
			throw(ex);
		}
	}

}
