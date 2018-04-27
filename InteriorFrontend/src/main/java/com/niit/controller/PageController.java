package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CategoryDAO;
import com.niit.model.UserDetail;

@Controller
public class PageController
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping("/")
	public String showPage()
	{
		return "index";
	}
	
	@RequestMapping("/Home")
	public String showHomePage()
	{
		return "index";
	}
	
	
	@RequestMapping("/login")
	public String showLogin(Model m)
	{
		UserDetail user=new UserDetail();
		m.addAttribute("user",user);
		return "Login";
	}
	
	
	@RequestMapping("/aboutus")
	public String showAboutus()
	{
		
		return "AboutUs";
	}
	
	
	
	}

