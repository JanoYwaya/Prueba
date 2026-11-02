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

        <title>Mantenimiento Trello</title>
    </head>
    <body>
        <main>
            <section class="row m-0">
                <div class="container-fluid p-0">
                    <header class="d-flex bg-secondary text-white p-3 align-items-center">
                        <i class="bi bi-person-circle fs-1"></i>
                        <h1 class="ms-4">Administrador</h1>
                        <a href="listarEventos" class="text-decoration-none text-white ms-5 fw-bold">Auditoria</a>
                        <a href="insertarTarea" class="text-decoration-none text-white ms-5 fw-bold">Agregar Tarea</a>
                        <a href="salir" class="btn btn-light text-end ms-auto">
                            <i class="bi bi-door-open"></i>
                        </a>
                    </header>
    
                    <div class="d-flex me-0 gap-5 p-5  justify-content-between">               
                        <jsp:include page="tarjetaTask.jsp">
                            <jsp:param name="Titulo" value="Por hacer"/>
                            <jsp:param name="Color" value="bg-danger"/>
                            <jsp:param name="Condicion" value="0"/>
                        </jsp:include>
                        
                        <jsp:include page="tarjetaTask.jsp">
                            <jsp:param name="Titulo" value="En proceso"/>
                            <jsp:param name="Color" value="bg-warning"/>
                            <jsp:param name="Condicion" value="50"/>
                        </jsp:include>
                        
                        <jsp:include page="tarjetaTask.jsp">
                            <jsp:param name="Titulo" value="Completado"/>
                            <jsp:param name="Color" value="bg-success"/>
                            <jsp:param name="Condicion" value="100"/>
                        </jsp:include>
                    </div>
                </div>
            </section>
        </main>
        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    
    </body>
</html>
