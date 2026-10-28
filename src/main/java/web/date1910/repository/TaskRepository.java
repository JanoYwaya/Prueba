package web.date1910.repository;

import jakarta.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import web.date1910.dto.Task;

@Repository
public class TaskRepository {

    private List<Task> tareas;

    @PostConstruct
    private void init() {
        tareas = new ArrayList<>();

        tareas.add(new Task(1, "Implementar Spring Security", "Configurar autenticación y autorización en el proyecto con Spring Security", 0));
        tareas.add(new Task(2, "Diseñar vistas con Thymeleaf", "Crear las plantillas HTML en WEB-INF/templates utilizando expresiones de Thymeleaf y Bootstrap", 0));
        tareas.add(new Task(3, "Desarrollar Capa de Servicios", "Implementar las clases @Service con la lógica de negocio y comunicación con la base de datos", 50));
        tareas.add(new Task(4, "Configurar Subida de Archivos", "Gestionar el envío de archivos adjuntos mediante MultipartResolver y controladores de Spring", 100));
    }

    public List<Task> getTareas() {
        return tareas;
    }

    public void insertar(Task tarea) {
        tareas.add(tarea);
    }

    public Task encontrar(Integer id) {

        Task objeto = null;

        for (int i = 0; i < tareas.size(); i++) {
            if (id.equals(tareas.get(i).getId())) {
                objeto = tareas.get(i);
                break;
            }
        }

        return objeto;
    }

    public void eliminar(Integer id) {

        Task eliminar = encontrar(id);

        if (eliminar != null) {
            tareas.remove(eliminar);
        }

    }

    public void editar(Task objeto) {

        Task editar = encontrar(objeto.getId());

        if (editar != null) {
            editar.setDescription(objeto.getDescription());
            editar.setTitle(objeto.getTitle());
            editar.setStatus(objeto.getStatus());
        }

    }

}
