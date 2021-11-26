package com.star.cinema.movie.dao;

import org.springframework.stereotype.Repository;

import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;

@Repository
public interface IGradeDAO {

	public MovieDTO selectMovieNum(int movieListNum);

	public GradeDTO selectGrade(int movieListNum);

}
