package com.star.cinema.customer.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.customer.dao.ICustomerDAO;
import com.star.cinema.customer.dto.NoticeDTO;
import com.star.cinema.member.config.PageConfig;

@Service
public class CustomerServiceImpl implements ICustomerService{
	@Autowired HttpSession session;
	@Autowired ICustomerDAO dao;


	@Override
	public void customerList(Model model, int currentPage) {
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
	public void customerSearch(Model model, int currentPage, String search, String sel) {
		
		int pageBlock = 10;
		int totalCount = dao.customerSearchCount(search, sel);
		int end = currentPage * pageBlock;
		int begin = end + 1 - pageBlock;
		
		ArrayList<NoticeDTO> list = dao.customerSearch(begin,end,search,sel);
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
		if(num == null) {
			return null;
		}
		
		int noticeNum = Integer.parseInt(num);
		
		dao.updateHit(noticeNum);
		return dao.selectNum(noticeNum);
	}



	
}
