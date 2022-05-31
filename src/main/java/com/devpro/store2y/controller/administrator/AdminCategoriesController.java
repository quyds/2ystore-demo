package com.devpro.store2y.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.dto.CategoriesSearchModel;
import com.devpro.store2y.entities.Categories;
import com.devpro.store2y.services.CategoriesService;

@Controller
public class AdminCategoriesController extends BaseController {

	@Autowired
	private CategoriesService categoriesService;
	
	@RequestMapping(value = { "/admin/categories" }, method = RequestMethod.GET)
	public String adminCategories(final Model model, 
				final HttpServletRequest request,
				final HttpServletResponse response
				) throws IOException {
		
	//  model.addAttribute("categories", categoriesService.findAll());
		
		CategoriesSearchModel searchModel = new CategoriesSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));

	
		model.addAttribute("categories", categoriesService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "administrator/categories";
	}
	
//	-------------------- Add Categories ----------------------
	
	@RequestMapping(value = { "/admin/add-categories" }, method = RequestMethod.GET)
	public String adminCategoriesAdd(final Model model, 
				final HttpServletRequest request,
				final HttpServletResponse response
				) throws IOException {
		
		model.addAttribute("categories", new Categories());
	
		return "administrator/addcategories";
	}
	
	@RequestMapping(value = { "/admin/add-categories/{categoriesID}" }, method = RequestMethod.GET)
	public String adminCategoriesEdit(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("categoriesID") int categoriesID) throws IOException {
		
		model.addAttribute("categories", categoriesService.getById(categoriesID));

		return "administrator/addcategories";
	}
	
//	@RequestMapping(value = { "/admin/add-categories/{categoriesID}" }, method = RequestMethod.GET)
//	public String adminCategoriesDelete(final Model model, 
//								   final HttpServletRequest request,
//								   final HttpServletResponse response, 
//								   @PathVariable("categoriesID") int categoriesID) throws IOException {
//		
//		model.addAttribute("categories", categoriesService.getById(categoriesID));
//
//		return "administrator/addcategories";
//	}
	
	@RequestMapping(value = { "/admin/add-categories" }, method = RequestMethod.POST)
	public String adminCateAddOrUpdate(final Model model, 
										  final HttpServletRequest request,
										  final HttpServletResponse response, 
										  @ModelAttribute("categories") Categories categories
	) throws Exception {
		

		if (categories.getId() == null || categories.getId() <= 0) { // thêm mới
			categoriesService.add(categories);
			
		}
		 else
		{ // chỉnh sửa
			categoriesService.update(categories);
	//		categoriesService.delete(categories);
		}

		return "redirect:/admin/categories";
	}
}
