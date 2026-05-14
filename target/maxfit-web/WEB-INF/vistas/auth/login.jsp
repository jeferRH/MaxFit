<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>MaxFit — Ingresar</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
</head>
<body class="login-page">
<div class="login-card card">
  <div class="card-body">
    <div class="brand-row">
      <div class="brand-icon" aria-hidden="true">
        <svg viewBox="0 0 24 24" fill="currentColor"><path d="M20.57 14.86L22 13.43 20.57 12 17 15.57 8.43 7 12 3.43 10.57 2 9.14 3.43 7.71 2 5.57 4.14 4.14 5.57 2 7.71 3.43 9.14 2 10.57 3.43 12 7 8.43 15.57 17 12 20.57 13.43 22 14.86 20.57 16.29 22 18.43 19.86 19.86 18.43 22 16.29 20.57 14.86z"/></svg>
      </div>
      <span class="brand-name">MaxFit</span>
    </div>

    <c:choose>
      <c:when test="${not empty mensajeBienvenida}">
        <h1 class="login-title">Acceso correcto</h1>
        <p class="login-sub">Has iniciado sesión en el panel.</p>
        <div class="welcome-box">
          <div class="alert alert-success border-0 shadow-sm" role="alert">
            ${mensajeBienvenida}
          </div>
          <a class="btn btn-outline-light btn-sm mt-2" href="${pageContext.request.contextPath}/login">Volver al inicio de sesión</a>
        </div>
      </c:when>
      <c:otherwise>
        <h1 class="login-title">Bienvenido de nuevo</h1>
        <p class="login-sub">Ingresa tus credenciales para acceder al panel.</p>

        <c:if test="${not empty errorLogin}">
          <div class="alert alert-danger py-2 small mb-3" role="alert">${errorLogin}</div>
        </c:if>

        <form method="post" action="${pageContext.request.contextPath}/login" class="needs-validation" novalidate>
          <div class="mb-3">
            <label class="form-label-login d-block" for="correo">Correo electrónico</label>
            <div class="input-group">
              <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" viewBox="0 0 16 16" aria-hidden="true"><path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z"/></svg></span>
              <input type="email" class="form-control" id="correo" name="correo" placeholder="nombre@ejemplo.com" required autocomplete="username">
            </div>
          </div>
          <div class="mb-3">
            <div class="d-flex justify-content-between align-items-center mb-1">
              <label class="form-label-login mb-0" for="contrasena">Contraseña</label>
              <a href="#" class="forgot-link link-primary text-decoration-none">¿Olvidaste tu contraseña?</a>
            </div>
            <div class="input-group">
              <span class="input-group-text"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" viewBox="0 0 16 16" aria-hidden="true"><path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/></svg></span>
              <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="••••••••" required autocomplete="current-password">
            </div>
          </div>
          <button type="submit" class="btn btn-login-gradient">Ingresar →</button>
        </form>
      </c:otherwise>
    </c:choose>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
