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

import com.devpro.store2y.controller.BaseController;

import com.devpro.store2y.dto.SaleOrderSearchModel;
import com.devpro.store2y.entities.SaleOrder;
import com.devpro.store2y.services.SaleOrderService;

@Controller
public class AdminSaleOderController extends BaseController {
	
	@Autowired
	private SaleOrderService saleOrderService;

	@RequestMapping(value = { "/admin/sale-order" }, method = RequestMethod.GET)
	public String adminCart(final Model model, 
					final HttpServletRequest request,
					final HttpServletResponse response) 
					throws IOException {
	
		
		SaleOrderSearchModel searchModel = new SaleOrderSearchModel();

		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));

	
		model.addAttribute("saleorder", saleOrderService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		
		return "administrator/saleorder";	
	}
	
	
	@RequestMapping(value = { "/admin/sale-order/update" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> updateSaleOrder(final Model model, 
															final HttpServletRequest request,
															final HttpServletResponse response, 
															final @RequestBody SaleOrder saleOrder) {
		SaleOrder saleOrderInDb = saleOrderService.getById(saleOrder.getId());
		saleOrderInDb.setStatus(false);
		saleOrderService.saveOrUpdate(saleOrderInDb);
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Đã giao hàng");
		return ResponseEntity.ok(jsonResult);
	}
	
	// -------------------------------------
	
	@RequestMapping(value = { "/admin/shipped" }, method = RequestMethod.GET)
	public String adminShipped(final Model model, 
					final HttpServletRequest request,
					final HttpServletResponse response) 
					throws IOException {
	
		
		SaleOrderSearchModel shipped = new SaleOrderSearchModel();

		shipped.keyword = request.getParameter("keyword");
		shipped.setPage(getCurrentPage(request));

	
		model.addAttribute("ship", saleOrderService.search1(shipped));
		model.addAttribute("shipped", shipped);
		
		
		return "administrator/shipped";	
	}
}
