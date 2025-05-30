package com.artemBuzEd.eShop.controllers;

import com.artemBuzEd.eShop.data.Client;
import com.artemBuzEd.eShop.data.post.ClientServices;
import com.artemBuzEd.eShop.data.post.DeleteClientRequest;
import com.artemBuzEd.eShop.data.post.EditClientRequest;
import com.artemBuzEd.eShop.repository.ClientRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class ClientListController {
    private final ClientRepository clientRepository;
    private final ClientServices clientServices;

    public ClientListController(ClientRepository clientRepository, ClientServices clientServices) {
        this.clientRepository = clientRepository;
        this.clientServices = clientServices;
    }

    @GetMapping("/clients/list")
    public String clientsList(Model model, @RequestParam(name = "direction", defaultValue = "asc") String direction)  {
        if (direction.equalsIgnoreCase("asc")) {
            model.addAttribute("clients", clientRepository.findAllClientsOrderByClientIdAsc());
            model.addAttribute("nextDirection", "desc");
        } else {
            model.addAttribute("clients", clientRepository.findAllClientsOrderByClientIdDesc());
            model.addAttribute("nextDirection", "asc");
        }
        return "clients";
    }

    @GetMapping("/clients/edit")
    public String showEditClient(@RequestParam Long id, Model model) {
        model.addAttribute("client", clientServices.checkAndGetClientFromRepository(id));
        return "editClient";
    }

    @PostMapping("/clients/edit")
    public String editClient(@ModelAttribute EditClientRequest editClientRequest, Model model) {
        model.addAttribute("client", clientRepository.findById(editClientRequest.clientId()).get());
        clientServices.editClient(editClientRequest);
        return "redirect:/clients/list";
    }

    @PostMapping("/clients/delete")
    public String deleteClient(@ModelAttribute DeleteClientRequest deleteClientRequest) {
        clientServices.deleteClientFromRepository(deleteClientRequest);
        return "redirect:/clients/list";
    }

    @GetMapping("/clients/list/search")
    public String searchClient(@RequestParam(name = "searchTerm") String searchTerm, Model model) {
        List<Client> results = clientRepository.findClientBySearchTerm(searchTerm);
        model.addAttribute("clients", results);
        model.addAttribute("searchTerm", searchTerm);
        return "clients";
    }
}
