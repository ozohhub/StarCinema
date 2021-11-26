package com.star.cinema.movie.service;

import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;

public interface IMovieDetailService {

	public MovieDTO selectMovieNum(int movieListNum);

	public GradeDTO selectGrade(int movieListNum);

}
