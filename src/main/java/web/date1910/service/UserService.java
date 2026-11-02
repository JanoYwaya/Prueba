package web.date1910.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.date1910.model.User;
import web.date1910.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User validar(User usuario) {
        return userRepository.validarLogin(usuario);
    }
}
