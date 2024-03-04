package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UrlDao;
import com.dao.UserDao;
import com.entities.Url;
import com.entities.User;
import com.helper.UrlShortener;

@Controller
public class UserController {
	@Autowired
	UserDao ud;

	@Autowired
	UrlDao dao;
	@Autowired
	UrlShortener us;

	@RequestMapping("/adduser")
	public ModelAndView adduser() {
		User u = new User();
		ModelAndView mav = new ModelAndView();
		mav.addObject("userobj", u);
		mav.setViewName("adduser");
		return mav;
	}

	@RequestMapping("/userinfo")
	public ModelAndView saveuser(@ModelAttribute("userobj") User u) {
		ud.saveUser(u);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("index1");
		return mav;
	}

	@RequestMapping("/login")
	public ModelAndView loginValidation(ServletRequest request, HttpSession session) {

		User u = ud.loginValidation(request.getParameter("email"), request.getParameter("password"));

		ModelAndView mav = new ModelAndView();

		if (u != null) {
			mav.setViewName("useroptions");
			session.setAttribute("userinfo", u);
			return mav;
		} else {
			mav.setViewName("login");
			return mav;
		}

	}

	@RequestMapping("/changeurl")
	public ModelAndView changeUrl(@RequestParam("long-url") String longurl, HttpSession session) {
		User u = (User) session.getAttribute("userinfo");
		Url url = new Url();
		url.setActualurl(longurl);
		url.setShorterurl(us.getShortenUrl(longurl, longurl.length() / 2));
		List<Url> urlList = u.getUrl();
		if (urlList.size() > 0) {
			urlList.add(url);

			u.setUrl(urlList);

			ud.updateUser(u);

			ModelAndView mav = new ModelAndView();
			mav.addObject("shorturl", url.getShorterurl());
			mav.setViewName("useroptions");
			return mav;
		} else {
			List<Url> newUrlList = new ArrayList<Url>();
			newUrlList.add(url);

			u.setUrl(newUrlList);

			ud.updateUser(u);
			ModelAndView mav = new ModelAndView();
			mav.addObject("shorturl", url.getShorterurl());
			mav.setViewName("useroptions");
			return mav;
		}
	}

	@RequestMapping("/shorturl")
	public ModelAndView shortUrl(@RequestParam("url") String url, HttpSession session) {
		Url actualurl = dao.fetchUrlByShortUrl(url);
		int visits = actualurl.getVisits();
		visits++;
		actualurl.setVisits(visits);

		User u = (User) session.getAttribute("userinfo");
		List<Url> updatedurls = u.getUrl();
		updatedurls.add(actualurl);

		
		
		dao.updateUrl(actualurl) ;

		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:"+actualurl.getActualurl());
		return mav ;
	}
	@RequestMapping("/fetchdata")
	public ModelAndView fetchdata()
	{
		List<Url> urls = dao.fetchallurl();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("urllist", urls);
		mav.setViewName("history");
		return mav;
	}

}
