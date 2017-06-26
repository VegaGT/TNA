package com.oracle.tna.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.admin.service.UserListService;
import com.oracle.tna.domain.User;


@Controller
public class UserListController {
	public UserListService userListService = UserListService.getUserListService();
	
	@RequestMapping("/showUserList.do")
	public String showUserList(HttpSession session, HttpServletRequest request){
		List<User> users = new ArrayList<User>();
		users = userListService.getUserList();
		request.setAttribute("userList", users);
		request.setAttribute("countOfUsers", users.size());
		return "admin/userList";
	}
}
