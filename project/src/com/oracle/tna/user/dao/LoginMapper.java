package com.oracle.tna.user.dao;

import com.oracle.tna.domain.User;

public interface LoginMapper {
	public User select(String username);
}
