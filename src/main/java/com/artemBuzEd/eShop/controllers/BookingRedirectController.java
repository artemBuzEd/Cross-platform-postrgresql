package com.artemBuzEd.eShop.controllers;

import com.artemBuzEd.eShop.data.user.HotelUser;
import com.artemBuzEd.eShop.data.user.HotelUserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingRedirectController {
    private final HotelUserService hotelUserService;
    public BookingRedirectController(HotelUserService hotelUserService) {
        this.hotelUserService = hotelUserService;
    }

    @GetMapping("/booking")
    public String booking(Model model) {
        if(hotelUserService.doesUserHaveClient()){
            return "redirect:/home";
        } else{
            return "redirect:/creatingClient";
        }
    }
}
