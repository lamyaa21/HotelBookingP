package org.HotelBook.repository;

import org.HotelBook.model.Category;
import org.springframework.data.repository.CrudRepository;

public interface CategoryRepository extends CrudRepository<Category, Long>{
	
	Category findByName(String name);

}
