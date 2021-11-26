package com.star.cinema.movie.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public void movieInfoListProc() {
		ArrayList<String> openDate = dao.selectDate();
		String data[] = new String[100];
		String date = null;
		for(String s : openDate) {
			data = s.split("-");
		}
		for(int i=0;i<data.length;i++) {
			date += data[i];
			System.out.println(date);
		}
	}
}
