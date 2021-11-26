package com.star.cinema.manage.dto;

public class TimeInfoDTO {
	private int timeInfoNum;
	private String startTime;
	private int movieNum;
	private String ticketDate;
	private HallDTO hall;
	private CinemaDTO cinema;
	private int cinemaNum;
	
	public int getTimeInfoNum() {
		return timeInfoNum;
	}
	public void setTimeInfoNum(int timeInfoNum) {
		this.timeInfoNum = timeInfoNum;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public int getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}
	public String getTicketDate() {
		return ticketDate;
	}
	public void setTicketDate(String ticketDate) {
		this.ticketDate = ticketDate;
	}
	public HallDTO getHall() {
		return hall;
	}
	public void setHall(HallDTO hall) {
		this.hall = hall;
	}
	public CinemaDTO getCinema() {
		return cinema;
	}
	public void setCinema(CinemaDTO cinema) {
		this.cinema = cinema;
	}
	public int getCinemaNum() {
		return cinemaNum;
	}
	public void setCinemaNum(int cinemaNum) {
		this.cinemaNum = cinemaNum;
	}
}
