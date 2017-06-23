package com.oracle.tna.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ScoreListController {
	@RequestMapping("/showScoreList.do")
	public void showScoreList(Model model, int uid){
		
	}
}
