package com.oracle.tna.user.service;

import mybatis.MybatisUtil;


import org.apache.ibatis.session.SqlSession;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.stereotype.Service;

import com.oracle.tna.domain.User;
import com.oracle.tna.user.dao.LoginMapper;

public class LoginService {
	
	private static LoginService loginService = new LoginService();
	
	private LoginService(){}
	
	public static LoginService getLoginService(){
		return loginService;
	}
	
	public User getUser(String username, String password) {
		SqlSession session = MybatisUtil.getSqlSession(true);
		LoginMapper loginMapper = session.getMapper(LoginMapper.class);
		
		User user = new User();
		user = loginMapper.select(username);
		return user;
	}

}
