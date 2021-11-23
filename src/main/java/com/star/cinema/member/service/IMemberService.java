package com.star.cinema.member.service;


import org.springframework.ui.Model;

import com.star.cinema.member.dto.MemberDTO;

public interface IMemberService {
	public void memberList(Model model, int currentPage);
	public void memberSearch(Model model, String search);
	public boolean memberDelete(String id);
	public boolean memberModify(MemberDTO dto);
	public void userInfo(Model model, String id);
	
	public boolean checkId(String id);
	public boolean checkPw(String id, String pw);
}
