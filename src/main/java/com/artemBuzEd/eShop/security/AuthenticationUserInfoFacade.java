package com.artemBuzEd.eShop.security;

public interface AuthenticationUserInfoFacade {
    boolean isAuthenticated();
    boolean isAdmin();
    String getUsername();
}
