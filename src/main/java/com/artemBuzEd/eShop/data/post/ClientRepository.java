package com.artemBuzEd.eShop.data.post;

import com.artemBuzEd.eShop.data.Client;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepository extends CrudRepository<Client, Long> {

}
