package org.HotelBook.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;

import org.HotelBook.model.Booking;
import org.HotelBook.model.Hotel;
import org.HotelBook.model.Room;
import org.HotelBook.repository.BookingRepository;
import org.HotelBook.repository.HotelRepository;
import org.HotelBook.repository.RoomRepository;
import org.HotelBook.repository.RoomTypeRepository;
import org.HotelBook.security.AllowedForManageHotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/hotels")
public class RoomController {
	
	 @Autowired
	    HotelRepository hotels;
	    
	    @Autowired
	    RoomTypeRepository roomTypes;
	    
	    @Autowired
	    RoomRepository rooms;
	    
	    @Autowired
	    BookingRepository bookings;
	    
	    // GET  /hotels/{id}/rooms/new - the form to fill the data for a new room
	    @RequestMapping(value="{id}/rooms/new", method=RequestMethod.GET)
	    @AllowedForManageHotel
	    public String newRoom(@PathVariable("id") long id, Model model) {
	    	Room r = new Room();    	
	    	model.addAttribute("hotel", hotels.findById(id));
	    	model.addAttribute("room", r);
	    	model.addAttribute("roomTypes", roomTypes.findAll());
	    	return "rooms/create";
	    }
	    
	    // POST /hotels/{id}/rooms/ - creates a new room
	    @RequestMapping(value="{id}/rooms", method=RequestMethod.POST)
	    @AllowedForManageHotel
	    public String saveRoom(@PathVariable("id") long id, @ModelAttribute Room room, Model model) {  
	    	Hotel hotel = hotels.findById(id).get();    	
	    	room.setHotel(hotel);    	
	    	rooms.save(room);
	    	return "redirect:/hotels/"+id+"/rooms";
	    }
	    
	    // GET  /hotels/{id}/rooms/ - show the list of rooms of the hotel
	    @RequestMapping(value="{id}/rooms", method=RequestMethod.GET)
	    @AllowedForManageHotel
	    public String showRooms(@PathVariable("id") long id, Model model) {
	    	Hotel hotel = hotels.findById(id).get();
	    	Map<Long, Room> hotel_rooms = hotel.getRooms();
	    	Map<Integer, Room> rooms = new HashMap<Integer, Room>();
	    	
	    	for(Long entry : hotel_rooms.keySet()){
	    		Room r = hotel_rooms.get(entry);
	    		rooms.put(Integer.parseInt(r.getRoom_number()), r);
	    	}
	    	List<Room> orderedRooms = new ArrayList<Room>();
	    	SortedSet<Integer> orderedSet = new TreeSet<Integer>(rooms.keySet());
	    	for(Integer key : orderedSet)
	    		orderedRooms.add(rooms.get(key));
	    	
	    	model.addAttribute("hotel", hotel);
	    	model.addAttribute("orderedRooms",orderedRooms);
	    	return "rooms/hotel-rooms";
	    }
	    
	    // GET /hotels/{id}/rooms/{id_room}/edit - shows the form to edit a room
	    @RequestMapping(value="{id}/rooms/{id_room}/edit", method=RequestMethod.GET)
	    @AllowedForManageHotel
	    public String editRoom(@PathVariable("id") long id, @PathVariable("id_room") long id_room, Model model) {    	
	    	Hotel hotel = hotels.findById(id).get();
	    	model.addAttribute("hotel", hotel);
	    	model.addAttribute("room", hotel.getRooms().get(id_room));
	    	model.addAttribute("roomTypes", roomTypes.findAll()); 
	    	return "rooms/edit";
	    }
	    
	    @RequestMapping(value="{id}/rooms/{id_room}/remove", method=RequestMethod.GET)
	    @AllowedForManageHotel
	    public String removeRoom(@PathVariable("id") long id, @PathVariable("id_room") long id_room, Model model)
	    {    	
	    	Hotel hotel = hotels.findById(id).get();
	    	
	    	for(Booking b : rooms.findById(id_room).get().getBookings())
	    	{
	    		bookings.delete(b);
	    	}
	    	
	    	rooms.deleteById(id_room);
	    	model.addAttribute("hotel", hotel);
			return "redirect:/hotels/{id}/rooms";	
	    }
	

}
