package com.artemBuzEd.eShop.data;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "rooms")
@EqualsAndHashCode
public class Room {
    @Id
    @GeneratedValue
    private Long room_id;

    @Column(name = "roomnumber")
    private Integer roomNumber;

    private String comfort;

    private Integer capacity;

    private Integer price;
}
