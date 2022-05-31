package com.devpro.store2y.dto;

public class ProductSearchModel extends BaseSearchModel {
	// tìm theo keyword
	public String keyword;

	// tìm theo category
	public Integer categoryId;

	public String seo;

	public Boolean isHot;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public Integer getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Boolean getIsHot() {
		return isHot;
	}

	public void setIsHot(Boolean isHot) {
		this.isHot = isHot;
	}

}
