package com.oracle.tna.user.service;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.domain.User;
import com.oracle.tna.user.dao.ModifyInfoMapper;

public class ModifyInfoService {
	public static ModifyInfoService modifyInfoService=new ModifyInfoService();
	private SqlSession session;
	private ModifyInfoMapper modifyInfoMapper;
	public static ModifyInfoService getMofifyInfoService()
	{
		return modifyInfoService;
	}
	
	public void modifyUserInfo(User user)
	{
		session = MybatisUtil.getSqlSession(true);
		modifyInfoMapper= session.getMapper(ModifyInfoMapper.class);
		modifyInfoMapper.modifyInfo(user);
	}
}
