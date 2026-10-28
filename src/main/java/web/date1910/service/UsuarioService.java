package web.date1910.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.date1910.dto.User;
import web.date1910.repository.UsuarioDAO;

@Service
public class UsuarioService {

    @Autowired
    private UsuarioDAO usuarioDAO;

    public User validar(User usuario) {

        return usuarioDAO.validarLogin(usuario);
    }

    public void insertarUsuario(User usuario) {
        usuarioDAO.insertarUsuario(usuario);
    }

    public List<User> obtenerUsuarios() {
        return usuarioDAO.listarUsuario();
    }

    public void eliminarUsuario(String usuario) {
        usuarioDAO.eliminarUsuario(usuario);
    }

    public User encontrarUsuario(String usuario) {

        return usuarioDAO.encontrarUsuario(usuario);
    }
    
    public void editarUsuario(User usuario){
        usuarioDAO.editarUsuario(usuario);
    }

}
