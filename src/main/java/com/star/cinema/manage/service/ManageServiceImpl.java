package com.star.cinema.manage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.manage.dao.IManageDAO;

@Service
public class ManageServiceImpl implements IManageService{
	@Autowired IManageDAO dao;
	
	@Override
	public void cinemaList(Model model, int currentPage) {
		
	}
	
	@Override
	public boolean cinemaDelete() {
		// TODO Auto-generated method stub
		return false;
	}
	
}
