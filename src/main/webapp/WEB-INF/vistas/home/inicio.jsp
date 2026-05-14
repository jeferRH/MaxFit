<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MaxFit — Inicio</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/estilos.css">
</head>
<body>
  <header>
    <h1>MaxFit</h1>
    <p>Proyecto web con JSP y SQL Server (local / académico). Estructura MVC.</p>
  </header>
  <main>
    <p>Contexto: <code>${pageContext.request.contextPath}</code> · Ruta controlador inicio: <code>/inicio</code></p>
    <ul>
      <li><a href="${pageContext.request.contextPath}/login">Iniciar sesión (Bootstrap)</a></li>
      <li><a href="${pageContext.request.contextPath}/ejemplo">Ejemplo MVC (controlador → vista)</a></li>
      <li><a href="${pageContext.request.contextPath}/dev/prueba-bd">Prueba JDBC (requiere <code>db.properties</code>)</a></li>
    </ul>
  </main>
</body>
</html>
 