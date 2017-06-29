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
			String username, String password,String rand){
		User user = loginService.getUser(username, password);
		//��¼ʧ��
		if(user == null){

			model.addAttribute("uError", "�û������");

			return "login";
		}
		if(!user.getPassword().equals(password))
		{

			model.addAttribute("pError", "���벻��ȷ");

			return "login";
		}
		String sRand=(String)session.getAttribute("rand");
		sRand=sRand.toLowerCase();
		rand=rand.toLowerCase();
		if(!sRand.equals(rand))
		{
			model.addAttribute("randE", "验证码有误");
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
