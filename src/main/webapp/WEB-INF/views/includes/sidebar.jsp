<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <aside class="sidebar">
        <div class="sidebar-logo">
            <div class="logo-icon">
                <span class="material-symbols-outlined text-white">fitness_center</span>
            </div>
            <div>
                <h1 class="m-0 fs-5 fw-bold" style="color: var(--primary);">MAX FIT</h1>
                <p class="m-0 opacity-50" style="font-size: 10px; text-transform: uppercase; letter-spacing: 1px;">
                    Gimnasio Premium</p>
            </div>
        </div>

        <nav class="sidebar-nav">
            <a href="${pageContext.request.contextPath}/dashboard"
                class="nav-link ${requestScope.activePage == 'dashboard' ? 'active' : ''}">
                <span class="material-symbols-outlined">dashboard</span>
                Dashboard
            </a>
            <a href="${pageContext.request.contextPath}/clients"
                class="nav-link ${requestScope.activePage == 'clients' ? 'active' : ''}">
                <span class="material-symbols-outlined">group</span>
                Clientes
            </a>
            <a href="${pageContext.request.contextPath}/schedules" class="nav-link ${requestScope.activePage == 'schedules' ? 'active' : ''}">
                <span class="material-symbols-outlined">calendar_today</span>
                Horarios
            </a>
            <a href="${pageContext.request.contextPath}/memberships" class="nav-link ${requestScope.activePage == 'memberships' ? 'active' : ''}">
                <span class="material-symbols-outlined">description</span>
                Membresías
            </a>
            <a href="${pageContext.request.contextPath}/employees" class="nav-link ${requestScope.activePage == 'employees' ? 'active' : ''}">
                <span class="material-symbols-outlined">badge</span>
                Empleados
            </a>
            <a href="${pageContext.request.contextPath}/reports" class="nav-link ${requestScope.activePage == 'reports' ? 'active' : ''}">
                <span class="material-symbols-outlined">analytics</span>
                Reportes
            </a>
            <div class="mt-auto">
                <a href="${pageContext.request.contextPath}/logout" class="nav-link text-danger">
                    <span class="material-symbols-outlined">logout</span>
                    Cerrar Sesión
                </a>
            </div>
        </nav>
    </aside>