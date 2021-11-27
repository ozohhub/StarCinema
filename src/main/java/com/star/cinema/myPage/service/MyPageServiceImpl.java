package com.star.cinema.myPage.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.customer.dto.QuestionDTO;
import com.star.cinema.member.MemberCheck;
import com.star.cinema.member.config.PageConfig;
import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.movie.dao.IGradeDAO;
import com.star.cinema.movie.dto.GradeDTO;
import com.star.cinema.movie.dto.MovieDTO;
import com.star.cinema.myPage.dao.IMyPageDAO;

@Service
public class MyPageServiceImpl implements IMyPageService {
	final static Logger logger = LoggerFactory.getLogger(MyPageServiceImpl.class);
	@Autowired HttpSession session;
	@Autowired IMyPageDAO dao;
	@Autowired IGradeDAO gradeDao;
	@Autowired MemberCheck memChk;

	@Override
	public boolean myQuestionList(Model model, int currentPage) {
		MemberDTO member = (MemberDTO)session.getAttribute("loginInfo");		
		if(member == null) return false;
			
		int[] page = PageConfig.setPage(dao.myQuestionCount(member.getId()), currentPage);
		ArrayList<QuestionDTO> myList = dao.myQuestionList(member.getId(), page[0], page[1]);
		model.addAttribute("list", myList);
		
		String url = "/cinema/myQuestionList?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, page[2], page[3], url));
		
		return true;
	}

	@Override
	public boolean modifyProc(String pw, String pwChk, String phone1, String phone2, String phone3, String zipcode,
			String addr1, String addr2) {
		
		if((MemberDTO)session.getAttribute("loginInfo") == null) return false;
		if(!pw.equals(pwChk) || memChk.pwCheck(pwChk)== false || memChk.phoneCheck(phone2, phone3)== false ||
				zipcode == "" || addr1 == "" || addr2 == "") {
			return false;
		}
		
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(pw);
		
		dto.setPw(securePw); dto.setPhone(phone1+"-"+phone2+"-"+phone3); dto.setZipcode(zipcode);
		dto.setAddress(addr1+"&&"+addr2);
		
		dao.modifyMember(dto);
		return true;
	}

	@Override
	public void deleteProc() {
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		if(dto == null) return;	
		dao.deleteMember(dto);
	}

	@Override
	public boolean myLikeProc(Model model) {
		MemberDTO dto = (MemberDTO)session.getAttribute("loginInfo");
		if(dto == null) return false;
		ArrayList<GradeDTO> myGrade = gradeDao.selectMyLike(dto.getId());
		Map<Integer,MovieDTO> myMovieInfo  = new HashMap<Integer,MovieDTO>();
		Map<Integer,Double> myMovieGrade = new HashMap<Integer,Double>();
		Map<Integer,String> recentReview = new HashMap<Integer,String>();
		
		if(!myGrade.isEmpty()) {
			for(GradeDTO g : myGrade) {
				MovieDTO movie = gradeDao.selectMovieInfo(g.getMovieListNum());
				Double totalGrade = gradeDao.selectTotalGrade(g.getMovieListNum());
				String recent = gradeDao.selectRecent(g.getMovieListNum());
				myMovieInfo.put(g.getMovieListNum(), movie);
				myMovieGrade.put(g.getMovieListNum(), totalGrade);
				recentReview.put(g.getMovieListNum(),recent);
			}	
		}
		
		model.addAttribute("myGrade", myGrade);
		model.addAttribute("myMovieInfo", myMovieInfo);
		model.addAttribute("myMovieGrade", myMovieGrade);
		model.addAttribute("recentReview", recentReview);
		
		return true;
	}

	
	
	
	
}
