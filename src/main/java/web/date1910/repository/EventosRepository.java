package web.date1910.repository;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import web.date1910.dto.Eventos;

@Repository
public class EventosRepository {
    
    List<Eventos> operaciones=new ArrayList<>();
    
    public void insertar(Eventos event){
        operaciones.add(event);
    }

    public List<Eventos> getOperaciones() {
        return operaciones;
    }
       
}
