package com.devpro.store2y.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.dto.ContactSearchModel;
import com.devpro.store2y.services.ContactService;




@Controller
public class AdminContactController extends BaseController {
	
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {

			
	//	model.addAttribute("contacts", contactService.findAll());
		
		ContactSearchModel searchModel = new ContactSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));

	
		model.addAttribute("contacts", contactService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "administrator/contact";
	}

}
