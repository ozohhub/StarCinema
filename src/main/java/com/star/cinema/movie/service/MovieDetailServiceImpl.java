package com.star.cinema.movie.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.movie.dao.IGradeDAO;
import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;
import com.star.cinema.movie.dto.TicketingDTO;

@Service
public class MovieDetailServiceImpl implements IMovieDetailService {
	@Autowired HttpSession session;
	@Autowired IGradeDAO dao;
	
	@Override
	public MovieDTO selectMovieNum(int movieListNum) {		
		return dao.selectMovieNum(movieListNum);
	}
	
	@Override
	public ArrayList<GradeDTO> selectGrade(int movieListNum) {		
		return dao.selectGrade(movieListNum);
	}
	
	@Override
	public TicketingDTO selectReserve(String id, int movieListNum) {		
		return dao.selectReserve(id, movieListNum);
	}
	
	@Override
	public GradeDTO selectMyGrade(String id, int movieListNum) {		
		return dao.selectMyGrade(id, movieListNum);
	}
	
	@Override
	public double selectTotalGrade(int movieListNum) {
		return dao.selectTotalGrade(movieListNum);
	}

	@Override
	public String reviewWriteProc(Map<String, String> map) {
		if((MemberDTO)session.getAttribute("loginInfo") == null) return "로그인 후 이용가능합니다.";
		
		int movieListNum = Integer.parseInt(map.get("movieListNum"));
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		
		if(selectReserve(dto.getId(), movieListNum) == null) return "관람내역이 없습니다. 관람 후 작성해주세요.";
				
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		String regDate = sdf.format(new Date());
		
		StringBuilder sb = new StringBuilder(dto.getName());
		sb.setCharAt(1, '*');
				
		GradeDTO grade = selectMyGrade(dto.getId(), movieListNum);
		if(grade!= null) {
			if(grade.getReview() != null ) return "이미 리뷰를 작성한 영화입니다.";		// 찜을 해서 이미 db에 있는 상태면 평점/리뷰 update
			else dao.updateReview(dto.getId(), movieListNum, map.get("grade"), map.get("review"),regDate,sb.toString());
		}else {																	// db에 없는 상태면 insert
			dao.insertReview(dto.getId(), movieListNum, map.get("grade"), map.get("review"), regDate, sb.toString());
		}
				
		return "등록이 완료되었습니다.";
	}

	@Override
	public String likeCalcProc(Map<String, String> map) {
		if((MemberDTO)session.getAttribute("loginInfo") == null) return "로그인 후 이용가능합니다.";
		
		int movieListNum = Integer.parseInt(map.get("movieListNum"));
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		
		GradeDTO grade = selectMyGrade(dto.getId(), movieListNum);
		if(grade == null) dao.insertLike(dto.getId(), movieListNum);
		else {
			if(grade.getLikeCheck() == 0) {
				dao.updateLike(movieListNum, dto.getId(), "in"); 
			}else{
				dao.updateLike(movieListNum, dto.getId(), "out"); return "좋아요가 취소되었습니다.";
			}
		}
		return "좋아요가 반영되었습니다.";
	}

	@Override
	public int totalLike(int movieListNum) {
		return dao.selectTotalLike(movieListNum);
	}



	


	
	
}
