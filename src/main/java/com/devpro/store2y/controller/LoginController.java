package com.devpro.store2y.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.entities.Product;
import com.devpro.store2y.entities.Role;
import com.devpro.store2y.entities.User;
import com.devpro.store2y.services.RoleService;
import com.devpro.store2y.services.SaleOrderService;
import com.devpro.store2y.services.UserService;

@Controller
public class LoginController extends BaseController  {
	
	@Autowired
	private RoleService roleService;
	
	
	@Autowired
	private UserService userService;

	
	
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
						throws IOException {
		return "login";
	}
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String register(final Model model, 
							final HttpServletRequest request, 
							final HttpServletResponse response)
							throws IOException {
		
		model.addAttribute("register", new User());
		
		return "register";
	}
	
	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
	public String registerPS(final Model model, 
							final HttpServletRequest request, 
							final HttpServletResponse response, 
							@ModelAttribute("user") User user)
							throws IOException {
		
		if (user.getId() == null || user.getId() <= 0) { // thêm mới
			user.setPassword(new BCryptPasswordEncoder(4).encode(user.getPassword()));
			userService.saveOrUpdate(user);
		}
		
		return "register";
	}
	
//	private void addNewUser() {
//		User user = new User();
//		user.setUsername("daind3");
//		user.setPassword(new BCryptPasswordEncoder(4).encode("daind3"));
//		user.setEmail("daind3@abc.com");
//		
//		Role guest = roleService.getGuestRole();
//		user.addRoles(guest);
//		
//		userService.saveOrUpdate(user);
//	}
}
