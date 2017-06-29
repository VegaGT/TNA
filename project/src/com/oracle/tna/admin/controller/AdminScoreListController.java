package com.oracle.tna.admin.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.ScoreListItem;
import com.oracle.tna.admin.service.AdminScoreListService;

@Controller
public class AdminScoreListController {
	
	public AdminScoreListService scoreListService = AdminScoreListService.getScoreListService();
	
	@RequestMapping("/showAdminScoreList.do")
	public String showScoreList(HttpSession session, HttpServletRequest request){
		List<ScoreListItem> scores = new ArrayList<ScoreListItem>();
		scores = scoreListService.getScoreList();
		float sum = 0;
		for(ScoreListItem sli : scores){
			sum += sli.getScore();
		}
		request.setAttribute("adminScoreList", scores);
		request.setAttribute("countOfAdminScoreList", scores.size());
		request.setAttribute("averageScore", sum/scores.size());
		return "admin/scoreList";
	}
	
}
