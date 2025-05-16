package com.artemBuzEd.eShop.data.user;

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
        return null;
    }
}
