package com.quiz.lesson05.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.quiz.lesson05.model.WeatherHistory;

@Repository
public interface WeatherDAO {
	public WeatherHistory selectDate(int id);
	
	public List<WeatherHistory> selectWeatherHistoryList();
	
	public void insertWeather(WeatherHistory weather);
}