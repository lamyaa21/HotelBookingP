package org.HotelBook.model;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
public class Comment {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	private String text;
	private Date date;
	private boolean status;
	private boolean isAnswer;
	
	
	@OneToOne
	private Comment reply;
	
	@JsonBackReference
	@ManyToOne
	private Hotel hotel;
	
	
	@JsonBackReference
	@ManyToOne
	private User user;


	public Comment() {
		
	}


	public Comment(String text, Date date, boolean status, Hotel hotel, User user) {
		super();
		this.text = text;
		this.date = date;
		this.status = status;
		this.hotel = hotel;
		this.user = user;
		this.isAnswer= false;
	}


	public long getId() {
		return id;
	}


	public void setId(long id) {
		this.id = id;
	}


	public String getText() {
		return text;
	}


	public void setText(String text) {
		this.text = text;
	}


	public Date getDate() {
		return date;
	}


	public void setDate(Date date) {
		this.date = date;
	}


	


	public void setStatus(boolean status) {
		this.status = status;
	}


	public boolean getIsAnswer() {
		return isAnswer;
	}


	public void setAnswer(boolean isAnswer) {
		this.isAnswer = isAnswer;
	}


	public Comment getReply() {
		return reply;
	}


	public void setReply(Comment reply) {
		this.reply = reply;
	}


	public Hotel getHotel() {
		return hotel;
	}


	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public boolean getStatus() {
		// TODO Auto-generated method stub
		return status;
	}


	
	
	
	
	
	
	
	

}
