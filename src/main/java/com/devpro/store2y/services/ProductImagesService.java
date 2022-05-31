package com.devpro.store2y.services;

import org.springframework.stereotype.Service;

import com.devpro.store2y.entities.ProductImages;

@Service
public class ProductImagesService extends BaseService<ProductImages> {
	
	@Override
	protected Class<ProductImages> clazz() {
		// TODO Auto-generated method stub
		return ProductImages.class;
		
	}
}
