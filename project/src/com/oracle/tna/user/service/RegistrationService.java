package com.oracle.tna.user.service;

import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.user.dao.RegistrationMapper;

public class RegistrationService {
	
	public static RegistrationService registrationService=new RegistrationService();
	
	public static RegistrationService getRegistrationService()
	{
		return registrationService;
	}
	
	public boolean userIsExisted(String username)
	{
		SqlSession session = MybatisUtil.getSqlSession(true);
		RegistrationMapper registrationMapper= session.getMapper(RegistrationMapper.class);
		
		List<String> usernames=registrationMapper.getUsername();
		for(String u:usernames)
		{
			if(username.equals(u))
			{
				return false;
			}
		}
		return true;
	}
	
//	public static void main(String args[])
//	{
//		System.out.println(getRegistrationService().userIsExisted("zhangsan"));
//	}
	
}
