package com.devpro.store2y.services;

import org.springframework.stereotype.Service;

import com.devpro.store2y.entities.SaleOrderProducts;

@Service
public class SaleOrderProductsService extends BaseService<SaleOrderProducts>  {
	@Override
	protected Class<SaleOrderProducts> clazz() {
		// TODO Auto-generated method stub
		return SaleOrderProducts.class;
	}
}
