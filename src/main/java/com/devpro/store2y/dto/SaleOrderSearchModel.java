package com.devpro.store2y.dto;

public class SaleOrderSearchModel extends BaseSearchModel {
	public String keyword;
	
	public Boolean status = Boolean.TRUE;
	
	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
}
