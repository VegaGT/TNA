package com.oracle.tna.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PowerOffController {
	
	@RequestMapping("powerOff.do")
	public String powerOff(HttpSession session){
		session.removeAttribute("user");
		session.invalidate();
		return "login";
	}
	
}
