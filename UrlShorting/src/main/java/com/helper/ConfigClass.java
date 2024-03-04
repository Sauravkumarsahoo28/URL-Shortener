package com.helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@ComponentScan(basePackages = "com")
@Configuration
public class ConfigClass implements WebMvcConfigurer
{
	@Bean
	EntityManagerFactory getEMF()
	{
		return Persistence.createEntityManagerFactory("dev");
	}
	 
	@Bean
	public InternalResourceViewResolver resolver()
	{
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setSuffix(".jsp");
		
		//setSuffix is used to specifies the view technology

		resolver.setPrefix("/");
	
		//setPrefex is used to specifies the location of the view files ,by default the view resolver point to webApp folder
		return resolver;
	}
	
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		registry.addResourceHandler("/xyz/**").addResourceLocations("/staticFiles/");
	
	}

		
	}

