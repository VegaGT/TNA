package com.oracle.tna.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.user.service.RegistrationService;


@Controller
public class RegistrationController {
	
public RegistrationService registrationService = RegistrationService.getRegistrationService();
	Map<String, String> errors=new HashMap<String, String>();
	@RequestMapping("registration.do")
	public String login(Model model,String username,HttpSession session){
		if(!registrationService.userIsExisted(username))
		{
			errors.put("usernameE", "该用户名已存在");
			model.addAttribute("errors",errors);
			return "registration";
			
		}
			return "registration";
	}
}
