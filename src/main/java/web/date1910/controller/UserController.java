package web.date1910.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web.date1910.dto.User;
import web.date1910.service.TaskService;
import web.date1910.service.UserService;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private TaskService taskService;

    @RequestMapping({"/", "login"})
    public String login() {
        return "login";
    }

    @RequestMapping("loginAccion")
    public ModelAndView loginAccion(User usuario) {

        ModelAndView rpta;
        User validado = userService.validar(usuario);

        if (validado != null) {
            if (validado.getNombre() != "Vacio") {
                rpta = new ModelAndView("taskLista", "lista",  taskService.listarTareas());
            } else {
                rpta = new ModelAndView("login", "mensaje", "Completa los campos");
            }
        } else {
            rpta = new ModelAndView("login", "mensaje", "Credenciales Invalidas");
        }
        return rpta;
    }
}
