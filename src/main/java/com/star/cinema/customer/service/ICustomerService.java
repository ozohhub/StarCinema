package com.star.cinema.customer.service;

import org.springframework.ui.Model;

import com.star.cinema.customer.dto.NoticeDTO;
import com.star.cinema.customer.dto.SearchDTO;

public interface ICustomerService {
	
	public void customerList(Model model, int currentPage);
	public void customerSearch(Model model,int currentPage, SearchDTO dto);
	public boolean insertNotice(String theater, String self_theater, String title, String content);
	public NoticeDTO noticeViewProc(String num);
	public void noticeModifyProc(NoticeDTO dto,String num);
	public void noticeDeleteProc(String num);

	

		

}
