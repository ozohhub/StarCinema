package com.star.cinema.customer.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.star.cinema.customer.dao.ICustomerDAO;
import com.star.cinema.customer.dto.NoticeDTO;

@Service
public class CustomerServiceImpl implements ICustomerService{
	@Autowired HttpSession session;
	@Autowired ICustomerDAO dao;


	@Override
	public ArrayList<NoticeDTO> customerList() {
		return dao.customerList();
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

	
}
