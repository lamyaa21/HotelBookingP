package org.HotelBook.repository;

import org.HotelBook.model.Authority;
import org.springframework.data.repository.CrudRepository;

public interface AuthorityRepository extends CrudRepository<Authority, Long>{
	Authority findByRole(String role);

}
