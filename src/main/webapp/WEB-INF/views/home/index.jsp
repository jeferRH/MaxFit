<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>MaxFit — Home</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css">
    </head>

    <body class="p-5">
      <div class="container">
        <header>
          <h1 class="fw-bold">MaxFit</h1>
          <p class="text-secondary">Proyecto web con JSP y SQL Server. Estructura MVC.</p>
        </header>

        <main>
          <p>Contexto: <code>${pageContext.request.contextPath}</code> · Ruta controlador inicio: <code>/home</code></p>
          <ul class="list-unstyled">
            <li><a href="${pageContext.request.contextPath}/login" class="btn btn-primary">Iniciar sesión</a></li>
          </ul>
        </main>
      </div>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

    </html>