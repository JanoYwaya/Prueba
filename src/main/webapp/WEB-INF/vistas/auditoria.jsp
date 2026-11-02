<%@page import="web.date1910.model.Eventos"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>
        <title>Auditoria</title>
    </head>
    <body>
        <main>
            <section>
                <% List<Eventos> miLista = (List<Eventos>) request.getAttribute("lista"); %>

                <header class="d-flex bg-secondary text-white p-3 align-items-center">
                    <h1 class="ms-4">Auditoria</h1>
                    <a href="regresar" class="btn ms-auto fs-2 fw-bold" title="Regresar">
                        <i class="bi bi-box-arrow-left"></i>
                    </a>
                </header>

                <div class="container-fluid p-5">
                    <table class="table table-hover table-bordered text-center shadow">
                        <thead>
                            <tr>
                                <th>Hora-Dia</th>
                                <th>Evento</th>
                                <th>Metodo</th>
                                <th>Tiempo</th>
                            </tr>
                        <tbody>
                            <% for (Eventos e : miLista) {%>
                            <tr>
                                <td>
                                    <%=e.getHora()%>
                                </td>
                                <td>
                                    <%=e.getMetodo()%>
                                </td>
                                <td>
                                    <%=e.getEvento()%>
                                </td>
                                <td>
                                    <% if (e.getTiempo() == null) { %>
                                    <span>---</span>
                                    <%} else {%>
                                    <%=e.getTiempo()%> s
                                    <%}%>
                                </td>
                            </tr>
                            <% }%>
                        </tbody>
                        </thead>
                    </table>
                </div>
            </section>
        </main>




    </body>
</html>
