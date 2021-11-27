package com.star.cinema.movie.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;
import com.star.cinema.movie.dto.TicketingDTO;

@Repository
public interface IGradeDAO {

	public MovieDTO selectMovieNum(int movieListNum);

	public ArrayList<GradeDTO> selectGrade(int movieListNum);

	public TicketingDTO selectReserve(@Param("id") String id, @Param("n") int movieListNum);

	public GradeDTO selectMyGrade(@Param("id") String id, @Param("n") int movieListNum);
	
	public double selectTotalGrade(int movieListNum);
	
	public void insertReview(@Param("id")String id, @Param("movieListNum")int movieListNum, @Param("grade")String grade, @Param("review")String review, @Param("regDate")String regDate, @Param("name")String name);

	public int selectTotalLike(int movieListNum);
	
	public void updateLike(@Param("movieListNum")int movieListNum, @Param("id")String id, @Param("condition")String condition);

	public void updateReview(@Param("id")String id,@Param("movieListNum")int movieListNum, @Param("grade")String grade, @Param("review")String review, @Param("regDate")String regDate, @Param("name")String name);

	public void insertLike(@Param("id")String id, @Param("movieListNum") int movieListNum);

	public ArrayList<GradeDTO> selectMyLike(String id);

	public MovieDTO selectMovieInfo(int movieListNum);

	public String selectRecent(int movieListNum);

	

}
