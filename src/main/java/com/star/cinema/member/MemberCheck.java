package com.star.cinema.member;

import java.util.Calendar;

import org.springframework.stereotype.Component;

@Component
public class MemberCheck {
	public boolean nameCheck(String name) {  // 이름 : 한글(2~5자) 또는 영문자(4~20)자 - 혼용x
		String regName = "^[가-힣]{2,5}|[a-zA-Z]{4,20}$";
		return !name.matches(regName) ? false : true;
	}
	
	public boolean idCheck(String id) {		// 아이디 : 소문자로 시작, 소문자/숫자/-_만 가능(5~12자)
		String regId = "^[a-z][a-z0-9-_]{4,12}$";
		return !id.matches(regId) ? false : true;
	}
	
	public boolean pwCheck(String pw) {		// 비밀번호 : 영문자와 숫자가 반드시 하나이상 포함된 조합(8~16자)
											// 특수문자는 선택사항 -_!@#$%^&*? 가능
		String regPw = "^(?=.*[a-zA-Z])(?=.*?[0-9])[A-Za-z\\d-_!@#$%^&*?]{8,16}$";
		return !pw.matches(regPw)? false : true;
	}
	
	public boolean numCheck(String num) {
		String regNum = "^[0-9]+$";
		return !num.matches(regNum)? false : true;
	}
	
	public String birthCheck(String birth[]) {
		String check = "";
		int year = Integer.parseInt(birth[0]);
		int month = Integer.parseInt(birth[1]);
		int day = Integer.parseInt(birth[2]);
		
		if(month > 12 || month < 0) return "생년월일을 확인해주세요";
		
		int[] maxDaysInMonth = {31,28,31,30,31,30,31,31,30,31,30,31};
		int maxDay = maxDaysInMonth[month-1];
		
		if (month == 2 && (year % 4 == 0 && year % 100 != 0 || year % 400 == 0)) {	
	        maxDay = 29;
	    }
		
		if(day > maxDay) check = "생년월일을 확인해주세요";
		int age = calcAge(year,month,day);
		
		if(age < 14) check = "만 14세 미만은 가입이 불가능합니다.";
				
		return check;		
	}
	// 현재 나이 구하기(생년, 월, 일)
	public int calcAge(int birthY, int birthM, int birthD) {
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH) + 1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		
		int age = year - birthY;
		
		if(birthM*100+birthD > month*100+day) age--;
		
		return age;
	}
	
	public boolean phoneCheck(String phone2, String phone3) {
		String phone2Reg = "\\d{3,4}$";
		String phone3Reg = "\\d{4}$";
		
		return !phone2.matches(phone2Reg) || !phone3.matches(phone3Reg)? false : true;
	}
	
	
	
	
	
	
	
}
