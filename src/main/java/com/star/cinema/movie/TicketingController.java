package com.star.cinema.movie;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.star.cinema.manage.service.IManageService;
import com.star.cinema.movie.dto.MovieDTO;
import com.star.cinema.movie.dto.TicketingDTO;
import com.star.cinema.movie.service.IMovieService;
import com.star.cinema.movie.service.IPayService;
import com.star.cinema.movie.service.ISeatService;

@Controller
public class TicketingController {
	@Autowired ISeatService seatService;
	@Autowired IPayService payService;
	@Autowired IMovieService movieService;
	@Autowired IManageService manageService;
	
	@RequestMapping(value = "/ticketing")
	public String ticketing(Model model, HttpSession session) {
		if (session.getAttribute("loginInfo") == null) {
			return "member/login";
		}
		List<MovieDTO> movieList = movieService.movieList();
		model.addAttribute("movieList", movieList);
		

		if (session.getAttribute("selectDate") == null) {
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			session.setAttribute("selectDate", df.format(new Date()));
		}
		
		return "movie/ticketing";
	}
	
	@ResponseBody
	@RequestMapping(value = "selectCinema")
	public void selectCinema(Model model, @RequestBody Map<String, String> map) {
		manageService.timeInfoSearch(model, map.get("name"), "search");
	}
	
	@ResponseBody
	@RequestMapping(value = "selectMovie")
	public void selectMovie(Model model, HttpSession session, @RequestBody Map<String, String> map) {
		if (session.getAttribute("selectCinema") != null) {
			manageService.selectMovie(model, map.get("movieName"));
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "selectTime")
	public boolean selectTime(Model model, @RequestBody Map<String, String> map) {
		return manageService.selectTime(model, map);
	}
	
	@ResponseBody
	@RequestMapping(value = "selectDate")
	public void selectDate(Model model, HttpSession session, @RequestBody Map<String, String> map) {
		session.setAttribute("selectDate", map.get("date"));
		if (session.getAttribute("selectCinema") != null) {
			manageService.selectDate(model, map.get("date"));
		}
	}

	
	@RequestMapping (value = "seatProc")
	public String seatInsert(Model model, String title, String reserveDate, String runningTime, String totalPrice,
		   String ticketNumber, String selectedSeat, String movieListName, String cinemaName, String hallName) {
		TicketingDTO dto = new TicketingDTO();
		dto.setMoiveName(title);
		dto.setOpenDate(reserveDate);
		dto.setOpenTime(runningTime);
		dto.setTotalPrice(totalPrice.replaceAll("원", ""));
		dto.setPeople(ticketNumber);
		dto.setSeatName(selectedSeat);
		
		boolean check = seatService.seatProc(dto, hallName);
		if(check) {
			return "forward:/index?formpath=pay";
		} else {
			return "forward:/index?formpath=seat";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "kakaoPay")
	public String kakaoPay() {
		try {
			URL address = new URL("https://kapi.kakao.com/v1/payment/ready");
			try {
				HttpURLConnection serverCon = (HttpURLConnection) address.openConnection();
				serverCon.setRequestMethod("POST");
				serverCon.setRequestProperty("Authorization", "KakaoAK 0d914fac76375135f85e7ee3050a77ee");
				serverCon.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				serverCon.setDoOutput(true);
				String param = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=영화예매&quantity=1&total_amount=2200&vat_amount=200&tax_free_amount=0&approval_url=http://localhost:8085/cinema/payProc&fail_url=http://localhost:8085/cinema/index?formpath=ticketing&cancel_url=http://localhost:8085/cinema/seatProc";
				OutputStream give = serverCon.getOutputStream();
				DataOutputStream giveData = new DataOutputStream(give);
				giveData.writeBytes(param);
				giveData.close();
				
				int result = serverCon.getResponseCode();
				
				InputStream receive;
				
				if(result == 200) {
					receive = serverCon.getInputStream();
				}
				else {
					receive = serverCon.getErrorStream();
				}
				
				InputStreamReader read = new InputStreamReader(receive);
				BufferedReader change = new BufferedReader(read);
				
				return change.readLine();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@RequestMapping (value = "payProc")
	public String payProc(Model model) {
		boolean check = payService.checkPay();
		if(check) {     
			model.addAttribute("msg", "결제에 성공하였습니다.");
		}
		else {
			model.addAttribute("msg", "결제에 실패하였습니다.");
		}
		return "forward:ticketingHistory";
	}
	
	@RequestMapping (value = "payCancle")
	public String payCancle(Model model, String seatName) {
		boolean check = payService.payCancle(seatName);
		if(check) {     
			model.addAttribute("msg", "결제취소에 성공하였습니다.");
		}
		else {
			model.addAttribute("msg", "결제취소에 실패하였습니다.");
		}
		return "forward:ticketingHistory";
	}
}