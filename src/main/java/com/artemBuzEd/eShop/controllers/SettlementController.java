package com.artemBuzEd.eShop.controllers;
import com.artemBuzEd.eShop.repository.SettlementRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SettlementController {
    private final SettlementRepository settlementRepository;

    public SettlementController(SettlementRepository settlementRepository) {
        this.settlementRepository = settlementRepository;
    }

    @GetMapping("/settlements")
    public String showSettlements(Model model) {
        var settlements = settlementRepository.findAll();
        model.addAttribute("settlements", settlements);
        return "settlements";
    }
}
