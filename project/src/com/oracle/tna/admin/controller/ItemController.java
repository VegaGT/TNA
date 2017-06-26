package com.oracle.tna.admin.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.tna.admin.service.ItemSevice;
import com.oracle.tna.domain.Item;


@Controller
public class ItemController {
	ItemSevice itemSevice=ItemSevice.getItemsSevice();
	@RequestMapping("/displayItems")
	public String displayItems(HttpServletRequest request)
	{
		List<Item> items=itemSevice.getItems();
		request.setAttribute("items",items);
		
		return "admin/libManagement";
	}
	
	@RequestMapping("/addItem")
	public String addItem(HttpServletRequest request,String question,String option_a,String option_b,
			String option_c,String option_d,String answer)
	{
	    Item item=new Item(-1, question, option_a, option_b, option_c, option_d, answer);
	    itemSevice.addItem(item);
	    
		return displayItems(request);
	}
	
	@RequestMapping("/deleteItem")
	public String deleteItem(HttpServletRequest request,int qid)
	{
		itemSevice.deleteItem(qid);
		
		return displayItems(request);
	}
	
	@RequestMapping("/updateItem")
	public String updateItem(HttpServletRequest request,String question,String option_a,String option_b,
			String option_c,String option_d,String answer,int qid)
	{
		Item item=new Item(qid, question, option_a, option_b, option_c, option_d, answer);
		itemSevice.updateItem(item);
		
		return displayItems(request);
	}
	
	
	


}
