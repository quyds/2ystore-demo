package com.devpro.store2y.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.dto.UserSearchModel;
import com.devpro.store2y.services.RoleService;
import com.devpro.store2y.services.UserService;

@Controller
public class AdminUserController extends BaseController {
	
	@Autowired
	private UserService userService;
	

	@RequestMapping(value = { "/admin/user" }, method = RequestMethod.GET)
	public String adminUser(final Model model, 
						   final HttpServletRequest request, 
						   final HttpServletResponse response)
						   throws IOException {
		
		UserSearchModel searchModel = new UserSearchModel();

		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		
		
		//BCryptPasswordEncoder(4).encode(user.getPassword()));
		model.addAttribute("user", userService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "administrator/user"; // -> đường dẫn tới View.
	}
	
	/** admin */
	
	@RequestMapping(value = { "/admin/admin" }, method = RequestMethod.GET)
	public String adminAD(final Model model, 
						   final HttpServletRequest request, 
						   final HttpServletResponse response)
						   throws IOException {
		
		UserSearchModel searchModel = new UserSearchModel();
		
		searchModel.setRoles("ADMIN");
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		
		
		//BCryptPasswordEncoder(4).encode(user.getPassword()));
		model.addAttribute("user", userService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "administrator/admin"; // -> đường dẫn tới View.
	}
}
