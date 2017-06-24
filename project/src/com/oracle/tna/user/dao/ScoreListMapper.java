package com.oracle.tna.user.dao;

import java.util.List;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.ScoreListItem;

public interface ScoreListMapper {
	public List<ScoreListItem> select(int uid);
}
