package com.oracle.tna.admin.service;

import java.util.List;

import mybatis.MybatisUtil;

import org.apache.ibatis.session.SqlSession;

import com.oracle.tna.admin.dao.ItemMapper;
import com.oracle.tna.domain.Item;

public class ItemSevice {
	public static ItemSevice itemsSevice=new ItemSevice();
	
	private SqlSession session;
	private ItemMapper itemMapper;
	
	public static ItemSevice getItemsSevice()
	{
		return itemsSevice;
	}
	
	public List<Item> getItems()
	{
		session=MybatisUtil.getSqlSession(true);
		itemMapper=session.getMapper(ItemMapper.class);
		List<Item> items=itemMapper.getItems();
		
		session.close();
		return items;	
	}
	
	public void addItem(Item item)
	{
		session=MybatisUtil.getSqlSession(true);
		itemMapper=session.getMapper(ItemMapper.class);
		itemMapper.insert(item);
		session.close();
		
	}
	
	public void deleteItem(int qid)
	{
		session=MybatisUtil.getSqlSession(true);
		itemMapper=session.getMapper(ItemMapper.class);
		itemMapper.delete(qid);
		session.close();
	}
	
	public void updateItem(Item item)
	{
		session=MybatisUtil.getSqlSession(true);
		itemMapper=session.getMapper(ItemMapper.class);
		itemMapper.update(item);
		session.close();
	}
	
	
}
