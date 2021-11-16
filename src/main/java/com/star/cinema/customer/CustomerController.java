package com.star.cinema.customer;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {

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
}
