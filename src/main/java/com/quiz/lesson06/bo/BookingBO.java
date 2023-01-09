package com.quiz.lesson06.bo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quiz.lesson06.dao.BookingDAO;
import com.quiz.lesson06.model.Booking;

@Service
public class BookingBO {
	@Autowired
	private BookingDAO bookingDAO;

	public List<Booking> getBookingList() {
		return bookingDAO.selectBookingList();
	}
	
	public void addRegister(Booking booking) {
		bookingDAO.insertRegister(booking);
	}
	
	public int deleteRegister(int id) {
		return bookingDAO.deleteRegister(id);
	}
	
	public Booking checkRegister(String name, String phoneNumber) {
		return bookingDAO.checkRegister(name, phoneNumber);
	}
}