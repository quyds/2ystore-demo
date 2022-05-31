package com.devpro.store2y.controller.customer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.devpro.store2y.dto.MyConstants;
import com.devpro.store2y.services.UserService;

@Controller
public class MailController {
	
   @Autowired
   public JavaMailSender emailSender;
   
   @Autowired
   public UserService userService;
   
   @ResponseBody
    @RequestMapping("/sendSimpleEmail")
    public String sendSimpleEmail() {

        // Create a Simple MailMessage.
        SimpleMailMessage message = new SimpleMailMessage();
        
        message.setTo(MyConstants.FRIEND_EMAIL);
        message.setSubject("Mail Test");
        message.setText("Shop Giảy 2ystore"
        		+ "Chào mừng bạn đã gia nhập!");
        
        
        
        // Send Message!
        this.emailSender.send(message);

        return "Email Sent!";
    }
}
