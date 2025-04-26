package com.artemBuzEd.eShop.data;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "settlements")
@Setter
@Getter
@EqualsAndHashCode
public class Settlement {
    @Id
    @GeneratedValue
    private Long settlement_id;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client client;

    @ManyToOne
    @JoinColumn(name = "room_id")
    private Room room;

    @Column(name = "settlementdate")
    private LocalDate settlementDate;

    @Column(name = "settlementrelease")
    private LocalDate settlementRelease;



}
