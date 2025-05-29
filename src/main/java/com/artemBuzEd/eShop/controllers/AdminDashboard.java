package com.artemBuzEd.eShop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminDashboard {
    @GetMapping("/adminDashboard")
    public String adminDashboard() {
        return "adminDashboard";
    }
}
