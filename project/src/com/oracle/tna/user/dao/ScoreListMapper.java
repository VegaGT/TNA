package com.oracle.tna.user.dao;

import java.util.List;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.ScoreListItem;

public interface ScoreListMapper {
	public List<Score> select(int uid);
}
