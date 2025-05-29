package com.artemBuzEd.eShop.data.user;

import com.artemBuzEd.eShop.repository.HotelUserRepository;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class HotelUserDetailsService implements UserDetailsService {
    private final HotelUserRepository hotelUserRepository;

    public HotelUserDetailsService(HotelUserRepository hotelUserRepository) {
        this.hotelUserRepository = hotelUserRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        var hotelUser = hotelUserRepository.findByUsername(username);
        if(hotelUser.isPresent()) {
            var user = hotelUser.get();
            return User.builder().username(user.getUsername())
                    .password(user.getUser_password())
                    .roles(user.getUser_role())
                    .build();
        }
        else {
            throw new UsernameNotFoundException(username);
        }
    }
}
