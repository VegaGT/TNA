package com.oracle.tna.admin.dao;

import java.util.List;

import com.oracle.tna.domain.Item;

public interface ItemMapper {
	
	public List<Item> getItems();
	public void insert(Item item);
	public void delete(int qid);
	public void update(Item item);

}
