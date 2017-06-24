package com.oracle.tna.user.service;

import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.domain.User;
import com.oracle.tna.user.dao.RegistrationMapper;

public class RegistrationService {
	
	public static RegistrationService registrationService=new RegistrationService();
	private SqlSession session;
	private RegistrationMapper registrationMapper;
	public static RegistrationService getRegistrationService()
	{
		return registrationService;
	}
	
	public boolean userIsExisted(String username)
	{
		session = MybatisUtil.getSqlSession(true);
		registrationMapper= session.getMapper(RegistrationMapper.class);
		
		List<String> usernames=registrationMapper.getUsername();
		session.close();
		for(String u:usernames)
		{
			if(username.equals(u))
			{
				return false;
			}
		}
		return true;
	}
	
	public void register(User user)
	{
		session = MybatisUtil.getSqlSession(true);
		registrationMapper= session.getMapper(RegistrationMapper.class);
		registrationMapper.addUser(user);
		session.close();		
	}
	
//	public static void main(String args[])
//	{
//		System.out.println(getRegistrationService().userIsExisted("zhangsan"));
//	}
	
}
