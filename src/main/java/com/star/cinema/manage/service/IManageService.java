package com.star.cinema.manage.service;

import org.springframework.ui.Model;

public interface IManageService {
	public void cinemaList(Model model, int currentPage);
	public boolean cinemaDelete(int cinemaNum);
}
