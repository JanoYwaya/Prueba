<%@page import="web.date1910.dto.Task"%>
<%@page import="web.date1910.dto.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>

        <title>Nuevo Usuario</title>

    </head>
    <body>
        <main class="d-flex justify-content-center align-items-center vh-100">
            <section class="p-5 rounded-5 shadow bg-white" style="height: auto; width: 400px">

                <%Task tarea = (Task) request.getAttribute("tareaBean");%>

                <div class="d-flex">
                    <% if (tarea.getId() == null) { %>
                    <h1>Registrar</h1>
                    <%} else { %>
                    <h1>Editar</h1>
                    <% }%>
                    <a href="listarTareas" class="btn btn-sm btn-close ms-auto d-inline-flex align-items-center justify-content-center" title="Cerrar">
                    </a>
                </div>

                <div class="mt-4">
                    <mvc:form action="grabarOperacion" modelAttribute="tareaBean">


                        <% if (tarea.getId() == null) { %>
                        <div class="form-group mb-4">
                            <mvc:label path="id" class="form-label"><i class="bi bi-person me-2"></i>ID</mvc:label>   
                            <mvc:input path="id" class="form-control" cssErrorClass="form-control is-invalid"></mvc:input>   
                            <mvc:errors path="id" cssClass="text-danger"></mvc:errors>  
                            </div>
                        <%} else { %>
                        <mvc:hidden path="id"></mvc:hidden>
                        <% }%>

                        <div class="form-group mb-4">
                            <mvc:label path="title" class="form-label"><i class="bi bi-person me-2"></i>Title</mvc:label>   
                            <mvc:input path="title" class="form-control" cssErrorClass="form-control is-invalid"></mvc:input>   
                            <mvc:errors path="title" cssClass="text-danger"></mvc:errors>  
                            </div>

                            <div class="form-group mb-4">
                            <mvc:label path="description" class="form-label"><i class="bi bi-lock me-2"></i>Description</mvc:label>   
                            <mvc:input path="description" class="form-control" cssErrorClass="form-control is-invalid"></mvc:input>   
                            <mvc:errors path="description" cssClass="text-danger"></mvc:errors>  
                            </div>

                            <div class="form-group mb-4">
                            <mvc:label path="status" class="form-label"><i class="bi bi-person-vcard me-2"></i>Status</mvc:label>   
                            <mvc:select path="status" class="form-control">
                                <mvc:option value="" label="-- Seleccione un Estado --" /> 
                                <mvc:option value="0" label="Por hacer"></mvc:option>
                                <mvc:option value="50" label="En proceso"></mvc:option>
                                <mvc:option value="100" label="Completado"></mvc:option>
                            </mvc:select>

                            <mvc:errors path="status"></mvc:errors>   
                            </div>

                            <div class="text-center">
                            <% if (tarea.getId() == null) { %>
                            <input type="submit" value="Añadir" class="btn btn-secondary">
                            <%} else { %>
                            <input type="submit" value="Editar" class="btn btn-secondary">
                            <% }%>
                        </div>
                    </mvc:form>
                </div>
            </section>
        </main>




        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    

    </body>
</html>
