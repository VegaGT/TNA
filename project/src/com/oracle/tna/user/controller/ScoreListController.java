package com.oracle.tna.user.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.domain.Score;
import com.oracle.tna.domain.ScoreListItem;
import com.oracle.tna.user.service.ScoreListService;

@Controller
public class ScoreListController {
	
	public ScoreListService scoreListService = ScoreListService.getScoreListService();
	
	@RequestMapping("/showScoreList.do")
	public void showScoreList(Model model, int uid){
		List<ScoreListItem> scores = new ArrayList<ScoreListItem>();
		scores = scoreListService.getScoreList(uid);
	}
}
