package web.date1910.controller;

import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import web.date1910.dto.User;
import web.date1910.service.TaskService;
import web.date1910.service.UsuarioService;

@Controller
public class UsuarioController {

    @Autowired
    private UsuarioService usuarioService;
    
    @Autowired
    private TaskService taskService;

    @RequestMapping({"/", "login"})
    public String login() {
        return "login";
    }

    @RequestMapping("loginAccion")
    public ModelAndView loginAccion(User usuario) {

        ModelAndView rpta;
        User validado = usuarioService.validar(usuario);

        if (validado != null) {
            if (validado.getNombre() != "Vacio") {
                rpta = new ModelAndView("usuarioLista", "lista",  taskService.listarTareas());
            } else {
                rpta = new ModelAndView("login", "mensaje", "Completa los campos");
            }
        } else {
            rpta = new ModelAndView("login", "mensaje", "Credenciales Invalidas");
        }
        return rpta;
    }
}
