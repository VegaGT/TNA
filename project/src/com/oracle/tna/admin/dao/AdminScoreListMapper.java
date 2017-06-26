package com.oracle.tna.admin.dao;

import java.util.List;

import com.oracle.tna.domain.ScoreListItem;

public interface AdminScoreListMapper {
	public List<ScoreListItem> select();
}
