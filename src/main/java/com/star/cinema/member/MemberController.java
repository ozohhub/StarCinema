package com.star.cinema.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.member.service.IMemberService;

@Controller
public class MemberController {
	@Autowired IMemberService service;
	
	@RequestMapping(value = "memberListProc")
	public String memberList(Model model, @RequestParam(value = "currentPage", required = false, defaultValue = "1")int currentPage, String search) {
		if(search == null || search == "") {
			service.memberList(model, currentPage);
		}
		else {
			service.memberSearch(model, search);
		}
		return "forward:/index?formpath=memberList";
	}
	
	@RequestMapping(value = "modifyMemberProc", method = RequestMethod.POST)
	public String modifyMemberProc(Model model, String id, String pw, String year, String month, String day, String gender, 
			String phone1, String phone2, String phone3, String zipcode, String addr1, String addr2, String name, String email, MemberDTO dto) {
		dto.setId(id);
		dto.setPw(pw);
		dto.setEmail(email);
		dto.setName(name);
		dto.setGender(gender);
		dto.setBirth(year+"-"+month+"-"+day);
		dto.setPhone(phone1+"-"+phone2+"-"+phone3);
		dto.setZipcode(zipcode);
		dto.setAddress(addr1+"&&"+addr2);
		
		boolean check = service.memberModify(dto);
		if(check == false)
			model.addAttribute("msg", "수정에 실패하였습니다.");
		else 
			model.addAttribute("msg", "수정에 성공하였습니다.");
		return "forward:memberListProc";
	}
	
	@RequestMapping(value = "userInfoProc")
	public String userInfoProc(Model model, String id) {
		service.userInfo(model, id);
		return "forward:/index?formpath=managerModify";
	}
	
	@RequestMapping(value = "deleteMemberProc")
	public String deleteMemberProc(Model model, String id) {
		boolean check = service.memberDelete(id);
		if(check == false)
			model.addAttribute("msg", "삭제에 실패하였습니다.");
		else 
			model.addAttribute("msg", "삭제에 성공하였습니다.");
		return "forward:memberListProc";
	}
}
