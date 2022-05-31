package com.devpro.store2y.services;

import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;


import com.devpro.store2y.dto.CategoriesSearchModel;

import com.devpro.store2y.entities.Categories;



@Service
public class CategoriesService extends BaseService<Categories> {

	@Override
	protected Class<Categories> clazz() {
		return Categories.class;
	}

	public PagerData<Categories> search(CategoriesSearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_category p WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm sản phẩm hot
//			if (searchModel.isHot != null) {
//				sql += " and p.is_hot = '" + searchModel.seo + "'";
//			}
			
			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(searchModel.keyword)) {
				sql += " and (p.name like '%" + searchModel.keyword + "%'" + 
						     " or p.description like '%" + searchModel.keyword + "%'" + 
						     " or p.id like '%" + searchModel.keyword + "%')";
			}
		}

		// chi lay san pham chua xoa
//				sql += " and p.status=1 ";
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
		
	}
	@Transactional
	public Categories add(Categories p)
			throws IllegalStateException, IOException {

		//tạo seo
//		p.setSeo(new Slugify().slugify(p.getTitle()));
		
		
		
		// lưu vào database
		return super.saveOrUpdate(p);
		
	}
	
	@Transactional
	public Categories update(Categories p)
			throws IllegalStateException, IOException {

		// lấy thông tin cũ của product theo id
//		Categories categoriesInDb = super.getById(p.getId());
		
		

		//tạo seo
//		p.setSeo(new Slugify().slugify(p.getTitle()));
		
		// lưu vào database
		return super.saveOrUpdate(p);
	}
//	@Transactional
//	public Categories deleted(Categories p)
//			throws IllegalStateException, IOException {
	
//	UPDATE `shopex`.`tbl_category` SET `status` = '1' WHERE (`id` = '7');	
//		
//		Categories categoriesInDb = super.getById(p.getId());
//		
//		// lưu vào database
//		return super.saveOrUpdate(p);
//	}
}
