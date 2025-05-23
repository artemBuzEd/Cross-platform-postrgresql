package com.artemBuzEd.eShop.security;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import java.io.IOException;

public class AuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {

        request.getSession(false).removeAttribute("SPRING_SECURITY_SAVED_REQUEST");
        boolean authenticated = authentication.getAuthorities().stream()
                .anyMatch(g -> g.getAuthority().equals("ROLE_ADMIN"));

        if (authenticated) {
            setDefaultTargetUrl("/settlements");
        } else{
            setDefaultTargetUrl("/home");
        }
        super.onAuthenticationSuccess(request, response, authentication);
    }
}
