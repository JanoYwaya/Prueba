  <%@page import="web.date1910.dto.Task"%>
<%@page import="web.date1910.dto.User"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>

        <title>Mantenimiento Usuarios</title>
    </head>
    <body>
        <main>
            <section class="row m-0">
                <div class="container-fluid bg-white p-0">
                    <header class="d-flex bg-secondary text-white p-3 align-items-center">
                        <i class="bi bi-person-circle fs-1"></i>
                        <h1 class="ms-4">Administrador</h1>
                        <a href="listarEventos" class="text-decoration-none text-white ms-5 fw-bold">Auditoria</a>
                        <a href="insertarTarea" class="text-decoration-none text-white ms-5 fw-bold">Agregar Tarea</a>
                        <a href="salir" class="btn btn-light text-end ms-auto">
                            <i class="bi bi-door-open"></i>
                        </a>
                    </header>

                    <% List<Task> miLista = (List<Task>) request.getAttribute("lista");%>

                    <div>
                        Registros: <%=miLista.size()%>
                    </div>

                    <div class="d-flex me-0 gap-5 p-5  justify-content-between">
                        <div class="flex-column shadow border p-4" style="width: 500px">
                            <h4 class="text-secondary fw-bold m-0 opacity-50">Por hacer</h4>
                            <% for (Task t : miLista) {%>
                            <% if (t.getStatus() == 0) {%>
                            <div class="card mt-4 border border-2 bg-white p-2">
                                <div class="card-header bg-white border-0 d-flex align-items-center justify-content-between">
                                    <p class="bg-danger rounded-5 text-white fw-bold p-3 mb-0"><span><%=t.getTitle()%></span></p>
                                    <div>
                                        <a href="eliminarTarea?id=<%=t.getId()%>" class="btn btn-outline-dark" style="height: 40px"><i class="bi bi-trash"></i></a>
                                        <a href="encontrarTarea?id=<%=t.getId()%>" class="btn btn-outline-secondary" style="height: 40px"><i class="bi bi-card-list"></i></a>
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
                                <a href="insertarTarea?status=0" class="btn">
                                    <span class="text-secondary">
                                        <i class="bi bi-plus-lg"></i>Agregar Tarea
                                    </span>
                                </a>
                            </div>


                        </div>

                        <div class="flex-column shadow border p-4" style="width: 500px">
                            <h4 class="text-secondary fw-bold m-0 opacity-50">En Proceso</h4>
                            <% for (Task t : miLista) {%>
                            <% if (t.getStatus() > 0 && t.getStatus() < 100) {%>
                            <div class="card mt-4 border border-2 p-3">
                                <div class="card-header d-flex bg-white border-0 align-items-center justify-content-between">
                                    <p class="bg-warning rounded-5 text-white fw-bold p-3 mb-0"><span><%=t.getTitle()%></span></p>
                                    <div>
                                        <a href="eliminarTarea?id=<%=t.getId()%>" class="btn btn-outline-dark" style="height: 40px"><i class="bi bi-trash"></i></a>
                                        <a href="encontrarTarea?id=<%=t.getId()%>" class="btn btn-outline-secondary" style="height: 40px"><i class="bi bi-card-list"></i></a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="fw-bold"><%=t.getDescription()%></p>
                                </div>
                                <div class="card-footer bg-white border-0 text-end">
                                    <span class="text-secondary fw-bold">Avance <%=t.getStatus()%> %</span>
                                </div>
                            </div>

                            <% }%>
                            <% }%>

                            <div class="mt-4">
                                <a href="insertarTarea?status=50" class="btn">
                                    <span class="text-secondary">
                                        <i class="bi bi-plus-lg"></i>Agregar Tarea
                                    </span>
                                </a>
                            </div>
                        </div>

                        <div class="flex-column shadow border p-4" style="width: 500px">
                            <h4 class="text-secondary fw-bold m-0 opacity-50">Completado</h4>
                            <% for (Task t : miLista) {%>
                            <% if (t.getStatus() == 100) {%>
                            <div class="card mt-4 border border-2 bg-white p-3">
                                <div class="card-header bg-white border-0 d-flex align-items-center justify-content-between">
                                    <p class="bg-success rounded-5 text-white fw-bold p-3 mb-0"><span><%=t.getTitle()%></span></p>
                                    <div>
                                        <a href="eliminarTarea?id=<%=t.getId()%>" class="btn btn-outline-dark" style="height: 40px"><i class="bi bi-trash"></i></a>
                                        <a href="encontrarTarea?id=<%=t.getId()%>" class="btn btn-outline-secondary" style="height: 40px"><i class="bi bi-card-list"></i></a>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <p class="fw-bold"><%=t.getDescription()%></p>
                                </div>
                                <div class="card-footer bg-white border-0 text-end">
                                    <span class="text-secondary fw-bold">Avance <%=t.getStatus()%> %</span>
                                </div>
                            </div>

                            <% }%>
                            <% }%>

                            <div class="mt-4">
                                <a href="insertarTarea?status=100" class="btn">
                                    <span class="text-secondary">
                                        <i class="bi bi-plus-lg"></i>Agregar Tarea
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
        </main>


        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    
    </body>
</html>
