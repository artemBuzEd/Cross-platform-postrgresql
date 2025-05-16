package com.artemBuzEd.eShop.controllers;

import com.artemBuzEd.eShop.data.user.HotelUser;
import com.artemBuzEd.eShop.data.user.HotelUserRequest;
import com.artemBuzEd.eShop.data.user.HotelUserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SignUpRestController {
    private final HotelUserService hotelUserService;

    public SignUpRestController(HotelUserService hotelUserService) {
        this.hotelUserService = hotelUserService;
    }

    @PostMapping("/signup")
    public HotelUser signUpNewUser(@RequestBody HotelUserRequest user){
        return hotelUserService.signUp(user);
    }
}
