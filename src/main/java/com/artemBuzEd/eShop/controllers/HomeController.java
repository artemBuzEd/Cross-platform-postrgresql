package com.artemBuzEd.eShop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;

@Controller
public class HomeController {
    @GetMapping("/home")
    public String home(@ModelAttribute("successMessage") String successMessage,
                       @ModelAttribute("errorMessage") String errorMessage,
                       Model model) {
        model.addAttribute("successMessage", successMessage);
        model.addAttribute("errorMessage", errorMessage);
        return "home";
    }

}
