package com.oracle.tna.domain;

public class ScoreListItem {
	String data;
	int sumScore;
	
	public ScoreListItem() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScoreListItem(String data, int sumScore) {
		super();
		this.data = data;
		this.sumScore = sumScore;
	}

	public String getData() {
		return data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public int getSumScore() {
		return sumScore;
	}

	public void setSumScore(int sumScore) {
		this.sumScore = sumScore;
	}

	@Override
	public String toString() {
		return "ScoreListItem [data=" + data + ", sumScore=" + sumScore + "]";
	}
	
	
	
}
