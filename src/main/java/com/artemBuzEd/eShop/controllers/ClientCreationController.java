package com.artemBuzEd.eShop.controllers;

import com.artemBuzEd.eShop.data.post.ClientRepository;
import com.artemBuzEd.eShop.data.post.ClientRequest;
import com.artemBuzEd.eShop.data.post.ClientServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ClientCreationController {

    private final ClientServices clientServices;

    public ClientCreationController(ClientServices clientServices) {
        this.clientServices = clientServices;
    }

    @GetMapping("/creatingClient")
    public String createClient(Model model) {
        return "creatingClient";
    }

    @PostMapping("/home/creationClient")
    public String createClient(@ModelAttribute ClientRequest clientRequest, RedirectAttributes redirectAttributes) {
        try {
        clientServices.createNewClient(clientRequest);
            redirectAttributes.addFlashAttribute("successMessage", "Client created successfully!");
            return "redirect:/home";
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("Error", e.getMessage());
            return "redirect:/creatingClient";
        }
    }
}
