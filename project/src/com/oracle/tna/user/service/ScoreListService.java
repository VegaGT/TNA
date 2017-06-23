package com.oracle.tna.user.service;

import java.util.ArrayList;
import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.User;
import com.oracle.tna.user.dao.LoginMapper;
import com.oracle.tna.user.dao.ScoreListMapper;

public class ScoreListService {
	private static ScoreListService scoreListService = new ScoreListService();
	
	private ScoreListService(){}
	
	public static ScoreListService getLoginService(){
		return scoreListService;
	}
	
	public List<Score> getScoreList(int uid) {
		SqlSession session = MybatisUtil.getSqlSession(true);
		ScoreListMapper scoreListMapper = session.getMapper(ScoreListMapper.class);
		
		List<Score> scores = new ArrayList<Score>();
		scores = ScoreListMapper.select(uid);
		return scores;
	}
}
