package com.devpro.store2y.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.dto.ProductSearchModel;
import com.devpro.store2y.services.ProductService;

@Controller
public class ListNikeController  extends BaseController {
	
	@Autowired
	private ProductService productService;
	
	
	@RequestMapping(value = { "/list-nike"}, method = RequestMethod.GET)
	public String nike(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		ProductSearchModel p1 = new ProductSearchModel();
		p1.setCategoryId(1);
		
		ProductSearchModel p2 = new ProductSearchModel();
		p2.setCategoryId(2);
		
		model.addAttribute("products", productService.search(p1));
		model.addAttribute("productss", productService.search(p2));
		

		return "customer/list-nike";
		}

	
	@RequestMapping(value = { "/nike/men"}, method = RequestMethod.GET)
	public String nikeMen(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		ProductSearchModel nikeMen = new ProductSearchModel();
		nikeMen.setCategoryId(1);
		
		model.addAttribute("nikeMen", productService.search(nikeMen));
		

		return "customer/nike-men";
		}
	
	@RequestMapping(value = { "/nike/women"}, method = RequestMethod.GET)
	public String nikeWomen(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		ProductSearchModel nikeWomen = new ProductSearchModel();
		nikeWomen.setCategoryId(2);
		
		model.addAttribute("nikeWomen", productService.search(nikeWomen));
		

		return "customer/nike-women";
		}
}
