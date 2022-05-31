package com.devpro.store2y.dto;

public class UserSearchModel extends BaseSearchModel {
	
	public String keyword;
	
	public String roles;
	
	public String password;
	
	public Boolean status = Boolean.TRUE;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}
	
	
}
