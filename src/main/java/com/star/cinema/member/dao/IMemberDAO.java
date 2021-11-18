package com.star.cinema.member.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.star.cinema.member.dto.MemberDTO;

public interface IMemberDAO {
	public int memberCount();
	public ArrayList<MemberDTO> memberList(
			@Param("b")int begin, @Param("e")int end,
			@Param("sel")String select, @Param("search")String search);
}
