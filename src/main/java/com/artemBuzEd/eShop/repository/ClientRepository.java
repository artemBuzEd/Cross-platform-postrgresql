package com.artemBuzEd.eShop.repository;

import com.artemBuzEd.eShop.data.Client;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepository extends CrudRepository<Client, Long> {

}
