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
		Map<String, String> errors = new HashMap<String, String>();
		User user = loginService.getUser(username, password);
		//µÇÂ¼Ê§°Ü
		if(user == null){
			model.addAttribute("errors", errors);
			return "login";
		}
		//µÇÂ¼³É¹¦
		session.setAttribute("user", user);
		if(user.getAdmintype() == 0){
			return "redirect:/user/main.jsp";
		} else{
			return "redirect:/admin/main.jsp";
		}
	}
}
