package com.oracle.tna.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.ScoreListItem;
import com.oracle.tna.domain.User;
import com.oracle.tna.user.service.ScoreListService;

@Controller
public class ScoreListController {
	
	public ScoreListService scoreListService = ScoreListService.getScoreListService();
	
	@RequestMapping("/showScoreList.do")
	public String showScoreList(HttpSession session, HttpServletRequest request){
		User user = (User)session.getAttribute("user");
		int uid = user.getUid();
		List<Score> scores = new ArrayList<Score>();
		scores = scoreListService.getScoreList(uid);
		System.out.println("controller"+scores.size());
		request.setAttribute("scoreList", scores);
		request.setAttribute("count", scores.size());
		//return "scoreList";
		return "user/scoreList";
	}
	

}
