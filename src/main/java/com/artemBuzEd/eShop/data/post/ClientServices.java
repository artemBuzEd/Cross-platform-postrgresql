package com.artemBuzEd.eShop.data.post;

import com.artemBuzEd.eShop.data.Client;
import com.artemBuzEd.eShop.repository.ClientRepository;
import com.artemBuzEd.eShop.repository.HotelUserRepository;
import com.artemBuzEd.eShop.security.AuthenticationUserInfoFacade;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

@Service
public class ClientServices {
    private final HotelUserRepository hotelUserRepository;
    private final ClientRepository clientRepository;
    private final AuthenticationUserInfoFacade authenticationUserInfo;

    public ClientServices(HotelUserRepository hotelUserRepository,
                          AuthenticationUserInfoFacade authenticationUserInfo,
                          ClientRepository clientRepository) {
        this.authenticationUserInfo = authenticationUserInfo;
        this.hotelUserRepository = hotelUserRepository;
        this.clientRepository = clientRepository;
    }

    public Client createNewClient(ClientRequest clientRequest) {
        var user = hotelUserRepository.findByUsername(authenticationUserInfo.getUsername());
        if(user.isPresent()) {
            var client = new Client();
            client.setName(clientRequest.name());
            client.setSurname(clientRequest.surname());
            client.setPassportData(clientRequest.passportData());
            var userGet = user.get();
            var savedClient = clientRepository.save(client);
            userGet.setClient(savedClient);
            hotelUserRepository.save(userGet);
            return savedClient;
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found");
        }
    }

    public Client editClient(EditClientRequest editClientRequest) {
        var oldClient = clientRepository.findById(editClientRequest.clientId());
        if(oldClient.isPresent()) {
            var client = oldClient.get();
            client.setName(editClientRequest.name());
            client.setSurname(editClientRequest.surname());
            client.setPassportData(editClientRequest.passportData());
            client.setComment(editClientRequest.comment());
            return clientRepository.save(client);
        } else{
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Client not found");
        }
    }

    public Client checkAndGetClientFromRepository(Long id) {
        if(clientRepository.findById(id).isPresent()) {
            return clientRepository.findById(id).get();
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Client not found");
        }
    }

    public void deleteClientFromRepository(DeleteClientRequest deleteClientRequest) {
        clientRepository.deleteById(deleteClientRequest.clientId());
    }
}
