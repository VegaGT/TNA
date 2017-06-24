package com.oracle.tna.user.dao;

import java.util.List;

import com.oracle.tna.domain.User;

public interface RegistrationMapper {
	
	public List<String> getUsername();
	
	public void addUser(User user);

}
