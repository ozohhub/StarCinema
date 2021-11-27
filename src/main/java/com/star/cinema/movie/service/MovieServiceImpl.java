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
		List<MovieDTO> movieList = dao.movieList();
		ArrayList<MovieDTO> nowMovie = new ArrayList<MovieDTO>();
		ArrayList<MovieDTO> laterMovie = new ArrayList<MovieDTO>();
		
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		String day = sdf.format(d);
		int today = Integer.parseInt(day);
		
		for(MovieDTO m : movieList) {
			String date[] = m.getMovieOpen().split("-");
			int openDate = Integer.parseInt(date[0] + date[1] + date[2]);
			if (openDate > today) {
				laterMovie.add(m);
			} else {
				nowMovie.add(m);
			}
		}

		if (!laterMovie.isEmpty()) {
			model.addAttribute("laterMovie", laterMovie);			
		} 
		if (!nowMovie.isEmpty()) {
			model.addAttribute("nowMovie", nowMovie);			
		}
	}
}
