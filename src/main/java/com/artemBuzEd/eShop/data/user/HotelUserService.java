package com.artemBuzEd.eShop.data.user;

import com.artemBuzEd.eShop.data.Client;
import com.artemBuzEd.eShop.security.AuthenticationUserInfo;
import com.artemBuzEd.eShop.security.AuthenticationUserInfoFacade;
import com.artemBuzEd.eShop.security.Role;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class HotelUserService {
    private final HotelUserRepository hotelUserRepository;
    private final PasswordEncoder passwordEncoder;
    private final AuthenticationUserInfoFacade authenticationUserInfo;

    public HotelUserService(HotelUserRepository hotelUserRepository,
                            PasswordEncoder passwordEncoder,
                            AuthenticationUserInfoFacade authenticationUserInfo) {
        this.hotelUserRepository = hotelUserRepository;
        this.passwordEncoder = passwordEncoder;
        this.authenticationUserInfo = authenticationUserInfo;
    }

    public HotelUser signUp(HotelUserRequest hotelUserRequest) {
        var hotelUser = new HotelUser();
        hotelUser.setUsername(hotelUserRequest.username());
        hotelUser.setUser_password(passwordEncoder.encode(hotelUserRequest.password()));
        hotelUser.setUser_role(Role.USER.toString());
        var result = hotelUserRepository.save(hotelUser);
        return result;
    }

    public boolean doesUserHaveClient() {
        var user = hotelUserRepository.findByUsername(authenticationUserInfo.getUsername());
        if(user.isPresent()) {
            var checkClient = user.get();
            Client client = checkClient.getClient();
            if(client != null) {
                return true;
            }
        }
        return false;
    }

}
