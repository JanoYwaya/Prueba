package web.date1910.repository;

import jakarta.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import web.date1910.model.User;

@Repository
public class UserRepository {

    private List<User> lista;

    @PostConstruct
    private void init() {
        lista = new ArrayList<>();
        lista.add(new User("admin", "1234", "Jano Ywaya"));
    }

    public List<User> getLista() {
        return lista;
    }

    public User validarLogin(User usuario) {
        if (usuario.getUser().equalsIgnoreCase("admin") && usuario.getPassword().equals("1234")) {
            usuario.setNombre("Jano Ywaya");
        } else if (usuario.getUser().isEmpty() || usuario.getPassword().isEmpty()) {
            usuario.setNombre("Vacio");
        } else {
            usuario = null;
        }

        return usuario;
    }
}
