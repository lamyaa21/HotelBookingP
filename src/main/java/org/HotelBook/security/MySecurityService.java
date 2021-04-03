package org.HotelBook.security;

import org.HotelBook.model.Booking;
import org.HotelBook.model.Comment;
import org.HotelBook.model.CustomUserDetail;
import org.HotelBook.model.Hotel;
import org.HotelBook.model.User;
import org.HotelBook.repository.BookingRepository;
import org.HotelBook.repository.CommentRepository;
import org.HotelBook.repository.HotelRepository;
import org.HotelBook.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.stereotype.Component;
@EnableWebSecurity
@Component("mySecurityService")
public class MySecurityService {
	
	@Autowired
	HotelRepository hotels;
	
	@Autowired
	UserRepository users;
	
	@Autowired
	CommentRepository comments;
	
	@Autowired
	BookingRepository bookings;
	
	public boolean canEditHotel(long hotel_id, CustomUserDetail user) {
		Hotel hotel = hotels.findById(hotel_id).get();
		return hotel != null && hotel.getManager() != null && user.getUser().getId() == hotel.getManager().getId();
	}
	
	public boolean canEditHotel(long hotel_id, String s) {
		return false;
	}
	
	
	public boolean canEditUser(long user_id, CustomUserDetail user){
		User userTmp = users.findById(user_id).get();
		return userTmp != null && user.getUser() != null && user.getUser().getId() == userTmp.getId();
	}
	
	public boolean canEditComment(long comment_id, CustomUserDetail user){
		Comment comment = comments.findById(comment_id).get();
		return comment != null && user != null &&  comment.getUser().getId() == user.getUser().getId();
		
	}
	
	public boolean canReplyToComment(long id, long comment_id, CustomUserDetail user){
		Hotel hotel = hotels.findById(id).get();
		Comment comment = comments.findById(comment_id).get();
		return comment != null && user != null && comment.getStatus() 
				&& !comment.getIsAnswer() && hotel != null && hotel.getManager().getId() == user.getUser().getId();
	}
	
	public boolean canApproveBooking(long booking_id, CustomUserDetail user){
		Booking booking = bookings.findById(booking_id).get();
		return booking != null && user != null && booking.getHotel().getManager().getId() == user.getUser().getId();
	}
	public boolean canRemoveBooking(long booking_id, CustomUserDetail user){
		Booking booking = bookings.findById(booking_id).get();
		return booking != null && user != null 
				&& (booking.getHotel().getManager().getId() == user.getUser().getId()
				|| booking.getUser().getId() == user.getUser().getId());
		
	}

}
