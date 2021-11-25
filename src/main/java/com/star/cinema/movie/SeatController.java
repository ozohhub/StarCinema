package com.star.cinema.movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.star.cinema.movie.dto.TicketingDTO;
import com.star.cinema.movie.service.ISeatService;

@Controller
public class SeatController {
	@Autowired ISeatService service;
	
	@RequestMapping (value = "seatProc")
	public String seatInsert(Model model, String moiveDate, String runningTime, String totalPrice,
			String ticketNumber, String selectedSeat, String movieListName, String cinemaName, String hallName) {
		TicketingDTO dto = new TicketingDTO();
		dto.setOpenDate(moiveDate);
		dto.setOpenTime(runningTime);
		dto.setTotalPrice(totalPrice);
		dto.setPeople(ticketNumber);
		dto.setSeatName(selectedSeat);
		
		boolean check = service.seatProc(dto, selectedSeat, selectedSeat, hallName);
		return "forward:/index?formpath=pay";
	}
}