package org.HotelBook.repository;

import org.HotelBook.model.Hotel;
import org.springframework.data.repository.CrudRepository;

public interface HotelRepository extends CrudRepository<Hotel, Long>{
      
	Hotel findByName(String name);

	
}
