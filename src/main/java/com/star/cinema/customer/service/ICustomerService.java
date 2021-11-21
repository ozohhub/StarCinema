package com.star.cinema.customer.service;

import java.util.ArrayList;

import com.star.cinema.customer.dto.NoticeDTO;

public interface ICustomerService {
	
	public ArrayList<NoticeDTO> customerList();
	
	public boolean insertNotice(String theater, String self_theater, String title, String content);

	

}
