package com.devpro.store2y.services;


import java.io.IOException;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.devpro.store2y.dto.SaleOrderSearchModel;
import com.devpro.store2y.entities.SaleOrder;
@Service
public class SaleOrderService extends BaseService<SaleOrder> {
	@Override
	protected Class<SaleOrder> clazz() {
		// TODO Auto-generated method stub
		return SaleOrder.class;
	}
	
	public PagerData<SaleOrder> search(SaleOrderSearchModel searchModel) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_saleorder p WHERE 1=1";

		if (searchModel != null) {
			// tìm kiếm sản phẩm hot
//			if (searchModel.isHot != null) {
//				sql += " and p.is_hot = '" + searchModel.seo + "'";
//			}
			
			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(searchModel.keyword)) {
				sql += " and (p.code like '%" + searchModel.keyword + "%'" + 
						     " or p.customerName like '%" + searchModel.keyword + "%'" + 
						     " or p.customerEmail like '%" + searchModel.keyword + "%')";
			}
		}

		// chi lay san pham chua xoa
				sql += " and p.status=1 ";
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
		
	}
	
	public PagerData<SaleOrder> search1(SaleOrderSearchModel shipped) {

		// khởi tạo câu lệnh
		String sql = "SELECT * FROM tbl_saleorder p WHERE 1=1";

		if (shipped != null) {
			// tìm kiếm sản phẩm hot
//			if (searchModel.isHot != null) {
//				sql += " and p.is_hot = '" + searchModel.seo + "'";
//			}
			
			// tim kiem san pham theo seachText
			if (!StringUtils.isEmpty(shipped.keyword)) {
				sql += " and (p.code like '%" + shipped.keyword + "%'" + 
						     " or p.customerName like '%" + shipped.keyword + "%'" + 
						     " or p.customerEmail like '%" + shipped.keyword + "%')";
			}
		}

		// chi lay san pham chua xoa
				sql += " and p.status=0 ";
		return executeByNativeSQL(sql, shipped == null ? 0 : shipped.getPage());
		
	}
	
	@Transactional
	public SaleOrder add(SaleOrder p)
			throws IllegalStateException, IOException {
		
		// lưu vào database
				return super.saveOrUpdate(p);
	}
}
