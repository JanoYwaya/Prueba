<%@page import="web.date1910.dto.Eventos"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="d-flex">
            <h1>Auditoria</h1>
            <a href="regresar" class="btn ms-auto">
                <i class="bi bi-box-arrow-left"></i>
            </a>
        </div>


        <% List<Eventos> miLista = (List<Eventos>) request.getAttribute("lista"); %>
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>Hora</th>
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
</body>
</html>
