package com.star.cinema.movie;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;
import com.star.cinema.movie.service.IMovieDetailService;

@Controller
public class MovieDetailController {
	final static Logger logger = LoggerFactory.getLogger(MovieDetailController.class);
	@Autowired IMovieDetailService service;
	
	
	@RequestMapping(value = "/movieDetailProc")
	public String movieDetailProc(int movieListNum, Model model) {
		
		MovieDTO movie = service.selectMovieNum(movieListNum);		
		GradeDTO grade = service.selectGrade(movieListNum);
		
		model.addAttribute("movie", movie);
		model.addAttribute("grade", grade);
		
		return "forward:index?formpath=movieDetail";
	}
	
}
