package com.star.cinema.customer.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.customer.dao.ICustomerDAO;
import com.star.cinema.customer.dto.NoticeDTO;
import com.star.cinema.customer.dto.SearchDTO;
import com.star.cinema.member.config.PageConfig;

@Service
public class CustomerServiceImpl implements ICustomerService{
	final static Logger logger = LoggerFactory.getLogger(CustomerServiceImpl.class);
	@Autowired HttpSession session;
	@Autowired ICustomerDAO dao;


	@Override
	public void customerList(Model model, int currentPage) {
		session.removeAttribute("search");
		int pageBlock = 10;
		int totalCount = dao.customerCount();
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		ArrayList<NoticeDTO> list = dao.customerList(begin, end);
		model.addAttribute("list", list);
		
		String url = "/cinema/customerList?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, pageBlock, totalCount, url));
		
	}

	@Override
	public void customerSearch(Model model, int currentPage, SearchDTO dto) {
		session.setAttribute("search", dto);		
		int pageBlock = 10;		
		int totalCount = dao.customerSearchCount(dto.getSearch(), dto.getSel());		
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		
		ArrayList<NoticeDTO> list = dao.customerSearch(begin,end,dto.getSearch(), dto.getSel());
		model.addAttribute("list", list);
		
		String url = "/cinema/customerList?currentPage=";
		model.addAttribute("page", PageConfig.getNavi(currentPage, pageBlock, totalCount, url));
					
	}
	
	@Override
	public boolean insertNotice(String theater, String self_theater, String title, String content) {
		if((theater.equals("1") &&  self_theater == "") || title == "" || content == "") {
			return false;
		}
		
		String division = theater.equals("0") ? "전체" : self_theater;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		NoticeDTO dto = new NoticeDTO();
		
		dto.setDivision(division); dto.setTitle(title); dto.setContent(content);
		dto.setRegDate(sdf.format(new Date()));
		
		dao.insertNotice(dto);
				
		return true;
	}

	@Override
	public NoticeDTO noticeViewProc(String num) {
		if(num == null || num == "") {
			return null;
		}	
		
		int noticeNum = Integer.parseInt(num);
		
		dao.updateHit(noticeNum);
		return dao.selectNum(noticeNum);
	}

	@Override
	public void noticeModifyProc(NoticeDTO dto,String num) {	
		int noticeNum = Integer.parseInt(num);
		
		dto.setNoticeNum(noticeNum);
		dao.updateNotice(dto);		
	}

	@Override
	public void noticeDeleteProc(String num) {
		int noticeNum = Integer.parseInt(num);
		
		dao.deleteNotice(noticeNum);
		
	}



	
}
