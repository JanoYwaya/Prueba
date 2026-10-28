package web.date1910.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import web.date1910.dto.Eventos;
import web.date1910.repository.EventosRepository;

@Service
public class EventosService {

    @Autowired
    private EventosRepository eventosRepository;

    public void insertarEvento(Eventos evento) {
        eventosRepository.insertar(evento);
    }

    public List<Eventos> listarEventos() {
        return eventosRepository.getOperaciones();
    }
}
