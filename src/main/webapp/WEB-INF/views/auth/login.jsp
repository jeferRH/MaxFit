<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>MaxFit — Login</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
    </head>

    <body class="login-page">
      <div class="bg-graphic">
        <img
          src="https://lh3.googleusercontent.com/aida-public/AB6AXuA1yUKzPy94AD8NoBwXGxeOGOFTHMcMMzkqOTGvhgz5zLVsL_bFbJi9IMVv4IcrNSfuMlSl7Sg1ei7z-O5kDE4B_r_8lVJsoy8I7OPwsF13iW6e8NCGYHLHkuWqlPdPPlgcaineIFAvX1uXcZl8MIeLEz9RrGaNpNY49JGG2cCU7uC1V-49jCRqaNfptpvQ2VH7lNXalTZsrOCv0N3nG-OPrPQFuhnN54A03ejRnx_-loQIi307PRGPUlTgGMDR4uVNidxnb-M0BlA"
          alt="Background">
        <div class="bg-overlay"></div>
        <div class="bg-radial"></div>
      </div>

      <main class="login-container">
        <div class="login-card">
          <div class="brand-box">
            <div class="brand-icon">
              <span class="material-symbols-outlined">exercise</span>
            </div>
            <span class="brand-name">MAXFIT</span>
          </div>

          <c:choose>
            <c:when test="${not empty welcomeMessage}">
              <div class="login-header">
                <h1 class="login-title">Acceso correcto</h1>
                <p class="login-sub">Has iniciado sesión en el panel.</p>
              </div>
              <div class="alert alert-forge alert-forge-success" role="alert">
                ${welcomeMessage}
              </div>
              <a class="btn-forge text-decoration-none" href="${pageContext.request.contextPath}/login">
                Volver a ingresar
                <span class="material-symbols-outlined">refresh</span>
              </a>
            </c:when>
            <c:otherwise>
              <div class="login-header">
                <h1 class="login-title">Bienvenido de nuevo</h1>
                <p class="login-sub">Ingresa tus credenciales para acceder al panel de control.</p>
              </div>

              <c:if test="${not empty loginError}">
                <div class="alert-forge" role="alert">
                  ${loginError}
                </div>
              </c:if>

              <form method="post" action="${pageContext.request.contextPath}/login" class="login-form">
                <div class="form-group">
                  <label class="form-label-login" for="email">Correo electrónico</label>
                  <div class="input-container">
                    <span class="material-symbols-outlined">mail</span>
                    <input type="email" class="form-control-forge" id="email" name="email"
                      placeholder="admin@maxfit.com" required autocomplete="username">
                  </div>
                </div>

                <div class="form-group">
                  <div class="d-flex justify-content-between align-items-center mb-1">
                    <label class="form-label-login mb-0" for="password">Contraseña</label>
                    <a href="${pageContext.request.contextPath}/forgot-password" class="forgot-link">¿Olvidaste tu contraseña?</a>
                  </div>
                  <div class="input-container">
                    <span class="material-symbols-outlined">lock</span>
                    <input type="password" class="form-control-forge" id="password" name="password"
                      placeholder="••••••••" required autocomplete="current-password">
                  </div>
                </div>

                <button type="submit" class="btn-forge">
                  Ingresar
                  <span class="material-symbols-outlined">arrow_forward</span>
                </button>
              </form>
            </c:otherwise>
          </c:choose>
        </div>
      </main>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

    </html>