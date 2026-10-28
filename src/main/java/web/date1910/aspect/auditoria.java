package web.date1910.aspect;

import java.time.LocalDateTime;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import web.date1910.dto.Eventos;
import web.date1910.repository.EventosRepository;

@Aspect
@Component
public class auditoria {

    @Autowired
    private EventosRepository eventosRepository;

    @Pointcut("execution(* web.date1910.service.*.*(..))")
    public void beans() {

    }

    @Before("beans()")
    public void antesCompilacion(JoinPoint p) {
        String texto = String.valueOf(p.getSignature());
        String momento = "Antes de la Ejecucion: ";

        Eventos evento = new Eventos();
        LocalDateTime hora = LocalDateTime.now();
        evento.setHora(evento.formatearHora(hora));
        evento.setMetodo(momento);
        evento.setEvento(p.getSignature().toString());

        eventosRepository.insertar(evento);

        System.out.println(momento + texto);
    }

    @Before("beans()")
    public void despuesCompilacion(JoinPoint p) {
        String texto = String.valueOf(p.getSignature());

        String momento = "Despues de la Ejecucion: ";

        Eventos evento = new Eventos();
        LocalDateTime hora = LocalDateTime.now();
        evento.setHora(evento.formatearHora(hora));
        evento.setMetodo(momento);
        evento.setEvento(p.getSignature().toString());

        eventosRepository.insertar(evento);

        System.out.println(momento + texto);
    }

    @Around("beans()")
    public Object medirTiempos(ProceedingJoinPoint point) throws Throwable {
        long inicio = System.nanoTime();

        try {
            return point.proceed();
        } finally {
            long fin = System.nanoTime();
            double tiempo = (fin - inicio) / 1000000D;
            String momento = "Tiempo de Compilacion: ";

            Eventos evento = new Eventos();
            LocalDateTime hora = LocalDateTime.now();
            evento.setHora(evento.formatearHora(hora));
            evento.setMetodo(momento);
            evento.setEvento(point.getSignature().toString());
            evento.setTiempo(tiempo);

            eventosRepository.insertar(evento);

            System.out.println(momento + tiempo);

        }
    }

}
