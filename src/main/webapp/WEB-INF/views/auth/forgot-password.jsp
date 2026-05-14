<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="es">

    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title>MaxFit — Restablece tu contraseña</title>
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

          <div class="login-header">
            <h1 class="login-title">¿Olvidaste tu contraseña?</h1>
            <p class="login-sub">No te preocupes, ingresa tu correo para recuperarla.</p>
          </div>

          <c:if test="${not empty successMessage}">
            <div class="alert alert-forge alert-forge-success" role="alert">
              ${successMessage}
            </div>
            <a class="btn-forge text-decoration-none mt-2" href="${pageContext.request.contextPath}/login">
              Ir al inicio de sesión
              <span class="material-symbols-outlined">arrow_forward</span>
            </a>
          </c:if>

          <c:if test="${empty successMessage}">
            <c:if test="${not empty errorMessage}">
              <div class="alert-forge" role="alert">
                ${errorMessage}
              </div>
            </c:if>

            <form method="post" action="${pageContext.request.contextPath}/forgot-password" class="login-form">
              <div class="form-group">
                <label class="form-label-login" for="email">Correo electrónico</label>
                <div class="input-container">
                  <span class="material-symbols-outlined">mail</span>
                  <input type="email" class="form-control-forge" id="email" name="email" placeholder="admin@maxfit.com"
                    required autocomplete="email">
                </div>
              </div>

              <button type="submit" class="btn-forge mb-3">
                Enviar Instrucciones
                <span class="material-symbols-outlined">send</span>
              </button>

              <div class="text-center">
                <a href="${pageContext.request.contextPath}/login" class="forgot-link">
                  <span class="material-symbols-outlined align-middle me-1" style="font-size: 16px;">arrow_back</span>
                  Volver al Login
                </a>
              </div>
            </form>
          </c:if>
        </div>
      </main>

      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

    </html>