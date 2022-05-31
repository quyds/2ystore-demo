package com.devpro.store2y.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.dto.ProductSearchModel;
import com.devpro.store2y.entities.Product;
import com.devpro.store2y.services.PagerData;
import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.services.ProductService;

//Định nghĩa 1 Bean(dành cho Controller trong mô hình MVC)
@Controller

public class HomeController extends BaseController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "/home", "/trang-chu" }, method = RequestMethod.GET)
	public String home(final Model model, 
						final HttpServletRequest request, 
						final HttpServletResponse response)
						throws IOException {

//		// đọc dữ liệu request-param ví dụ: localhost:8080/index?hovaten=NguyenDinhA&age=20
//		String name = request.getParameter("hovaten");
//		String age = request.getParameter("age");
		
		// đẩy đối tượng dữ liệu xuống view
//		Employee tnq = new Employee(name, Integer.parseInt(age));
//		Employee tnq = new Employee("Trần NGọc QUý", 22);
//		model.addAttribute("tnquy", tnq);
//		
//		//đẩy 1 String xuống view
//		model.addAttribute("headerTitle", "JAVA18");
//		
//		// đọc danh sách categories
//		List<Categories> categories = categoriesService.findAll();
//		for (Categories cate : categories) {
//			System.out.println(cate.getName());
//		}
		
		model.addAttribute("products", productService.findAll());
		
		
		ProductSearchModel hot = new ProductSearchModel();
		hot.setIsHot(false);

		model.addAttribute("productsHot", productService.search(hot));
		
		return "customer/home";
	}

	@RequestMapping(value = { "/product/details/{productSeo}" }, method = RequestMethod.GET)
	public String productDetails(final Model model, 
								final HttpServletRequest request, 
								final HttpServletResponse response,
								@PathVariable("productSeo") String productSeo)
								throws IOException {

		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.seo = productSeo;

		PagerData<Product> products = productService.search(searchModel);
		Product product = products.getData().get(0);
		
		
		model.addAttribute("product", product);
		
		// trả về đường dẫn tới view
		return "customer/product-detail";
		
	}
	
//	@RequestMapping(value = { "/product/details" }, method = RequestMethod.GET)
//	public String productDetails(final Model model, 
//								final HttpServletRequest request, 
//								final HttpServletResponse response)
//								throws IOException {
//		
//		return "customer/product-detail";
//	}
}
