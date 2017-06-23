package com.oracle.tna.user.dao;

import java.util.List;

import com.oracle.tna.domain.Score;

public interface ScoreListMapper {
	public List<Score> select(int uid);
}
