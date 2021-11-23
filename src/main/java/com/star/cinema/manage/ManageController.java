package com.star.cinema.manage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.star.cinema.manage.service.IManageService;

@Controller
public class ManageController {
	@Autowired IManageService service;
	
	@RequestMapping(value = "cinemaListProc")
	public String memberList(Model model, 
				@RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage) {
		service.cinemaList(model, currentPage);
		return "forward:/index?formpath=cinemaList";
	}
	
	@RequestMapping(value = "/cinemaDelete")
	public String cinemaDelete() {
		return "index?formpath=cinemaList";
	}
	
	@RequestMapping(value = "timeInfoProc")
	public String timeInfoProc(Model model, 
				@RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage) {
		service.timeInfoList(model, currentPage);
		return "forward:/index?formpath=timeInfo";
	}
	
	@RequestMapping(value = "timeInfoDeleteProc")
	public String timeInfoDeleteProc(Model model, String num) {
		boolean check = service.timeInfoDeleteProc(num);
		String msg = "";
		if(check) {
			msg = "삭제에 성공하였습니다.";
		}
		else {
			msg = "삭제에 실패하였습니다.";
		}
		
		model.addAttribute("msg", msg);
		return "forward:/timeInfoProc";
	}
}
