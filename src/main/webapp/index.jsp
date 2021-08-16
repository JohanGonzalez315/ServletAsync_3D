<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<!--<a class="btn btn-dark" href="/readGames">Hello Servlet</a>-->

<div class="container mt-xxl-5 col-lg-4 align-content-center">
    <div class="card mb-5">
        <div class="row g-0">
            <div class="col-md-5">
                <img src="" class="img-fluid rounded-start" alt="...">
            </div>
            <div class="col-md-7">
                <div class="card-body ">
                    <form class="form" action="ServletSession" method="POST">
                        <div class="form-group text-center">
                            <h3>Inicio de Sesión</h3>
                            <label>Bienvenido</label>
                        </div>
                        <label id="msgerror"></label>
                        <div class="form-group">
                            <label class="text-center">Usuario:</label>
                            <input type="text" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="text-center">Contraseña:</label>
                            <input type="password" name="password" class="form-control">
                        </div>
                        <div class="d-grid gap-2">
                            <br>
                            <button type="submit" class="btn btn-primary">Ingresar </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>