package com.star.cinema.movie.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.star.cinema.movie.dao.ITicketingDAO;
import com.star.cinema.movie.dto.TicketingDTO;

@Service
public class SeatService implements ISeatService{
	@Autowired ITicketingDAO dao;
	
	@Override
	public boolean seatProc(TicketingDTO dto, String movieName, String cinemaName, String hallName) {
		int moiveListNum = dao.searchMovieListNum(movieName);
		int cinemaNum = dao.searchCinemaNum(cinemaName);
		
		dto.setMoiveListNum(moiveListNum);
		dto.setCinemaNum(cinemaNum);
		
		hallName.substring(1,1);
		int hallNum = Integer.parseInt(hallName);
		
		dto.setHallNum(hallNum);
		
		dao.seatProc(dto);
		return false;
	}
	
}
