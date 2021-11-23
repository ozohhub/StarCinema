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
		
	}
	
	@Override
	public boolean cinemaDelete() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void timeInfoList(Model model, int currentPage) {
		int pageBlock = 10;
		int totalCount = dao.cinemaCount();
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
			manage.setHallName(hall.get(index).getHallName());
			manage.setHallNum(hall.get(index).getHallNum());
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
	public boolean timeInfoDeleteProc(String num) {
		boolean check = dao.timeInfoDelete(num);
		if(check) return true;
		else return false;
	}
	
	
	
}
