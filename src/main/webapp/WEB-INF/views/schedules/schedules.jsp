<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MaxFit - Horarios</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashboard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/schedules.css">
    </head>
    <body>
        <jsp:include page="../includes/sidebar.jsp" />
        <jsp:include page="../includes/navbar.jsp" />

        <main class="main-content">
            <div class="container-fluid">

                <!-- Page Header -->
                <div class="d-flex align-items-start justify-content-between mb-4">
                    <div>
                        <h1 class="fw-bold mb-1">Gestión de Clases</h1>
                        <p class="text-secondary mb-0">Administra los horarios, instructores y capacidad de tus sesiones.</p>
                    </div>
                    <button class="btn-forge">
                        <span class="material-symbols-outlined">add</span>
                        Crear Nueva Clase
                    </button>
                </div>

                <!-- View Toggler -->
                <div class="view-toggle mb-4">
                    <button class="tab active">
                        <span class="material-symbols-outlined icon-sm" style="font-variation-settings:'FILL' 1;">list</span>
                        Listado
                    </button>
                    <button class="tab" onclick="window.location.href = '${pageContext.request.contextPath}/calendar'">
                        <span class="material-symbols-outlined icon-sm">calendar_month</span>
                        Calendario Semanal
                    </button>
                </div>

                <!-- Table Card -->
                <div class="sched-card">
                    <table class="cls-table">
                        <thead>
                            <tr>
                                <th>Clase</th>
                                <th>Instructor</th>
                                <th>Horario</th>
                                <th>Capacidad</th>
                                <th>Estado</th>
                                <th class="text-end">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-3">
                                        <div class="cls-icon cls-icon--primary">
                                            <span class="material-symbols-outlined">self_improvement</span>
                                        </div>
                                        <div>
                                            <p class="cls-name">Vinyasa Yoga</p>
                                            <p class="cls-sub">Estudio 1</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="instr-initials">AR</div>
                                        <span class="instr-name">Ana R.</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="sched-time">
                                        <span class="material-symbols-outlined icon-sm">schedule</span>
                                        07:00 - 08:30
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="cap-bar-wrap">
                                            <div class="cap-bar cap-bar--teal" style="width:75%;"></div>
                                        </div>
                                        <span class="cap-label">15/20</span>
                                    </div>
                                </td>
                                <td><span class="badge-status badge-en-curso">En curso</span></td>
                                <td class="text-end">
                                    <button class="row-actions">
                                        <span class="material-symbols-outlined">more_vert</span>
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-3">
                                        <div class="cls-icon cls-icon--secondary">
                                            <span class="material-symbols-outlined">fitness_center</span>
                                        </div>
                                        <div>
                                            <p class="cls-name">CrossFit WOD</p>
                                            <p class="cls-sub">Zona Libre</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="instr-initials">CM</div>
                                        <span class="instr-name">Carlos M.</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="sched-time">
                                        <span class="material-symbols-outlined icon-sm">schedule</span>
                                        09:00 - 10:00
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="cap-bar-wrap">
                                            <div class="cap-bar cap-bar--red" style="width:100%;"></div>
                                        </div>
                                        <span class="cap-label">25/25</span>
                                    </div>
                                </td>
                                <td><span class="badge-status badge-programada">Programada</span></td>
                                <td class="text-end">
                                    <button class="row-actions">
                                        <span class="material-symbols-outlined">more_vert</span>
                                    </button>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-3">
                                        <div class="cls-icon cls-icon--muted">
                                            <span class="material-symbols-outlined">directions_bike</span>
                                        </div>
                                        <div>
                                            <p class="cls-name">Spinning Elite</p>
                                            <p class="cls-sub">Sala Ciclo</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="instr-initials">LM</div>
                                        <span class="instr-name">Laura M.</span>
                                    </div>
                                </td>
                                <td>
                                    <div class="sched-time">
                                        <span class="material-symbols-outlined icon-sm">schedule</span>
                                        06:00 - 06:45
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="cap-bar-wrap">
                                            <div class="cap-bar cap-bar--muted" style="width:90%;"></div>
                                        </div>
                                        <span class="cap-label">18/20</span>
                                    </div>
                                </td>
                                <td><span class="badge-status badge-completada">Completada</span></td>
                                <td class="text-end">
                                    <button class="row-actions">
                                        <span class="material-symbols-outlined">more_vert</span>
                                    </button>
                                </td>
                            </tr>

                            <%--
                            ════════════════════════════════════════
                            Filas dinámicas — descomenta al conectar
                            el servlet con: request.setAttribute("clases", lista)
                            ════════════════════════════════════════
                            <c:forEach var="c" items="${clases}">
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-3">
                                        <div class="cls-icon cls-icon--primary">
                                            <span class="material-symbols-outlined"><c:out value="${c.icono}"/></span>
                                        </div>
                                        <div>
                                            <p class="cls-name"><c:out value="${c.nombre}"/></p>
                                            <p class="cls-sub"><c:out value="${c.sala}"/></p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="instr-initials"><c:out value="${c.instructorIniciales}"/></div>
                                        <span class="instr-name"><c:out value="${c.instructorNombre}"/></span>
                                    </div>
                                </td>
                                <td>
                                    <div class="sched-time">
                                        <span class="material-symbols-outlined icon-sm">schedule</span>
                                        <c:out value="${c.horario}"/>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <div class="cap-bar-wrap">
                                            <div class="cap-bar cap-bar--teal js-cap-bar-pct" data-pct='<c:out value="${c.porcentaje}"/>'></div>
                                        </div>
                                        <span class="cap-label"><c:out value="${c.inscritos}"/>/<c:out value="${c.capacidad}"/></span>
                                    </div>
                                </td>
                                <td>
                                    <span class="badge-status badge-${c.estadoCss}">
                                        <c:out value="${c.estadoLabel}"/>
                                    </span>
                                </td>
                                <td class="text-end">
                                    <button class="row-actions">
                                        <span class="material-symbols-outlined">more_vert</span>
                                    </button>
                                </td>
                            </tr>
                            </c:forEach>
                            --%>

                        </tbody>
                    </table>
                </div>

            </div>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            document.querySelectorAll('.view-toggle .tab').forEach(btn => {
                btn.addEventListener('click', function () {
                    document.querySelectorAll('.view-toggle .tab').forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                });
            });
            document.querySelectorAll('.js-cap-bar-pct[data-pct]').forEach(function (el) {
                var p = el.getAttribute('data-pct');
                if (p !== null && p !== '') {
                    el.style.width = p + '%';
                }
            });
        </script>
    </body>
</html>
