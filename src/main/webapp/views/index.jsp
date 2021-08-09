<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String context = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
  <title>Admin</title>
</head>
<body>
<h1>Ver juegos</h1>
<a class="btn btn-outline-dark" href="<%=context%>/readGames"><i class="fas fa-th-list"></i> Listado de juegos</a>
</body>
</html>
