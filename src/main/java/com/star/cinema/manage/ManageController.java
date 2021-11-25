package com.star.cinema.manage;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.star.cinema.manage.service.IManageService;

@Controller
public class ManageController {
	@Autowired IManageService service;
	
	@RequestMapping(value = "cinemaListProc")
	public String cinemaList(Model model, @RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage , String search) {
		if(search == null || search == "") {
			service.cinemaList(model, currentPage);
		} else {
			service.cinemaSearch(model, search);
		}
		return "forward:/index?formpath=cinemaList";
	}
	
	@ResponseBody
	@RequestMapping(value = "/cinemaInsert")
	public void cinemaInsert(@RequestBody Map<String,String> map) {
		service.cinemaInsert(map.get("countryName"), map.get("cinemaName"));
	}
	
	@ResponseBody
	@RequestMapping(value = "/cinemaDelete")
	public void cinemaDelete(@RequestBody Map<String,String> map) {
		int cinemaNum = Integer.parseInt(map.get("id"));
		service.cinemaDelete(cinemaNum);
	}
	
	@RequestMapping(value = "timeInfoProc")
	public String timeInfoProc(Model model, 
				@RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage, String search) {
		if(search == null || search == "") {
			service.timeInfoList(model, currentPage);
		}
		else {
			service.timeInfoSearch(model, search);
		}
		return "forward:/index?formpath=timeInfo";
	}
	
	@RequestMapping(value = "timeInfoDeleteProc")
	public String timeInfoDeleteProc(Model model, String cinemaName) {
		boolean check = service.timeInfoDeleteProc(cinemaName);
		if(check) {
			model.addAttribute("msg", "삭제에 성공하였습니다.");
		}
		else {
			model.addAttribute("msg", "삭제에 실패하였습니다.");
		}
		return "forward:/timeInfoProc";
	}
	
	@RequestMapping(value = "timeInsertProc")
	public String timeInsertProc(Model model, String countryName, String cinemaName, String hallName, String ticketDate, String startTime) {
		boolean check = service.timeInfoInsertProc(countryName, cinemaName, hallName, ticketDate, startTime);
		if(check) {
			model.addAttribute("msg", "등록에 성공하였습니다.");
		}
		else {
			model.addAttribute("msg", "등록에 실패하였습니다.");
		}
		return "forward:/timeInfoProc";
	}
}
