package web.date1910.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SaludoController {

    @RequestMapping("saludo")
    public ModelAndView saludo() {
        ModelAndView rpta = new ModelAndView("saludo", "otroMensaje", "Mi mensaje desde el controller");

        return rpta;
    }
//    @RequestMapping("saludo")
//    public String saludo(Model modelo) {
//
//        modelo.addAttribute("otroMensaje", "Bienvido y testeando con los controllers");
//        return "saludo";
//    }
}
