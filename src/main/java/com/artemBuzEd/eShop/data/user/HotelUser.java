package com.artemBuzEd.eShop.data.user;

import com.artemBuzEd.eShop.data.Client;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name ="hotel_users")
@Getter
@Setter
public class HotelUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long user_id;

    private String username;

    private String user_password;

    private String user_role;

    @OneToOne
    @JoinColumn(name = "client_id")
    private Client client;
}
