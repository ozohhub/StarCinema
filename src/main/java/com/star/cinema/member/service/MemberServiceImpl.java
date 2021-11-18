package com.star.cinema.member.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.star.cinema.member.dao.IMemberDAO;
import com.star.cinema.member.dto.MemberDTO;

public class MemberServiceImpl implements IMemberService{
	@Autowired IMemberDAO dao;
	@Autowired MemberDTO dto;
	
	@Override
	public void memberList(Model model, int currentPage, String select, String search) {
		int pageBlock = 10;
		int totalCount = dao.memberCount();
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		ArrayList<MemberDTO> list = dao.memberList(begin, end, select, search);
		model.addAttribute("list", list);
		
		String url = "/cinema/memberList?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, pageBlock, totalCount, url));
	}

}
