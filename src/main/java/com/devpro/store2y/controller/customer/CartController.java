package com.devpro.store2y.controller.customer;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.conf.Utilities;
import com.devpro.store2y.controller.BaseController;
import com.devpro.store2y.dto.Cart;
import com.devpro.store2y.dto.CartItem;
import com.devpro.store2y.entities.Product;
import com.devpro.store2y.entities.SaleOrder;
import com.devpro.store2y.entities.SaleOrderProducts;
import com.devpro.store2y.entities.User;
import com.devpro.store2y.services.ProductService;
import com.devpro.store2y.services.SaleOrderService;

@Controller
public class CartController extends BaseController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/cart/view" }, method = RequestMethod.GET)
	public String cartView(final Model model, 
						   final HttpServletRequest request, 
						   final HttpServletResponse response)
						   throws IOException {
		return "customer/cart"; // -> đường dẫn tới View.
	}
	@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.GET)
	public String cartCheckout(final Model model, 
						   final HttpServletRequest request, 
						   final HttpServletResponse response)
						   throws IOException {
		return "customer/checkouts"; // -> đường dẫn tới View.
	}
	
	@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.POST)
	public String cartFinish(final ModelMap model, 
							 final HttpServletRequest request, 
							 final HttpServletResponse response) throws Exception {

		// Thông tin khách hàng
		String customerFullName = request.getParameter("customerFullName");
		String customerAddress = request.getParameter("customerAddress");
		String customerEmail = request.getParameter("customerEmail");
		String customerPhone = request.getParameter("customerPhone");

		// tạo hóa đơn
		SaleOrder saleOrder = new SaleOrder();
		
		// kiểm tra xem khách hàng có phải đã login hay chưa?
		if(super.isLogined()) {
			User userLogined = super.getUserLogined();
			saleOrder.setUser(userLogined); //khóa ngoại user_id
			saleOrder.setCustomerName(userLogined.getUsername());
			saleOrder.setCustomerEmail(userLogined.getEmail());
			saleOrder.setCustomerAddress("Ha Noi");
			saleOrder.setCustomerPhone("1234567890");
		} else {
			saleOrder.setCustomerName(customerFullName);
			saleOrder.setCustomerEmail(customerEmail);
			saleOrder.setCustomerAddress(customerAddress);
			saleOrder.setCustomerPhone(customerPhone);	
		}		

		// mã hóa đơn
		saleOrder.setCode(String.valueOf(System.currentTimeMillis()));

//		if(getUserLogined() != null) {
//			
//		}

		// kết các sản phẩm trong giỏ hàng cho hóa đơn
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		for (CartItem cartItem : cart.getCartItems()) {
			SaleOrderProducts saleOrderProducts = new SaleOrderProducts();
			saleOrderProducts.setProduct(productService.getById(cartItem.getProductId()));
			saleOrderProducts.setQuality(cartItem.getQuanlity());

			// sử dụng hàm tiện ích add hoặc remove đới với các quan hệ onetomany
			saleOrder.addSaleOrderProducts(saleOrderProducts);
		}

		// lưu vào cơ sở dữ liệu
		saleOrderService.saveOrUpdate(saleOrder);

		// xóa dữ liệu giỏ hàng trong session
		session.setAttribute("cart", null);
		session.setAttribute("totalItems", "0");

		return "redirect:/home";
	}
	
	@RequestMapping(value = { "/ajax/addToCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_AddToCart(final Model model,
														      final HttpServletRequest request,
														      final HttpServletResponse response, 
														      final @RequestBody CartItem cartItem) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Cart cart = null;
		
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart(); //khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
				
			}
		}

		// nếu sản phẩm chưa có trong giỏ hàng
		if (!isExists) {
			Product productInDb = productService.getById(cartItem.getProductId());

			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());
			cartItem.setProductAvatar(productInDb.getAvatar());

			cart.getCartItems().add(cartItem);
		}

		// tính tổng tiền
		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("message", "Thêm sản phẩm thành công!");
		jsonResult.put("totalItems", getTotalItems(request));

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = { "/ajax/deletedCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_DeletedCart(final Model model,
														      final HttpServletRequest request,
														      final HttpServletResponse response, 
														      final @RequestBody CartItem cartItem) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Cart cart = null;
		
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart(); //khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		int currentProductQuality = 0;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				cartItems.remove(item);
				
			}
		}

		// tính tổng tiền
		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("currentProductQuality", currentProductQuality);

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = { "/ajax/updateQuanlityCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_UpdateQuanlityCart(final Model model, 
																	   final HttpServletRequest request,
																	   final HttpServletResponse response, 
																	   final @RequestBody CartItem cartItem) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Cart cart = null;
		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// kiểm tra nếu có trong giỏ hàng thì tăng số lượng
		int currentProductQuality = 0;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				currentProductQuality = item.getQuanlity() + cartItem.getQuanlity();
				item.setQuanlity(currentProductQuality);				
			}
		}

		// tính tổng tiền
		this.calculateTotalPrice(request);
		
		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("currentProductQuality", currentProductQuality);
		jsonResult.put("totalPrice", Utilities.formatCurrency(calculateTotalPrice(request)));

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}
	
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}
	
	private BigDecimal calculateTotalPrice(final HttpServletRequest request) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng.
		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();
		BigDecimal total = BigDecimal.ZERO;
		
		for(CartItem ci : cartItems) {
			total = total.add(ci.getPriceUnit().multiply(BigDecimal.valueOf(ci.getQuanlity())));
		}

		cart.setTotalPrice(total);
		return total;
	}
	
}
