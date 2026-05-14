<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Ejemplo MVC</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/estilos.css">
</head>
<body>
  <h1>Vista (capa V)</h1>
  <p>${mensaje}</p>
  <p><a href="${pageContext.request.contextPath}/inicio">Volver al inicio</a></p>
</body>
</html>
