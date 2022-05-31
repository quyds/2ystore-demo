package com.devpro.store2y.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.entities.Product;
import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.dto.ProductSearchModel;
import com.devpro.store2y.services.ProductService;


@Controller
public class AdminListItemController extends BaseController {
	
	@Autowired
	private ProductService productService;

	
//	@RequestMapping(value = { "/admin/list-item"}, method = RequestMethod.GET)
//	public String listItem(final Model model, 
//			final HttpServletRequest request, 
//			final HttpServletResponse response) throws IOException {
//
//		model.addAttribute("product", productService.findAll());
//		
//		return "administrator/listitem";
//	}
	
	@RequestMapping(value = { "/admin/list-item" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.categoryId = getInteger(request, "categoryId");
		searchModel.setPage(getCurrentPage(request));

		model.addAttribute("products", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "administrator/listitem";
	}
	
	@RequestMapping(value = { "/admin/list-item/delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct(final Model model, 
															final HttpServletRequest request,
															final HttpServletResponse response, 
															final @RequestBody Product product) {
		Product productInDb = productService.getById(product.getId());
		productInDb.setStatus(false);
		productService.saveOrUpdate(productInDb);
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Đã xóa thành công");
		return ResponseEntity.ok(jsonResult);
	}
	
//	@RequestMapping(value = { "/ajax/contact" }, method = RequestMethod.POST)
//	public ResponseEntity<Map<String, Object>> ajax_contact(final Model model, 
//															final HttpServletRequest request, 
//															final HttpServletResponse response,
//															final @RequestBody Contact contact) {
//		
//		System.out.println(contact.getFullName());
//		System.out.println(contact.getEmail());
//		System.out.println(contact.getMessage());
//		System.out.println(contact.getPhone());
//		
//		Map<String, Object> jsonResult = new HashMap<String, Object>();
//		jsonResult.put("code", 200);
//		jsonResult.put("message", "Cảm ơn bạn"+contact.getEmail()+",Chúng tôi sẽ liên hệ sớm nhất!");
//		
//		return ResponseEntity.ok(jsonResult);
//	}
}
