package com.helper;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class Initializer extends AbstractAnnotationConfigDispatcherServletInitializer
{

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		Class [] configClass = {ConfigClass.class};
		return configClass;
	}

	@Override
	protected String[] getServletMappings() {
		String [] url = {"/"};
		return url;
	}
	
}
