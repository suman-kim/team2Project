package com.team2.domain;

import lombok.Data;

@Data
public class GroupCriteria extends GroupVO{

	private int page;	
	private int perPageNum;
	private String keyword;
	private int endPage;
	private int startPage;
	
	public void setEndPage(){
		 this.endPage = getPage() * getPerPageNum();
	}
	
	public int getEndPage() {
		return this.endPage;
	}
	
	public void setStartPage() {
		this.startPage = ((getPage() - 1) * (getPerPageNum()) + 1);
	}
	
	public int getStartPage() {
		return this.startPage;
	}
	
	public GroupCriteria(){
		this.page = 1;
		this.perPageNum = 6;
	}

	public void setPage(int page){
		
		if(page <= 0){
			this.page = 1;
			return;
		}
		this.page = page;
	}
}


