package com.star.cinema.customer;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.star.cinema.customer.dto.NoticeDTO;
import com.star.cinema.customer.service.ICustomerService;

@Controller
public class CustomerController {
	final static Logger logger = LoggerFactory.getLogger(CustomerController.class);
	@Autowired ICustomerService service;

	@RequestMapping(value="/question")
	public String question(HttpSession session) {
//		session.setAttribute("id", "admin"); // 관리자면 문의내역 전체 리스트 출력, 사용자면 문의내역 작성창 출력
		String LoginId = (String)session.getAttribute("id");
		if(LoginId != null && LoginId.equals("admin")) {
			return "forward:index?formpath=questionList";	
		}else {
			return "forward:index?formpath=questionWrite";	
		}
	}
	
	
	/* 공지사항 리스트 */
	@RequestMapping("/customerList")
	public String customerList(Model model, @RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage, String search, String sel) {
		if(search == null || search == "") {
			service.customerList(model, currentPage);
		}
		else {
			service.customerSearch(model,currentPage,search,sel);
		}
		
		model.addAttribute("cp", currentPage);
		return "forward:/index?formpath=customer";
	}
	
	
	
	/* 공지사항 작성 */
	@RequestMapping(value="/noticeWriteProc")
	public String noticeWriteProc(String theater, @RequestParam(value = "self_theater", required = false)String self_theater,
			String title, String content, Model model) {
		
		// !session.getAttribute("id").equals("admin") return "forward:index";
		boolean check = service.insertNotice(theater,self_theater,title,content);
		if(check == false) model.addAttribute("msg", "빈 항목이 존재합니다.");
		
		return "forward:customerList";
	}
	
	@RequestMapping(value="/noticeViewProc")
	public String noticeViewProc(String num, String cp, Model model) {
		NoticeDTO dto = service.noticeViewProc(num);
		model.addAttribute("view", dto);
		int currentPage = Integer.parseInt(cp);
		model.addAttribute("currentPage",currentPage);
		
		return "forward:index?formpath=noticeView";
	}
	@RequestMapping(value="/noticeDeleteProc")
	public String noticeDeleteProc(HttpSession session) {
		return "forward:customerList";
	}
	
	
	
}