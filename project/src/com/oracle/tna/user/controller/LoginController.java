package com.oracle.tna.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;






import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.User;
import com.oracle.tna.user.service.LoginService;

@Controller
public class LoginController {
	
	public LoginService loginService = LoginService.getLoginService();
	
	@RequestMapping("/login.do")
	public String login(Model model, HttpSession session,
			String username, String password){
		User user = loginService.getUser(username, password);
		//��¼ʧ��
		if(user == null){
			model.addAttribute("uError", "用户名不存在");
			return "login";
		}
		if(!user.getPassword().equals(password))
		{
			model.addAttribute("pError", "密码错误");
			return "login";
		}
		
		else {
			session.setAttribute("user", user);
			if(user.getAdmintype() == 0){
				return "redirect:/user/main.jsp";
			} else{
				return "redirect:/admin/main.jsp";
			}
		}
		
	
	}
}
