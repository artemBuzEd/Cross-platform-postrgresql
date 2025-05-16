package com.artemBuzEd.eShop.data.user;

import com.artemBuzEd.eShop.security.Role;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class HotelUserService {
    private final HotelUserRepository hotelUserRepository;
    private final PasswordEncoder passwordEncoder;

    public HotelUserService(HotelUserRepository hotelUserRepository, PasswordEncoder passwordEncoder) {
        this.hotelUserRepository = hotelUserRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public HotelUser signUp(HotelUserRequest hotelUserRequest) {
        var hotelUser = new HotelUser();
        hotelUser.setUsername(hotelUserRequest.username());
        hotelUser.setUser_password(passwordEncoder.encode(hotelUserRequest.password()));
        hotelUser.setUser_role(Role.USER.toString());
        var result = hotelUserRepository.save(hotelUser);
        return result;
    }

}
