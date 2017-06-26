package com.oracle.tna.admin.service;

import java.util.ArrayList;
import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.domain.User;
import com.oracle.tna.admin.dao.UserListMapper;
import com.oracle.tna.admin.service.UserListService;

public class UserListService {
	private static UserListService userListService = new UserListService();
		
	private UserListService(){}
		
	public static UserListService getUserListService(){
		return userListService;
	}
		
	public List<User> getUserList() {
		SqlSession session = MybatisUtil.getSqlSession(true);
		UserListMapper userListMapper = session.getMapper(UserListMapper.class);
			
		List<User> users = new ArrayList<User>();
		users = userListMapper.select();
		return users;
	}
}
