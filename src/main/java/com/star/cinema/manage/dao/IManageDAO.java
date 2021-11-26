package com.star.cinema.manage.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.star.cinema.manage.dto.CinemaDTO;
import com.star.cinema.manage.dto.HallDTO;
import com.star.cinema.manage.dto.TimeInfoDTO;
import com.star.cinema.manage.dto.TimeManageDTO;

@Repository
public interface IManageDAO {
	public int cinemaCount();
	public int timeInfoCount();
	
	public ArrayList<TimeInfoDTO> timeInfoList(@Param("b")int begin, @Param("e")int end);
	public ArrayList<HallDTO> hallList(@Param("b")int begin, @Param("e")int end);
	public void cinemaInsert(CinemaDTO cinema);
	public ArrayList<CinemaDTO> cinemaList(@Param("b")int begin, @Param("e")int end);
	public ArrayList<CinemaDTO> cinemaSearchForName(@Param("search") String search);
	public ArrayList<CinemaDTO> AllCinemaList();
	public boolean cinemaDelete(int num);
	public int cinemaName(String search);
	public boolean timeInfoDelete(int num);
	public boolean hallDelete(int num);
	public void timeInfoInsert(TimeInfoDTO timeInfo);
	public void hallInsert(HallDTO hall);
	public ArrayList<TimeInfoDTO> timeSearch(int cinemaNum);
	public ArrayList<HallDTO> hallSearch(int cinemaName);
	public ArrayList<CinemaDTO> cinemaSearch(int cinemaNum);
}
