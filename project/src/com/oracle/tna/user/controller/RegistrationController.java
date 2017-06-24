package com.oracle.tna.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import myutils.utils;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.user.service.RegistrationService;


@Controller
public class RegistrationController {
	
public RegistrationService registrationService = RegistrationService.getRegistrationService();
	//Map<String, String> errors=new HashMap<String, String>();
	@RequestMapping("registration.do")
	public String register(Model model,String username,String password,HttpSession session,
			String okpassword,String phone,String name,String idno){
		if(!registrationService.userIsExisted(username))
		{
			model.addAttribute("usernameE","用户名已更改");
			return "registration";
			
		}
		if(password.length()<6)
		{
			model.addAttribute("passwordE","密码不能少于6位");
			return "registration";
		}
		if(!okpassword.equals(password))
		{
			model.addAttribute("okE", "与原密码不同");
			return "registration";
		}
		if(!utils.isMobileNO(phone))
		{
			model.addAttribute("phoneE", "请输入正确的手机号");
			return "registration";
		}
		
		User user=new User(-1,username,password,name,idno,phone, 0);
	//	System.out.println(idno+"!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		
		registrationService.register(user);
		
		
		 return "login";
	
			 
		
		
	}
}
