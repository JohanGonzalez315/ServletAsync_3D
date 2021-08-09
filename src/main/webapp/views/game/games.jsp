
<%--
  Created by IntelliJ IDEA.
  User: johan
  Date: 04/08/2021
  Time: 11:58 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table">
    <thead class="table-dark">
    <tr>
        <th>No.</th>
        <th>Nombre del juego</th>
        <th>Imagen</th>
        <th>Categoría</th>
        <th>Fecha</th>
        <th>Estado</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${ listGames }" var="game" varStatus="status">
        <tr>
            <td>${ status.count }</td>
            <td>${ game.nameGame }</td>
            <td><img src="data:image/jpeg;base64,${ game.imgGame }"></td>
            <td>
                <c:if test="${ game.category_idCategory == 1 }">
                    <span>Acción</span>
                </c:if>
                <c:if test="${ game.category_idCategory == 2 }">
                    <span>Terror</span>
                </c:if>
            </td>
            <td>Fecha</td>
            <td>
                <c:if test="${ game.status == 1 }">
                    <span class="badge rounded-pill bg-success">Activo</span>
                </c:if>
                <c:if test="${ game.status == 0 }">
                    <span class="badge rounded-pill bg-danger">Inactivo</span>
                </c:if>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
