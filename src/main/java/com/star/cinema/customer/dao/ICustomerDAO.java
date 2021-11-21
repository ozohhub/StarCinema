package com.star.cinema.customer.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.star.cinema.customer.dto.NoticeDTO;

@Repository
public interface ICustomerDAO {

	public void insertNotice(NoticeDTO dto);

	public ArrayList<NoticeDTO> customerList();

}
