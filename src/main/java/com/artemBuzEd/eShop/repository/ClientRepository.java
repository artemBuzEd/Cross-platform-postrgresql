package com.artemBuzEd.eShop.repository;

import com.artemBuzEd.eShop.data.Client;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ClientRepository extends CrudRepository<Client, Long> {
    @Query("SELECT c FROM Client c ORDER BY c.client_id DESC")
    List<Client> findAllClientsOrderByClientIdDesc();

    @Query("SELECT c FROM Client c ORDER BY c.client_id ASC")
    List<Client> findAllClientsOrderByClientIdAsc();

}
