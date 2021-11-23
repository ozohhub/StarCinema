package com.star.cinema.manage.dto;

public class TimeManageDTO {
	private int timeInfoNum;
	private String countryName;
	private String hallName;
	private int hallNum;
	private String ticketDate;
	private String startTime;
	
	public int getTimeInfoNum() {
		return timeInfoNum;
	}
	public void setTimeInfoNum(int timeInfoNum) {
		this.timeInfoNum = timeInfoNum;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getHallName() {
		return hallName;
	}
	public void setHallName(String hallName) {
		this.hallName = hallName;
	}
	public int getHallNum() {
		return hallNum;
	}
	public void setHallNum(int hallNum) {
		this.hallNum = hallNum;
	}
	public String getTicketDate() {
		return ticketDate;
	}
	public void setTicketDate(String ticketDate) {
		this.ticketDate = ticketDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
}
