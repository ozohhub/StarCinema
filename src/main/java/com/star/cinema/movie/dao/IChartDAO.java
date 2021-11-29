package com.star.cinema.movie.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

@Repository
public interface IChartDAO {
	
	public ArrayList<Integer>groupCount();
	
	public int moiveCount(int movieListNum);
	
	public int totalTicketCount();
	
	public ArrayList<Integer> likeRank();
	
	public ArrayList<Integer> gradeRank();
	
	public ArrayList<Integer> reviewRank();
	
}
