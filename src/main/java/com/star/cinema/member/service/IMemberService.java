package com.star.cinema.member.service;

import org.springframework.ui.Model;

public interface IMemberService {
	public void memberList(Model model, int currentPage, String select, String search);
}