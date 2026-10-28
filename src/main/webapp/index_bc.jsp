<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap-icons/1.11.3/font/bootstrap-icons.css">


        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilos.css" type="text/css"/>


        <title>Index</title>
    </head>
    <body>
        <main class="d-flex justify-content-center">
            <section class="m-4 p-3 text-center">
                <h1>Mi Primera Aplicacion con Spring</h1>

                <div class="d-flex justify-content-center" style="margin-top: 40px">
                    <div class="card border-0 shadow" style="width: 250px">
                        <div class="card-body border-0">
                            <a href="login" class="btn btn-outline-secondary rounded-circle" style="font-size: 30px">
                                <i class="bi bi-door-open"></i>
                            </a>
                        </div>
                        <div class="card-footer border-0">
                            <span class="fw-bold">Ingresar</span>
                        </div>
                    </div>
                </div>


            </section>
        </main>



        <script src="${pageContext.request.contextPath}/webjars/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>    
    </body>
</html>
