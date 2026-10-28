package web.date1910.dto;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class Eventos {

    private String hora;
    private String evento;
    private String metodo;
    private Double tiempo;

    public Eventos() {
    }

    public Eventos(String hora, String evento, String metodo, Double tiempo) {
        this.hora = hora;
        this.evento = evento;
        this.metodo = metodo;
        this.tiempo = tiempo;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getEvento() {
        return evento;
    }

    public void setEvento(String evento) {
        this.evento = evento;
    }

    public String getMetodo() {
        return metodo;
    }

    public void setMetodo(String metodo) {
        this.metodo = metodo;
    }

    public Double getTiempo() {
        return tiempo;
    }

    public void setTiempo(Double tiempo) {
        this.tiempo = tiempo;
    }

    public String formatearHora(LocalDateTime hora) {
        if (hora == null) {
            return "";
        }
        DateTimeFormatter formatear = DateTimeFormatter.ofPattern("HH:mm:ss - dd/MM/yyyy");
        return hora.format(formatear);
    }

}
