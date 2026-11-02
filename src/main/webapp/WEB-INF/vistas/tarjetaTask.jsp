<%@page import="web.date1910.model.Task"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>
        
        <title>Tarjeta</title>
    </head>
    <body>
        <main>
            <% List<Task> miLista = (List<Task>) request.getAttribute("lista");%>
            <section>
                <div class="flex-column shadow border p-4 bg-white" style="width: 500px">
                    <h4 class="text-secondary fw-bold m-0 opacity-50"><%=request.getParameter("Titulo")%></h4>
                    <%Integer status=Integer.parseInt(request.getParameter("Condicion"));%>
                    <% for (Task t : miLista) {%>
                    <% if (t.getStatus() == status) {%>
                    <div class="card mt-4 border border-2 bg-white p-2">
                        <div class="card-header bg-white border-0 d-flex align-items-center justify-content-between">
                            <p class="<%=request.getParameter("Color")%> rounded-5 text-white fw-bold p-3 mb-0"><span><%=t.getTitle()%></span></p>
                            <div>
                                <a href="eliminarTarea?id=<%=t.getId()%>" class="btn btn-outline-dark" style="height: 40px" title="Eliminar"><i class="bi bi-trash"></i></a>
                                <a href="encontrarTarea?id=<%=t.getId()%>" class="btn btn-outline-secondary" style="height: 40px" title="Editar"><i class="bi bi-card-list"></i></a>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="fw-bold mb-0"><%=t.getDescription()%></p>
                        </div>
                        <div class="card-footer bg-white border-0 text-end">
                            <span class="text-secondary fw-bold text-end">Avance <%=t.getStatus()%> %</span>
                        </div>
                    </div>

                    <% }%>
                    <% }%>

                    <div class="mt-4">
                        <a href="insertarTarea?status=<%=status%>" class="btn">
                            <span class="text-secondary">
                                <i class="bi bi-plus-lg"></i>Agregar Tarea
                            </span>
                        </a>
                    </div>
                </div>
            </section>
        </main>
    </body>
</html>
