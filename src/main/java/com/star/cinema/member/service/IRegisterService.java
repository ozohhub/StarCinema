package com.star.cinema.member.service;

import com.star.cinema.member.dto.MemberDTO;

public interface IRegisterService {

	public boolean nameCheck(String name);
	
	public void sendAuth(String email);

	public String authConfirm(String authNum);
		
	public String isExistId(String id);
	
	public boolean pwCheck(String pw);

	public String birthCheck(String y, String m, String d);

	public String phoneCheck(String phone1, String phone2, String phone3);

	public String addrCheck(String zip, String addr2, String addr3);

	public void insertMember(MemberDTO dto);
	


}
