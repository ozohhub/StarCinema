package com.star.cinema.manage.service;

import org.springframework.ui.Model;

public interface IManageService {
	public void cinemaList(Model model, int currentPage);
	public void cinemaSearch(Model model, String search);
	public void cinemaInsert(String countryName, String cinemaName);
	public void cinemaDelete(int id);
	public void timeInfoList(Model model, int currentPage);
	public boolean timeInfoDeleteProc(String cinemaName);
	public boolean timeInfoInsertProc(String countryName, String cinemaName, String hallName, String ticketDate, String startTime);
	public void timeInfoSearch(Model model, String search);
}
