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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.entities.Product;
import com.devpro.store2y.services.ProductService;

@Controller
public class AdminAddItemController extends BaseController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/admin/add-item"}, method = RequestMethod.GET)
	public String adminProductAdd(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response) throws IOException {
		
//		Additem addItem = new Additem();
		model.addAttribute("product", new Product());
		
		return "administrator/additem";
	}
	
	@RequestMapping(value = { "/admin/add-item/{productId}" }, method = RequestMethod.GET)
	public String adminProductEdit(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response, 
								   @PathVariable("productId") int productId) throws IOException {
		
		model.addAttribute("product", productService.getById(productId));

		return "administrator/additem";
	}
	
	@RequestMapping(value = { "/admin/add-item" }, method = RequestMethod.POST)
	public String adminProductAddOrUpdate(final Model model, 
										  final HttpServletRequest request,
										  final HttpServletResponse response, 
										  @ModelAttribute("product") Product product,
										  @RequestParam("productAvatar") MultipartFile productAvatar,
										  @RequestParam("productPictures") MultipartFile[] productPictures
	) throws Exception {

		if (product.getId() == null || product.getId() <= 0) { // thêm mới
			productService.add(product, productAvatar, productPictures);
		}
		else
		{ // chỉnh sửa
			productService.update(product, productAvatar, productPictures);
		}

		return "redirect:/admin/list-item";
	}
	
//	@RequestMapping(value = { "/admin/add-item"}, method = RequestMethod.POST)
//	public String Additem_spring_form(final Model model, 
//			                          final HttpServletRequest request, 
//			                          final HttpServletResponse response, 
//			                          final @ModelAttribute("model_additem") Additem addItem) throws IOException {
//		
//		System.out.println(addItem.getTenSanPham());
//		System.out.println(addItem.getMaSanPham());
//		System.out.println(addItem.getDanhMuc());
//		System.out.println(addItem.getGiaSanPham());
//		System.out.println(addItem.getSoLuongNhap());
//		System.out.println(addItem.getImageFile());
//		
//		//request additem form
//	
//		model.addAttribute("model_additem", new Additem());
//		
//		return "administrator/additem";
//	}
}
