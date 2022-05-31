package com.devpro.store2y.services;

import org.springframework.stereotype.Service;

import com.devpro.store2y.entities.Role;

@Service
public class RoleService  extends BaseService<Role> {
	@Override
	protected Class<Role> clazz() {
		// TODO Auto-generated method stub
		return Role.class;
	}
	
	public Role getGuestRole() {
		return getOneByNativeSQL("SELECT * FROM tbl_roles where name = 'GUEST'");
	}
}
