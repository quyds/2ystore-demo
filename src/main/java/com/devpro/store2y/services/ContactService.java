package com.devpro.store2y.services;

import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.store2y.dto.ContactSearchModel;

import com.devpro.store2y.entities.Contact;



@Service
public class ContactService extends BaseService<Contact> {

	@Override
	protected Class<Contact> clazz() {
		// TODO Auto-generated method stub
		return Contact.class;
	}
	
	public PagerData<Contact> search(ContactSearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_contact p WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm sản phẩm hot
//			if (searchModel.isHot != null) {
//				sql += " and p.is_hot = '" + searchModel.seo + "'";
//			}
			
			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(searchModel.keyword)) {
				sql += " and (p.first_name like '%" + searchModel.keyword + "%'" + 
						     " or p.message like '%" + searchModel.keyword + "%'" + 
						     " or p.last_name like '%" + searchModel.keyword + "%')";
			}
		}

		// chi lay san pham chua xoa
//				sql += " and p.status=1 ";
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
		
	}
	
	
	@Transactional
	public Contact add(Contact p)
			throws IllegalStateException, IOException {
		
		// lưu vào database
				return super.saveOrUpdate(p);
	}
}
