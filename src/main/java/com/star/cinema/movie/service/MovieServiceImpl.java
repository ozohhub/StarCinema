package com.star.cinema.movie.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.movie.dao.IMovieDAO;
import com.star.cinema.movie.dto.MovieDTO;

@Service
public class MovieServiceImpl implements IMovieService{
	@Autowired HttpSession session;
	@Autowired IMovieDAO dao;
	
	@Override
	public List<MovieDTO> movieList() {
		return dao.movieList();
	}
	
	@Override
	public void insertMovie(MovieDTO movie) {
		dao.insertMovie(movie);
	}
	
	@Override
	public void deleteMovie(String movieName) {
		dao.deleteMovie(movieName);
	}
	
	@Override
	public MovieDTO selectMovie(String movieName) {
		return dao.selectMovie(movieName);
	}
	
	@Override
	public void changeMovie(MovieDTO movie) {
		dao.changeMovie(movie);
		
	}

	@Override
	public void movieInfoListProc(Model model) {
		ArrayList<MovieDTO> nowMovie = new ArrayList<MovieDTO>();
		ArrayList<MovieDTO> laterMovie = new ArrayList<MovieDTO>();
		ArrayList<String> openDate = dao.selectDate();
		int movieCount = dao.movieCount();
		String data[] = new String[movieCount]; //split으로 잘라서 담을 변수
		String date = "";
		int movieDate[] = new int[movieCount]; //개봉일 배열
				
		for(String s : openDate) {
			data = s.split("-");
		}
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String day = sdf.format(d);
		int today = Integer.parseInt(day);
		
		for(int i=0;i<movieCount;i++) { //영화 날짜 int로 변환 후 배열에 담기
			movieDate[i] =  Integer.parseInt(data[i]);
		}
		
		for(int i=0;i<movieCount;i++) { //현재 날짜와 영화 개봉일 비교
			if(movieDate[i] <= today) { //문자열에 담긴 영화 개봉일과 현재 날짜 비교
				nowMovie= dao.selectNowMovie(data[i]);
				model.addAttribute("nowMovie", nowMovie);
			}
			else {
				laterMovie = dao.selectLaterMovie(data[i]);
				model.addAttribute("laterMovie", laterMovie);
			}
		}
	}
}
