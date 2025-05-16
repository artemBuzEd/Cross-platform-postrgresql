package com.artemBuzEd.eShop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;

@Controller
public class SignUpController {
    @GetMapping("/signup")
    public String signUp(Model model) {
        return "signup";
    }
}
