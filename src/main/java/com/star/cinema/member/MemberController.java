package com.star.cinema.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.star.cinema.member.service.IMemberService;

@Controller
public class MemberController {
	@Autowired IMemberService service;
	
	@RequestMapping(value = "memberListProc")
	public String memberList(Model model, @RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage, String search) {
		if (search == null || search == "") {
			service.memberList(model, currentPage);
		} else {
			service.memberSearch(model, search);
		}
		return "forward:/index?formpath=memberList";
	}
}
