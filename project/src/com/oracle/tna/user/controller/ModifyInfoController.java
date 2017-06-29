package com.oracle.tna.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.user.service.ModifyInfoService;

@Controller
public class ModifyInfoController {
	public ModifyInfoService modifyInfoService = 
			ModifyInfoService.getMofifyInfoService();
	
	@RequestMapping("/mofifyInfo.do")
	public String modifyInfo(HttpSession session, HttpServletRequest request, 
			String password,String password_confirm, String telno){
		User user = (User)session.getAttribute("user");
		int uid = user.getUid();
		String username = user.getUsername();
		String name = user.getName();
		String idnumber = user.getIdnumber();
		
		if(password.equals(password_confirm)){
			User newUser = new User(uid,username,password,name,idnumber,telno,0);
			modifyInfoService.modifyUserInfo(newUser);
			session.removeAttribute("user");
			session.setAttribute("user", newUser);
			return "user/personalInfo";
		}else{
			return "user/modifyInfo";
		}
	}

}
