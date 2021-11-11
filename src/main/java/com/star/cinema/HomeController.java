package com.star.cinema;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String main(Model model) {
		model.addAttribute("formpath", "main");
		return "index";
	}
	@RequestMapping(value = "/main")
	public void main() {}
	
	@RequestMapping(value = "/index")
	public String index(Model model, String formpath) {
		if(formpath == null) formpath = "main";
		model.addAttribute("formpath", formpath);
		logger.warn("formpath : " + formpath);
		return "index";
	}
	
	@RequestMapping(value = "/register1")
	public String register1() {
		return "member/register1";
	}
	
	@RequestMapping(value = "/memberList")
	public String memberList() {
		return "member/memberList";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "member/login";
	}
	
}
