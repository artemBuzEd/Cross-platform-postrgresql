package com.artemBuzEd.eShop.data.user;

import org.springframework.stereotype.Repository;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

@Repository
public interface HotelUserRepository extends CrudRepository<HotelUser, Long> {
    Optional<HotelUser> findByUsername(String username);
}
