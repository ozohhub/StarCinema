package com.star.cinema.movie.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.movie.dao.ITicketingDAO;
import com.star.cinema.movie.dto.TicketingDTO;

@Service
public class SeatService implements ISeatService{
	@Autowired ITicketingDAO dao;
	@Autowired HttpSession session;
	
	@Override
	public boolean seatProc(Model model, TicketingDTO dto, String movieName, String cinemaName, String hallName) {
		int movieListNum = dao.searchMovieListNum("베놈");
		int cinemaNum = dao.searchCinemaNum("안산점");
		
		System.out.println(movieListNum);
		
		dto.setMovieListNum(movieListNum);
		dto.setCinemaNum(cinemaNum);
		
		String hall = hallName.substring(0,1);
		int hallNum = Integer.parseInt(hall);
		
		MemberDTO member = (MemberDTO)session.getAttribute("loginInfo");
		String id = member.getId();
		dto.setId(id);
		
		dto.setHallNum(hallNum);
		
		dao.seatProc(dto);
		
		session.setAttribute("seatList", dto);
		
		return false;
	}
	
}
