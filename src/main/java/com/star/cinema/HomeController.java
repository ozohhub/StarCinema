package com.star.cinema;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value = "/")
	public String main(Model model) {
		model.addAttribute("formpath", "main");
		return "index";
	}
	@RequestMapping(value = "/main")
	public void main() {}
	
	@RequestMapping(value = "/index")
	public String index(String formpath, Model model) {
		if(formpath == null) formpath = "main";
		model.addAttribute("formpath", formpath);
		return "index";
	}
	
	@RequestMapping(value = "/register")
	public String register() {
		return "member/register";
	}
	
}
