package com.oracle.tna.admin.service;

import java.util.ArrayList;
import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.domain.ScoreListItem;
import com.oracle.tna.admin.dao.AdminScoreListMapper;
import com.oracle.tna.admin.service.AdminScoreListService;

public class AdminScoreListService {
private static AdminScoreListService scoreListService = new AdminScoreListService();
	
	private AdminScoreListService(){}
	
	public static AdminScoreListService getScoreListService(){
		return scoreListService;
	}
	
	public List<ScoreListItem> getScoreList() {
		SqlSession session = MybatisUtil.getSqlSession(true);
		AdminScoreListMapper scoreListMapper = session.getMapper(AdminScoreListMapper.class);
		
		List<ScoreListItem> scores = new ArrayList<ScoreListItem>();
		scores = scoreListMapper.select();
		return scores;
	}
}
