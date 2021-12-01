package com.star.cinema.movie.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.star.cinema.movie.dao.IMovieDAO;
import com.star.cinema.movie.dto.MovieDTO;

@Service
public class MovieServiceImpl implements IMovieService{
   @Autowired HttpSession session;
   @Autowired IMovieDAO dao;
   @Autowired IMovieDetailService detail;
   
   @Override
   public void movieListProc(Model model) {
      List<MovieDTO> movieList = dao.movieList();
      ArrayList<Integer> movieListNum = dao.movieListNum();
      ArrayList<Integer> like = new ArrayList<Integer>();
      Map<Integer,Integer> totalLike = new HashMap<Integer, Integer>();
      
      for(int i=0;i<movieListNum.size();i++) {
         like.add(detail.totalLike(movieListNum.get(i)));
         totalLike.put(movieListNum.get(i), like.get(i));
      }
      
      //언니 노트북으로 확인하기
      
      model.addAttribute("totalLike", totalLike);
      model.addAttribute("movieList", movieList);
   }
   
   @Override
   public void insertMovie(MovieDTO movie) {
      dao.insertMovie(movie);
   }
   
   @Override
   public void deleteMovie(String movieName) {
      dao.deleteMovie(movieName);
   }
   
   @Override
   public MovieDTO selectMovie(String movieName) {
      return dao.selectMovie(movieName);
   }
   
   @Override
   public void changeMovie(MovieDTO movie) {
      dao.changeMovie(movie);
      
   }

   @Override
   public void movieInfoListProc(Model model) {
      List<MovieDTO> movieList = dao.movieList();
      ArrayList<MovieDTO> nowMovie = new ArrayList<MovieDTO>();
      ArrayList<MovieDTO> laterMovie = new ArrayList<MovieDTO>();
      HashMap<Integer,Long> sub = new HashMap<Integer, Long>();
      ArrayList<Long> l_dday = new ArrayList<Long>();
      ArrayList<Long> subStract = new ArrayList<Long>();
      ArrayList<Integer> open = new ArrayList<Integer>();
      Date d = new Date();
      
      Calendar calStart = Calendar.getInstance();
      Calendar calEnd = Calendar.getInstance();
      calStart.set(d.getYear()+1900, d.getMonth()+1, d.getDate());
      long l_today = calStart.getTimeInMillis() / (24 * 60 * 60 * 1000);
      
      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
      String day = sdf.format(d);
      int today = Integer.parseInt(day);
      
      for(MovieDTO m : movieList) {
         String date[] = m.getMovieOpen().split("-");
         int openDate = Integer.parseInt(date[0] + date[1] + date[2]);
         
         calEnd.set(Integer.parseInt(date[0]), Integer.parseInt(date[1]), Integer.parseInt(date[2]));
         l_dday.add(calEnd.getTimeInMillis() / (24 * 60 * 60 * 1000));
         
         if (openDate > today) {
            laterMovie.add(m);
            String movieToString = Integer.toString(openDate);
            String openYear = movieToString.substring(0, 4);
            String openMonth = movieToString.substring(4, 6);
            String openDay = movieToString.substring(6);
            String movieOpen = openYear + "-" + openMonth + "-" +openDay;
            open.addAll(dao.selectMovieListNum(movieOpen));
         }
         else {
            nowMovie.add(m);
         }
      }
      for(int i=0;i<l_dday.size();i++) {
         long dday = l_dday.get(i) - l_today;
            subStract.add(dday);
      }
      System.out.println(open.size());
      System.out.println(subStract.size());
      for(int i=0;i<open.size();i++) {
    	  
         sub.put(open.get(i), subStract.get(i));
      }
      
      movieListProc(model);
      model.addAttribute("sub", sub);
      
      if (!laterMovie.isEmpty()) {
         model.addAttribute("laterMovie", laterMovie);         
      } 
      if (!nowMovie.isEmpty()) {
         model.addAttribute("nowMovie", nowMovie);         
      }
   }

   @Override
   public List<MovieDTO> movieList() {
      return dao.movieList();
   }
}