package web.date1910.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import web.date1910.service.EventosService;
import web.date1910.service.TaskService;

@Controller
public class AuditoriaController {

    @Autowired
    EventosService eventoService;
    
    @Autowired
    TaskService taskService;

    @RequestMapping("listarEventos")
    public ModelAndView listarEventos() {
        return new ModelAndView("auditoria", "lista", eventoService.listarEventos());
    }
    
    @RequestMapping("regresar")
    public ModelAndView regresar() {
        return new ModelAndView("taskLista","lista",taskService.listarTareas());
    }
}
