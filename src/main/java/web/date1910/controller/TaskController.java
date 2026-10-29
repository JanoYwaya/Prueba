package web.date1910.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import web.date1910.dto.Task;
import web.date1910.service.TaskService;

@Controller
public class TaskController {

    @Autowired
    TaskService taskService;

    @RequestMapping("salir")
    public ModelAndView salir(){
        return new ModelAndView("login");
    }
    
    @RequestMapping("listarTareas")
    public ModelAndView listarTareas() {
        return new ModelAndView("taskLista", "lista", taskService.listarTareas());
    }

    @RequestMapping("insertarTarea")
    public ModelAndView insertarTarea(@RequestParam(value = "status", required = false) Integer status) {
        Task tarea=new Task();
        if(status==null){
            tarea.setStatus(null);
        }else{
            tarea.setStatus(status);
        }
        return new ModelAndView("nuevoTask", "tareaBean", tarea);
    }

    @RequestMapping("grabarOperacion")
    public ModelAndView grabarOperacion(@ModelAttribute("tareaBean") Task tarea, BindingResult result) {

        if (result.hasErrors()) {
            System.out.println("Errores: " + result.getAllErrors());
        } else {
            if (taskService.encontrarTarea(tarea.getId())==null) {
                taskService.insertarTarea(tarea);
            } else {
                taskService.editarTarea(tarea);
            }
        }
        return new ModelAndView("taskLista", "lista", taskService.listarTareas());
    }

    @RequestMapping("eliminarTarea")
    public ModelAndView eliminarTarea(@RequestParam("id") Integer id) {
        taskService.eliminarTarea(id);
        return new ModelAndView("taskLista", "lista", taskService.listarTareas());
    }

    @RequestMapping("encontrarTarea")
    public ModelAndView encontrarTarea(@RequestParam("id") Integer id) {
        return new ModelAndView("nuevoTask", "tareaBean", taskService.encontrarTarea(id));
    }

}
