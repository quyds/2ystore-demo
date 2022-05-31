package com.devpro.store2y.conf;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;

import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

// Định nghĩa 1 Bean trong sử dụng @Configuration (Dành cho cấu hình)
// Trong spring sẽ làm chủ yếu với bean
@Configuration
public class MvcConf implements WebMvcConfigurer {
	
	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/css/**").addResourceLocations("classpath:/css/");
		registry.addResourceHandler("/js/**") .addResourceLocations("classpath:/js/");
		registry.addResourceHandler("/images/**").addResourceLocations("classpath:/images/");
		registry.addResourceHandler("/fonts/**").addResourceLocations("classpath:/fonts/");
		registry.addResourceHandler("/assets/**").addResourceLocations("classpath:/assets/");
		
		//Đăng kí fodel ảnh upload
		registry.addResourceHandler("/Upload/**").addResourceLocations("file:" + "E:/Devpro/Backend/Upload/");
	}

	@Bean // -> BEAN này dùng để chỉ ra thư mục chứa Views
	public ViewResolver viewResolver() {
		
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		
		//thiết lập view engine
		bean.setViewClass(JstlView.class);
		
		// Đường dẫn folder chứa Views.
		bean.setPrefix("/WEB-INF/views/");
		
		// Tên đuôi của View
		bean.setSuffix(".jsp");
		
		return bean;
		
	}
}

