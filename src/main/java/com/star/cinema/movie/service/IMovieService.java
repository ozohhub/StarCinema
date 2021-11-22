package com.star.cinema.movie.service;

import java.util.List;

import com.star.cinema.movie.dto.MovieDTO;

public interface IMovieService {
	
	public List<MovieDTO> movieList();
	public void insertMovie(MovieDTO dto);
	public void deleteMovie(String movieName);
	public MovieDTO selectMovie(String movieName);
	public void changeMovie(MovieDTO movie);

}
