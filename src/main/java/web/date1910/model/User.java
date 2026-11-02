package web.date1910.model;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

public class User {

    @Size(min = 3, max = 10)
    private String user;
    @NotNull
    @NotBlank
    private String password;
    private String nombre;

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public User() {
    }

    public User(String user, String password, String nombre) {
        this.user = user;
        this.password = password;
        this.nombre = nombre;
    }

}
