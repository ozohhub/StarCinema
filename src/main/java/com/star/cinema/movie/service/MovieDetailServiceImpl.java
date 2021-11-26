package com.star.cinema.movie.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.star.cinema.movie.dao.IGradeDAO;
import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;

@Service
public class MovieDetailServiceImpl implements IMovieDetailService {
	@Autowired HttpSession session;
	@Autowired IGradeDAO dao;
	
	@Override
	public MovieDTO selectMovieNum(int movieListNum) {
		
		return dao.selectMovieNum(movieListNum);
	}
	
	@Override
	public GradeDTO selectGrade(int movieListNum) {
		
		return dao.selectGrade(movieListNum);
	}
	
}
