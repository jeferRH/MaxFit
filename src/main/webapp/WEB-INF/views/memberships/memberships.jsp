<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MaxFit - Membresías</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashboard.css">
</head>
<body>
    <jsp:include page="../includes/sidebar.jsp" />
    <jsp:include page="../includes/navbar.jsp" />
    <main class="main-content">
        <div class="container-fluid">
            <h1 class="h2 fw-bold mb-4">Membresías</h1>
            <div class="stat-card border-0 shadow-sm rounded-4">
                <div class="card-body p-5 text-center">
                    <span class="material-symbols-outlined display-1 mb-3" style="color: var(--primary);">description</span>
                    <h2 class="fw-bold">Próximamente</h2>
                    <p class="text-secondary">Pronto podrás gestionar los planes y tipos de membresía.</p>
                </div>
            </div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
