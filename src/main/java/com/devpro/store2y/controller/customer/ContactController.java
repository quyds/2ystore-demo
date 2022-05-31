package com.devpro.store2y.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.store2y.entities.Contact;
import com.devpro.store2y.services.ContactService;


@Controller //> Bean String-bean controller
public class ContactController {
	
//	Dạng spring-form
	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
//	public String contact(final Model model, 
//			final HttpServletRequest request, 
//			final HttpServletResponse response)
//			throws IOException {
//		
//		Contact contact = new Contact();
//		model.addAttribute("model_contact", contact);
//		
//		return "customer/contact";
//	}
//	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public String post_string_form(final Model model, 
//			final HttpServletRequest request, 
//			final HttpServletResponse response,
//			final @ModelAttribute("model_contact") Contact contact) throws IOException {
//		
//		System.out.println(contact.getFullName());
//		System.out.println(contact.getEmail());
//		System.out.println(contact.getMessage());
//		System.out.println(contact.getPhone());
//		
//		//resset form
//		model.addAttribute("model_contact", new Contact());
//		
//		//thông báo tới user
////		model.addAttribute("", contact)
//		
//		return "customer/contact";
//	}
	
//	Dạng đơn giản
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
//	public String contact(final Model model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		
//
//		return "customer/contact";
//	}
//	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public String simpleContact(final Model model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		
//		String name = request.getParameter("fname");
//		String email = request.getParameter("femail");
//		String messenger = request.getParameter("fmessenger");
//		String phone = request.getParameter("fphone");
//		
//		System.out.println(name);
//		System.out.println(email);
//		System.out.println(messenger);
//		System.out.println(phone);
//		
//		return "customer/contact";
//	}
	
//	Dạng Ajax
	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
//	public String contact(final Model model, 
//			final HttpServletRequest request, 
//			final HttpServletResponse response)
//			throws IOException {
//		
//		Contact contact = new Contact();
//		model.addAttribute("model_contact", contact);
//		
//		return "customer/contact";
//	}
//	
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
	
	// Dạng upload img
	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
//	public String contact(final Model model, 
//			final HttpServletRequest request, 
//			final HttpServletResponse response)
//			throws IOException {
//		
//		Contact contact = new Contact();
//		model.addAttribute("model_contact", contact);
//		
//		return "customer/contact";
//	}
	
//	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
//	public String post_string_form(final Model model, 
//								   final HttpServletRequest request, 
//								   final HttpServletResponse response,
//								   final @ModelAttribute("model_contact") Contact contact, 
//								   final @RequestParam("fattachment") MultipartFile attachment) throws IOException {
//		
//		
//		System.out.println(contact.getFullName());
//		System.out.println(contact.getEmail());
//		System.out.println(contact.getMessage());
//		System.out.println(contact.getPhone());
//		
//		// Lưu ảnh lên sever
//		if(!attachment.isEmpty())
//			attachment.transferTo(new File("E:/Devpro/Backend/Upload/" + attachment.getOriginalFilename()));
//		
//		//resset form
//		model.addAttribute("model_contact", new Contact());
//		
//		//thông báo tới user
//		
//		model.addAttribute("message","Cảm ơn " + contact.getEmail() + " đã liên hệ !");
//		
//		return "customer/contact";
//	}
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response)
			throws IOException {
		
		model.addAttribute("Contacts", new Contact());
			
		return "customer/contact";
	}
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.POST)
	public String contactPost(final Model model, 
			final HttpServletRequest request, 
			final HttpServletResponse response,
			@ModelAttribute("Contacts") Contact contact
			)throws IOException {
		
		//resset form
		model.addAttribute("Contacts", new Contact());
		
		//thông báo tới user
		
		model.addAttribute("message","Cảm ơn " + contact.getEmail() + " đã liên hệ !");
		
		if (contact.getId() == null || contact.getId() <= 0) { // thêm mới
			contactService.add(contact);
		}
		else
		{ // chỉnh sửa
//			contactService.update(contacts);
		}
		
		return "customer/contact";
	}
}
