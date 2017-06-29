package com.oracle.tna.domain;

public class ScoreListItem {
	
	String username;
	String name;
	String data;
	int score;
	
	public ScoreListItem(String username, String name, String data, int score) {
		super();
		this.username = username;
		this.name = name;
		this.data = data;
		this.score = score;
	}
	
	public ScoreListItem() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "ScoreListItem [username=" + username + ", name=" + name
				+ ", data=" + data + ", score=" + score + "]";
	}

}
