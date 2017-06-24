package com.oracle.tna.user.service;

import java.util.ArrayList;
import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.ScoreListItem;
import com.oracle.tna.domain.User;
import com.oracle.tna.user.dao.LoginMapper;
import com.oracle.tna.user.dao.ScoreListMapper;

public class ScoreListService {
	private static ScoreListService scoreListService = new ScoreListService();
	
	private ScoreListService(){}
	
	public static ScoreListService getScoreListService(){
		return scoreListService;
	}
	
	public List<Score> getScoreList(int uid) {
		SqlSession session = MybatisUtil.getSqlSession(true);
		ScoreListMapper scoreListMapper = session.getMapper(ScoreListMapper.class);
		
		List<Score> scores = new ArrayList<Score>();
		scores = scoreListMapper.select(uid);
		return scores;
	}
	
	public static void main(String[] args) {
		List<Score> scores=getScoreListService().getScoreList(2);
		System.out.println("service"+scores.size());
	}
}
