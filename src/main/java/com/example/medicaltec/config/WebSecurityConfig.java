package com.example.medicaltec.config;

import com.example.medicaltec.repository.UsuarioRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.DefaultSavedRequest;

import javax.sql.DataSource;
import java.io.IOException;

@Configuration
public class WebSecurityConfig {

    final UsuarioRepository usuarioRepository;
    final DataSource dataSource;
    private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    public WebSecurityConfig(UsuarioRepository usuarioRepository, DataSource dataSource){
        this.usuarioRepository = usuarioRepository;
        this.dataSource=dataSource;
    }

    @Bean
    public PasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    public UserDetailsManager users(DataSource dataSource){
        JdbcUserDetailsManager users = new JdbcUserDetailsManager(dataSource);
        String sql1 = "select email, contrasena, enabled from usuario where email= ?";
        String sql2 = "select u.email, r.nombre_rol from usuario u inner join roles r on (u.roles_idroles=r.idroles) where u.email=? and u.enabled=1";
        users.setUsersByUsernameQuery(sql1);
        users.setAuthoritiesByUsernameQuery(sql2);
        return users;
    }
    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
        http.formLogin().loginPage("/loginA").loginProcessingUrl("/login").successHandler(new AuthenticationSuccessHandler() {
            @Override
            public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
                DefaultSavedRequest defaultSavedRequest =
                        (DefaultSavedRequest) request.getSession().getAttribute("SPRING_SECURITY_SAVED_REQUEST");

                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("usuario", usuarioRepository.findByEmail(authentication.getName()));

                if (defaultSavedRequest != null) {
                    String targetURL = defaultSavedRequest.getRedirectUrl();
                    redirectStrategy.sendRedirect(request, response, targetURL);
                } else {
                    String rol = "";
                    for (GrantedAuthority role : authentication.getAuthorities()) {
                        rol = role.getAuthority();
                        break;
                    }
                    switch (rol) {
                        case "paciente" -> response.sendRedirect("/paciente/principal");
                        case "administrativo" -> response.sendRedirect("/administrativo/dashboard");
                        case "administrador" -> response.sendRedirect("/administrador/principal");
                        case "doctor" -> response.sendRedirect("/doctor/principal");
                        case "superadmin" -> response.sendRedirect("/superAdmin/dashboard");
                    }
                }
            }
        });
        http.authorizeHttpRequests().requestMatchers("/paciente", "/paciente/**").hasAnyAuthority("paciente")
                .requestMatchers("/administrativo", "/administrativo/**").hasAnyAuthority("administrativo")
                .requestMatchers("/administrador", "/administrador/**").hasAnyAuthority("administrador")
                .requestMatchers("/doctor", "/doctor/**").hasAnyAuthority("doctor")
                .requestMatchers("/superAdmin", "/superAdmin/**").hasAnyAuthority("superadmin")
                .anyRequest().permitAll();
        System.out.println(new BCryptPasswordEncoder().encode("Julio"));
        http.logout().logoutSuccessUrl("/").deleteCookies("JSESSIONID").invalidateHttpSession(true);
        return http.build();
    }
}
