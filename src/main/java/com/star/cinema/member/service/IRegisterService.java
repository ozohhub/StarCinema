package com.star.cinema.member.service;

import com.star.cinema.member.dto.MemberDTO;

public interface IRegisterService {
	public String agreeCheck(String[] agree);
	
	public String sendAuth(String email, String name);

	public String authConfirm(String authNum);
	
	public String authProc(String name, String email);
		
	public String isExistId(String id);
	
	public String pwCheck(String pw);

	public String birthCheck(String y, String m, String d);

	public String phoneCheck(String phone1, String phone2, String phone3);

	public String addrCheck(String zip, String addr2, String addr3);

	public void insertMember(MemberDTO dto);

	

	
	


}
