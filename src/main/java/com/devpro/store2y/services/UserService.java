package com.devpro.store2y.services;

import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;


import com.devpro.store2y.dto.UserSearchModel;
import com.devpro.store2y.entities.User;

@Service
public class UserService extends BaseService<User>  {
	
	@Override
	protected Class<User> clazz() {
		// TODO Auto-generated method stub
		return User.class;
	}
	public User loadUserByUsername(String userName) {
		String sql = "select * from tbl_users u where u.username = '" + userName + "'";
		return this.getOneByNativeSQL(sql);
	}
	
	public PagerData<User> search(UserSearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_users p WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm sản phẩm hot
//			if (searchModel.isHot != null) {
//				sql += " and p.is_hot = '" + searchModel.seo + "'";
//			}
			
			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(searchModel.keyword)) {
				sql += " and (p.id like '%" + searchModel.keyword + "%'" + 
						     " or p.username like '%" + searchModel.keyword + "%'" + 
						     " or p.address like '%" + searchModel.keyword + "%')";
			}
		}

//		if (searchModel.roles != null) {
//			sql += " and p.roles = '" + searchModel.roles + "'";
//		}
		// chi lay san pham chua xoa
				sql += " and p.status=1 ";
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
		
	}
	
	
	@Transactional
	public User add(User p)
			throws IllegalStateException, IOException {
		
		// lưu vào database
				return super.saveOrUpdate(p);
	}
}
