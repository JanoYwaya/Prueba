package web.date1910.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.date1910.dto.Task;
import web.date1910.repository.TaskRepository;

@Service
public class TaskService {

    @Autowired
    private TaskRepository taskRepository;

    public List<Task> listarTareas() {
        return taskRepository.getTareas();
    }

    public void insertarTarea(Task tarea) {
        taskRepository.insertar(tarea);
    }
    
    public Task encontrarTarea(Integer id){
        return taskRepository.encontrar(id);
    }
    public void eliminarTarea(Integer id){
        taskRepository.eliminar(id);
    }
    
    public void editarTarea(Task tarea){
        taskRepository.editar(tarea);
    }
}
