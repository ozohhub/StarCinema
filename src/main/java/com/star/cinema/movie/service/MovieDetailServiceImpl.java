package com.star.cinema.movie.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.movie.dao.IGradeDAO;
import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;
import com.star.cinema.movie.dto.TicketingDTO;
import com.star.cinema.myPage.dao.IMyPageDAO;
import com.star.cinema.myPage.service.MyPageServiceImpl;

@Service
public class MovieDetailServiceImpl implements IMovieDetailService {
	@Autowired HttpSession session;
	@Autowired IGradeDAO dao;
	@Autowired IMyPageDAO myDao;
	
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
		if(enableReview(movieListNum, dto.getId()) == false) return "아직 관람하지 않은 영화입니다. 관람 후 작성해주세요";
				
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd");
		String regDate = sdf.format(new Date());
		
		StringBuilder sb = new StringBuilder(dto.getName());
		sb.setCharAt(1, '*');
				
		GradeDTO grade = selectMyGrade(dto.getId(), movieListNum);
		GradeDTO dataGrade = new GradeDTO();
		
		int myGrade = Integer.parseInt(map.get("grade"));
		dataGrade.setId(dto.getId()); dataGrade.setMovieListNum(movieListNum); dataGrade.setGrade(myGrade);
		dataGrade.setReview(map.get("review")); dataGrade.setRegDate(regDate); dataGrade.setName(sb.toString());
		
		if(grade!= null) {
			if(grade.getReview() != null ) return "이미 리뷰를 작성한 영화입니다.";		
			else dao.updateReview(dataGrade); // 찜을 해서 이미 db에 있는 상태면 평점/리뷰 update
		}else {																	
			dao.insertReview(dataGrade);	  // db에 없는 상태면 insert
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

	public boolean enableReview(int movieListNum, String id) {
		TicketingDTO ticket = selectReserve(id, movieListNum);
		MovieDTO movie = selectMovieNum(movieListNum);
		
		MyPageServiceImpl svc = new MyPageServiceImpl();
		String reviewTime = svc.timeCalc(ticket.getOpenDate(), ticket.getOpenTime(), movie.getMovieTime());
		reviewTime = reviewTime.replaceAll("-", "");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmm");
		String nowDate = sdf.format(new Date());

		if(Long.parseLong(nowDate) > Long.parseLong(reviewTime) ) {
			return true;
		}return false;

	}
	
	public double preferGender(int movieListNum) {
		ArrayList<String>idList = dao.ticketingIdList(movieListNum);
		double preferW= 0.0;
		if(!idList.isEmpty()) {
			int total = idList.size();
			int w = 0;
			Set<String> woman = dao.isWoman();
			if(!woman.isEmpty()) {
				for(String id : idList) {
					if(woman.contains(id)) w++;
				}
			}			
			preferW = w/(double)total * 100;
		}		
		return preferW;
	}	
	
	public double[] preferAge(int movieListNum) {
		double[] agePercent = {0.0,0.0,0.0,0.0};
		ArrayList<String>idList = dao.ticketingIdList(movieListNum);
		if(!idList.isEmpty()) {
			int total = idList.size();
				
			Calendar now = Calendar.getInstance();
			int nowYear = now.get(Calendar.YEAR);
			int t1=0, t2=0, t3=0, t4 =0;
			

			Set<String> teen = myDao.preferYear(nowYear-(19-1)+"",nowYear-(10-1)+"");
			Set<String> twen = myDao.preferYear(nowYear-(29-1)+"",nowYear-(20-1)+"");
			Set<String> thirty = myDao.preferYear(nowYear-(39-1)+"",nowYear-(30-1)+"");
			Set<String> forty = myDao.preferYear(nowYear-(100-1)+"",nowYear-(40-1)+"");
			
			for(String id : idList) {
				if(!teen.isEmpty() && teen.contains(id)) t1++;
				if(!twen.isEmpty() && twen.contains(id)) t2++;
				if(!thirty.isEmpty() && thirty.contains(id)) t3++;
				if(!forty.isEmpty() && forty.contains(id)) t4++;
			}
			
			agePercent[0] = t1/(double)total*100; agePercent[1] = t2/(double)total*100; agePercent[2] = t3/(double)total*100; agePercent[3] = t4/(double)total*100;
		}
		return agePercent;
	}
		
	public double[] movieRank(int movieListNum) {
		double[] rank = {0,0};
		ArrayList<Integer> gc = myDao.groupCount();
		int mc = myDao.moiveCount(movieListNum);
		int tc = myDao.totalTicketCount();
		
		if(!gc.isEmpty())rank[0] = gc.indexOf(movieListNum) + 1;
		if(mc > 0 && tc > 0) rank[1] = mc/(double)tc * 100;
		
		return rank;
	}
	
	
}


