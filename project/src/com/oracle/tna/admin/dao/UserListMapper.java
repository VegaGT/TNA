package com.oracle.tna.admin.dao;

import java.util.List;

import com.oracle.tna.domain.User;

public interface UserListMapper {
	public List<User> select();
}
