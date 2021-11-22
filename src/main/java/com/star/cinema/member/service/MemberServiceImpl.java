package com.star.cinema.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.member.config.PageConfig;
import com.star.cinema.member.dao.IMemberDAO;
import com.star.cinema.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements IMemberService{
	@Autowired IMemberDAO dao;
	
	@Override
	public void memberList(Model model, int currentPage) {
		int pageBlock = 10;
		int totalCount = dao.memberCount();
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		ArrayList<MemberDTO> list = dao.memberList(begin, end);
		model.addAttribute("memberList", list);
		
		String url = "/cinema/memberListProc?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, pageBlock, totalCount, url));
	}
	
	@Override
	public void memberSearch(Model model, String search) {
		ArrayList<MemberDTO> list = dao.memberSearch(search);
		model.addAttribute("memberList", list);
	}

	@Override
	public boolean memberDelete(String id) {
		if(dao.deleteMember(id)) {
			return true;
		}
		return false;
	}

	@Override
	public boolean memberModify(MemberDTO dto) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(dto.getPw());
		dto.setPw(securePw);
		
		if(dao.modifyMember(dto)) {
			return true;
		}
		return false;
	}

	@Override
	public void userInfo(Model model, String id) {
		ArrayList<MemberDTO> past = dao.selectMember(id);
		model.addAttribute("past", past);
	}
	
}