
package com.star.cinema.manage.service;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.manage.dao.IManageDAO;
import com.star.cinema.manage.dto.CinemaDTO;
import com.star.cinema.manage.dto.HallDTO;
import com.star.cinema.manage.dto.TicketingInfoDTO;
import com.star.cinema.manage.dto.TimeInfoDTO;
import com.star.cinema.manage.dto.TimeManageDTO;
import com.star.cinema.member.config.PageConfig;
import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.movie.dao.IMovieDAO;
import com.star.cinema.movie.dto.MovieDTO;

@Service
public class ManageServiceImpl implements IManageService{
	@Autowired IManageDAO dao;
	@Autowired IMovieDAO moviedao;
	@Autowired HttpSession session;
	
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
	public void cinemaInsert(String countryName, String cinemaName) {
		CinemaDTO cinema = new CinemaDTO();
		cinema.setCountryName(countryName);
		cinema.setCinemaName(cinemaName);
		dao.cinemaInsert(cinema);
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
		ArrayList<TimeManageDTO> list = new ArrayList<TimeManageDTO>();
		
		if(timeInfo != null) {
			int index = 0;
			for(TimeInfoDTO t : timeInfo) {
				TimeManageDTO manage = new TimeManageDTO();
				CinemaDTO cinema = dao.cinemaSearch(t.getCinemaNum()).get(0);
				manage.setCountryName(cinema.getCountryName());
				manage.setCinemaName(cinema.getCinemaName());
				manage.setHallName(hall.get(index).getHallName());
				manage.setTicketDate(timeInfo.get(index).getTicketDate());
				manage.setStartTime(timeInfo.get(index).getStartTime());
				manage.setMovieName(timeInfo.get(index).getMovieName());
				manage.setTimeInfoNum(timeInfo.get(index).getTimeInfoNum());
				list.add(manage);
				index++;
			}
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
	public boolean timeInfoInsertProc(String countryName, String cinemaName, String movieName, String hallName, String ticketDate, String startTime) {
		TimeInfoDTO timeInfo = new TimeInfoDTO();
		HallDTO hall = new HallDTO();
		CinemaDTO cinema = new CinemaDTO();
		int cinemaNum = dao.cinemaName(cinemaName);
		 
		cinema.setCountryName(countryName);
		cinema.setCinemaName(cinemaName);

		hall.setHallName(hallName);
		hall.setCinemaNum(cinemaNum);
		
		dao.hallInsert(hall);
		
		timeInfo.setStartTime(startTime);
		timeInfo.setTicketDate(ticketDate);
		timeInfo.setCinemaNum(cinemaNum);
		timeInfo.setMovieName(movieName);
		
		dao.timeInfoInsert(timeInfo);
		
		return true;
	}
	

	@Override
	public void moviePoster(Model model) {
		ArrayList<MovieDTO> movie = dao.movieInfo();
		model.addAttribute("mainPoster", movie);
	}
	
	@Override
	public void timeInfoSearch(Model model, String search, String type) {
		if (type.equals("search")) {
			String date = session.getAttribute("selectDate") == null ? "today" : (String) session.getAttribute("selectDate");
			timeInfoHandle(model, search, "all", date);
		} else {
			
			int cinemaNum = dao.cinemaName(search);
			ArrayList<TimeInfoDTO> timeInfo = dao.timeSearch(cinemaNum);
			ArrayList<HallDTO> hall = dao.hallSearch(cinemaNum);
			ArrayList<CinemaDTO> cinema = dao.cinemaSearch(cinemaNum);
			
			ArrayList<TimeManageDTO> list = new ArrayList<TimeManageDTO>();
			
			int index = 0;
			for(TimeInfoDTO t : timeInfo) {
				TimeManageDTO manage = new TimeManageDTO();
				manage.setCountryName(cinema.get(0).getCountryName());
				manage.setCinemaName(cinema.get(0).getCinemaName());
				manage.setMovieName(timeInfo.get(index).getMovieName());
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
	
	@Override
	public void selectTime(Model model, Map<String, String> map) {
		MovieDTO movie = moviedao.selectMovie(map.get("movieName"));
		CinemaDTO cinema = dao.cinemaSearch(Integer.parseInt(map.get("cinemaNum"))).get(0);
		HallDTO hall = dao.hallSearch(Integer.parseInt(map.get("cinemaNum"))).get(0);
		TimeInfoDTO time = dao.timeSearch(Integer.parseInt(map.get("cinemaNum"))).get(0);
		
		TicketingInfoDTO info = new TicketingInfoDTO();
		info.setCinema(cinema);
		info.setHall(hall);
		info.setMovie(movie);
		info.setTime(time);

		session.setAttribute("selectTicket", info);
	}
	
	@Override
	public void selectDate(Model model, String date) {
		String search = (String) session.getAttribute("selectCinema");
		String movie = (String) session.getAttribute("selectMovie");
		if (session.getAttribute("selectMovie") == null) {
			movie = "all";
		}
		timeInfoHandle(model, search, movie, date);
		
	}
	
	@Override
	public void selectMovie(Model model, String movie) {
		
		String search = (String) session.getAttribute("selectCinema");
		String date = (String) session.getAttribute("selectDate");
		if (session.getAttribute("selectDate") == null) {
			date = "today";
		}
		timeInfoHandle(model, search, movie, date);
	}
	
	
	
	public void timeInfoHandle(Model model, String search, String movieKind, String date) {
		//기존에 선택했던 정보들을 세션에서 먼저 제거한다.
		String sessionInfos[] = {"timeInfoList", "movieList", "selectCinema", "selectDate", "selectMovie"};
		for (String info : sessionInfos) {
			if (session.getAttribute(info) != null) {
				session.removeAttribute(info);
			}
		}
		
		//아무것도 선택하지 않았을시 오늘 날짜로 자동 지정.
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date checkDate = new Date();
		if (date.equals("today")) {
			checkDate = new Date();
		} else {
			String[] check = date.split("-");
			checkDate = new Date(Integer.parseInt(check[0]) - 1900, Integer.parseInt(check[1]) - 1, Integer.parseInt(check[2]));
		}
		
		//선택한 날짜와 영화관, 영화의 정보를 담아줌.
		if (!date.equals("today"))  {
			session.setAttribute("selectDate", date);
		}
		session.setAttribute("selectCinema", search);
		session.setAttribute("selectMovie", movieKind);
		
		//DB에서 영화관, 상영정보를 불러와 한개의 DTO로 합침
		int cinemaNum = dao.cinemaName(search);
		ArrayList<TimeInfoDTO> timeInfo = dao.timeSearch(cinemaNum);
		ArrayList<HallDTO> hall = dao.hallSearch(cinemaNum);
		ArrayList<CinemaDTO> cinema = dao.cinemaSearch(cinemaNum);
		
		//상영 시간과 현재 시간 비교를 위해 현재 시간의 값을 구해줌
		long nowTime = Long.parseLong(df.format(checkDate).replaceAll("-", ""));
		

		if (!timeInfo.isEmpty()) {
			ArrayList<TicketingInfoDTO> list = new ArrayList<>();
			ArrayList<MovieDTO> movieList = new ArrayList<>();
			int index = 0;
			for(TimeInfoDTO t : timeInfo) { 
				TicketingInfoDTO ticket = new TicketingInfoDTO();
				MovieDTO movie = moviedao.searchMovie(timeInfo.get(index).getMovieNum());
				
				//상영시간과 현재 시간 비교를 위해 상영 시간의 값을 구해줌
				String[] ticketDate = t.getTicketDate().split("-");
				Date startTime = new Date(Integer.parseInt(ticketDate[0]) - 1900, Integer.parseInt(ticketDate[1]) - 1, Integer.parseInt(ticketDate[2]));
				
				long timeCheck = Long.parseLong(df.format(startTime).replaceAll("-", ""));
				if (movie == null || timeCheck != nowTime) {// 영화 정보가 없거나  선택한 날짜와 다를 경우 리스트에 담아주지않음.
					index++;
					continue;
				}
				
				boolean insert = true;
				boolean add = true;
				
				ticket.setMovie(movie);
				ticket.setCinema(cinema.get(0));
				ticket.setHall(hall.get(index));
				ticket.setTime(t);
				
				for(MovieDTO check : movieList) { 
					if (check.getMovieName().equals(movie.getMovieName())) {
						insert = false;
						break;
					}
				}
				if (!movieKind.equals("all")) {// 영화 선택 할 시 영화 이름으로 구분
					if (!movie.getMovieName().contains(movieKind)) {
						add = false;
					}
				}
				
				
				if (add) {
					if (insert) {
						movieList.add(movie);
					}
					list.add(ticket);
				}
				index++;
				
			}
			if (!list.isEmpty()) {
				session.setAttribute("timeInfoList", list);
			}
			if (!movieList.isEmpty()) {
				session.setAttribute("movieList", movieList);
			}
		}
	}
	
}
