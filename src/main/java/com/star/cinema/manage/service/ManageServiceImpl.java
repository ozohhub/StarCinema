package com.star.cinema.manage.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.manage.dao.IManageDAO;
import com.star.cinema.manage.dto.CinemaDTO;
import com.star.cinema.manage.dto.HallDTO;
import com.star.cinema.manage.dto.TimeInfoDTO;
import com.star.cinema.manage.dto.TimeManageDTO;
import com.star.cinema.member.config.PageConfig;
import com.star.cinema.member.dto.MemberDTO;

@Service
public class ManageServiceImpl implements IManageService{
	@Autowired IManageDAO dao;
	
	@Override
	public void cinemaList(Model model, int currentPage) {
		int pageBlock = 10;
		int totalCount = dao.cinemaCount();
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		ArrayList<CinemaDTO> list = dao.cinemaList(begin, end);
		model.addAttribute("cinemaList", list);
		
		String url = "/cinema/cinemaListProc?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, pageBlock, totalCount, url));
	}
	
	@Override
	public void cinemaSearch(Model model, String search) {
		ArrayList<CinemaDTO> list = dao.cinemaSearchForName(search);
		model.addAttribute("cinemaList", list);
	}
	
	@Override
	public void cinemaDelete(int id) {
		dao.cinemaDelete(id);
	}

	@Override
	public void timeInfoList(Model model, int currentPage) {
		int pageBlock = 10;
		int totalCount = dao.timeInfoCount();
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		ArrayList<TimeInfoDTO> timeInfo = dao.timeInfoList(begin, end);
		ArrayList<HallDTO> hall = dao.hallList(begin, end);
		ArrayList<CinemaDTO> cinema = dao.cinemaList(begin, end);
		ArrayList<TimeManageDTO> list = new ArrayList<TimeManageDTO>();
		
		int index = 0;
		for(TimeInfoDTO t : timeInfo) {
			TimeManageDTO manage = new TimeManageDTO();
			manage.setCountryName(cinema.get(index).getCountryName());
			manage.setCinemaName(cinema.get(index).getCinemaName());
			manage.setHallName(hall.get(index).getHallName());
			manage.setTicketDate(timeInfo.get(index).getTicketDate());
			manage.setStartTime(timeInfo.get(index).getStartTime());
			manage.setTimeInfoNum(timeInfo.get(index).getTimeInfoNum());
			list.add(manage);
			index++;
		}
		
		model.addAttribute("timeInfoList", list);

		String url = "/cinema/timeInfoProc?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, pageBlock, totalCount, url));
	}

	@Override
	public boolean timeInfoDeleteProc(String cinemaName) {
		int num = dao.cinemaName(cinemaName);
		dao.hallDelete(num);
		dao.timeInfoDelete(num);
		return dao.cinemaDelete(num);
	}

	@Override
	public boolean timeInfoInsertProc(String countryName, String cinemaName, String hallName, String ticketDate, String startTime) {
		TimeInfoDTO timeInfo = new TimeInfoDTO();
		HallDTO hall = new HallDTO();
		CinemaDTO cinema = new CinemaDTO();
		 
		cinema.setCountryName(countryName);
		cinema.setCinemaName(cinemaName);
		
		hall.setHallName(hallName);
		
		dao.hallInsert(hall);
		
		timeInfo.setStartTime(startTime);
		timeInfo.setTicketDate(ticketDate);
		
		dao.timeInfoInsert(timeInfo);
		
		return true;
	}

	@Override
	public void timeInfoSearch(Model model, String search) {
		int cinemaNum = dao.cinemaName(search);
		ArrayList<TimeInfoDTO> timeInfo = dao.timeSearch(cinemaNum);
		ArrayList<HallDTO> hall = dao.hallSearch(cinemaNum);
		ArrayList<CinemaDTO> cinema = dao.cinemaSearch(cinemaNum);
		
		ArrayList<TimeManageDTO> list = new ArrayList<TimeManageDTO>();
		
		int index = 0;
		for(TimeInfoDTO t : timeInfo) {
			TimeManageDTO manage = new TimeManageDTO();
			manage.setCountryName(cinema.get(index).getCountryName());
			manage.setCinemaName(cinema.get(index).getCinemaName());
			manage.setHallName(hall.get(index).getHallName());
			manage.setTicketDate(timeInfo.get(index).getTicketDate());
			manage.setStartTime(timeInfo.get(index).getStartTime());
			manage.setTimeInfoNum(timeInfo.get(index).getTimeInfoNum());
			list.add(manage);
			index++;
		}
		
		model.addAttribute("timeInfoList", list);
	}
	
}
