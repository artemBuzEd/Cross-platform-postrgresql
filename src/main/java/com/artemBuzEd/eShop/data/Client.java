package com.artemBuzEd.eShop.data;

import jakarta.persistence.*;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name = "clients")
@Getter
@Setter
@EqualsAndHashCode
@ToString
public class Client {

    @Id
    @GeneratedValue
    private Long client_id;

    @Column(name = "name")
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "passportdata")
    private String passportData;

    private String comment;
}
