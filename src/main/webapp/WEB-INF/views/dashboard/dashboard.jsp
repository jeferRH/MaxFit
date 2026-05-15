<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MaxFit - Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&display=swap"
        rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap"
        rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashboard.css">
</head>

<body>

    <jsp:include page="../includes/sidebar.jsp" />
    <jsp:include page="../includes/navbar.jsp" />

    <main class="main-content">
        <div class="container-fluid px-0">

            <%-- ============================================================
                 BLOQUE ADMIN
                 ============================================================ --%>
            <% if ("Admin".equalsIgnoreCase((String) session.getAttribute("userRole"))) { %>

            <div class="d-flex justify-content-between align-items-end mb-4">
                <div>
                    <h1 class="h2 fw-bold mb-1" style="color: var(--on-surface); letter-spacing: -0.02em;">Overview</h1>
                    <p class="mb-0" style="color: var(--on-surface-variant); font-size: 1rem;">Métricas de rendimiento en tiempo real.</p>
                </div>
                <span class="label-caps" style="color: var(--on-surface-variant);">Hoy: <span id="fecha-hoy"></span></span>
            </div>

            <!-- Stat Cards Admin -->
            <div class="row g-3 mb-4">
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--primary h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Clientes Activos</span>
                            <div class="stat-icon stat-icon--primary">
                                <span class="material-symbols-outlined" style="font-size:20px;">groups</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">1,240</h3>
                            <span class="trend trend--up">
                                <span class="material-symbols-outlined" style="font-size:14px;">trending_up</span> +4.2%
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--secondary h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Contratos Activos</span>
                            <div class="stat-icon stat-icon--secondary">
                                <span class="material-symbols-outlined" style="font-size:20px;">assignment</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">850</h3>
                            <span class="trend trend--up">
                                <span class="material-symbols-outlined" style="font-size:14px;">trending_up</span> +2.1%
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--tertiary h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Ingresos Mensuales</span>
                            <div class="stat-icon stat-icon--tertiary">
                                <span class="material-symbols-outlined" style="font-size:20px;">payments</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">$45,200</h3>
                            <span class="trend trend--up">
                                <span class="material-symbols-outlined" style="font-size:14px;">trending_up</span> +8.5%
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--error h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Clases del Día</span>
                            <div class="stat-icon stat-icon--error">
                                <span class="material-symbols-outlined" style="font-size:20px;">event</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">12</h3>
                            <span class="trend trend--neutral">
                                <span class="material-symbols-outlined" style="font-size:14px;">remove</span> 0%
                            </span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Charts Admin -->
            <div class="row g-3 mb-4">
                <div class="col-12 col-lg-8">
                    <div class="card-workspace p-0 h-100" style="height: 380px !important;">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="fw-semibold mb-0" style="color: var(--on-surface);">Ingresos Mensuales</h5>
                            <button class="btn btn-sm p-0 border-0" style="color: var(--on-surface-variant);">
                                <span class="material-symbols-outlined">more_horiz</span>
                            </button>
                        </div>
                        <div class="chart-area d-flex align-items-end justify-content-around p-3" style="height:300px; position:relative; overflow:hidden;">
                            <div class="chart-gradient-bg"></div>
                            <div class="chart-bar" style="height:30%;" data-label="$32k"></div>
                            <div class="chart-bar" style="height:45%;" data-label="$38k"></div>
                            <div class="chart-bar" style="height:40%;" data-label="$36k"></div>
                            <div class="chart-bar" style="height:60%;" data-label="$42k"></div>
                            <div class="chart-bar chart-bar--active" style="height:80%;" data-label="$45.2k"></div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="card-workspace p-0 h-100" style="height: 380px !important;">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="fw-semibold mb-0" style="color: var(--on-surface);">Asistencia Semanal</h5>
                            <button class="btn btn-sm p-0 border-0" style="color: var(--on-surface-variant);">
                                <span class="material-symbols-outlined">more_horiz</span>
                            </button>
                        </div>
                        <div class="chart-area d-flex flex-column p-3" style="height:300px;">
                            <div class="d-flex align-items-end justify-content-between gap-2 flex-1" style="flex:1;">
                                <div class="weekly-bar" style="height:50%;"></div>
                                <div class="weekly-bar" style="height:70%;"></div>
                                <div class="weekly-bar weekly-bar--active" style="height:90%;"></div>
                                <div class="weekly-bar" style="height:60%;"></div>
                                <div class="weekly-bar" style="height:40%;"></div>
                            </div>
                            <div class="d-flex justify-content-between pt-2 mt-2" style="border-top: 1px solid var(--outline-variant);">
                                <span class="label-caps" style="color: var(--on-surface-variant);">L</span>
                                <span class="label-caps" style="color: var(--on-surface-variant);">M</span>
                                <span class="label-caps" style="color: var(--on-surface-variant);">X</span>
                                <span class="label-caps" style="color: var(--on-surface-variant);">J</span>
                                <span class="label-caps" style="color: var(--on-surface-variant);">V</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bottom Widgets Admin -->
            <div class="row g-3">
                <div class="col-12 col-lg-6">
                    <div class="card-workspace p-0 h-100">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="fw-semibold mb-0 d-flex align-items-center gap-2" style="color: var(--on-surface);">
                                <span class="material-symbols-outlined" style="color: #69d8d4;">warning</span>
                                Próximos Vencimientos
                            </h5>
                            <a href="#" class="label-caps" style="color: var(--primary-container); text-decoration: none;">Ver Todos</a>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead>
                                    <tr>
                                        <th>Cliente</th>
                                        <th>Membresía</th>
                                        <th>Fecha</th>
                                        <th class="text-end">Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="fw-medium">Carlos Mendoza</td>
                                        <td>Elite Anual</td>
                                        <td>Oct 26, 2023</td>
                                        <td class="text-end"><span class="badge-status badge-status--danger">Expiring Soon</span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-medium">Ana Torres</td>
                                        <td>Standard Mensual</td>
                                        <td>Oct 28, 2023</td>
                                        <td class="text-end"><span class="badge-status badge-status--warning">Pending</span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-medium">Luis Garcia</td>
                                        <td>Box Trimestral</td>
                                        <td>Oct 30, 2023</td>
                                        <td class="text-end"><span class="badge-status badge-status--success">Active</span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-medium">Elena Rojas</td>
                                        <td>Elite Anual</td>
                                        <td>Nov 02, 2023</td>
                                        <td class="text-end"><span class="badge-status badge-status--success">Active</span></td>
                                    </tr>
                                    <tr>
                                        <td class="fw-medium">Martin Vega</td>
                                        <td>Standard Mensual</td>
                                        <td>Nov 05, 2023</td>
                                        <td class="text-end"><span class="badge-status badge-status--success">Active</span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-6">
                    <div class="card-workspace p-0 h-100">
                        <div class="card-header d-flex align-items-center gap-2">
                            <span class="material-symbols-outlined" style="color: var(--secondary-container);">history</span>
                            <h5 class="fw-semibold mb-0" style="color: var(--on-surface);">Actividad Reciente</h5>
                        </div>
                        <div class="p-2">
                            <div class="activity-item">
                                <div class="activity-icon activity-icon--primary">
                                    <span class="material-symbols-outlined">person_add</span>
                                </div>
                                <div class="flex-grow-1">
                                    <p class="fw-medium mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Nueva Inscripción: Sofia Ruiz</p>
                                    <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">Adquirió paquete Elite Anual.</p>
                                </div>
                                <span class="label-caps ms-2 text-nowrap" style="color: var(--outline);">10 min</span>
                            </div>
                            <div class="activity-item">
                                <div class="activity-icon activity-icon--tertiary">
                                    <span class="material-symbols-outlined">check_circle</span>
                                </div>
                                <div class="flex-grow-1">
                                    <p class="fw-medium mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Clase Completada: Cross-Train</p>
                                    <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">Coach Marcos • 15 asistentes.</p>
                                </div>
                                <span class="label-caps ms-2 text-nowrap" style="color: var(--outline);">45 min</span>
                            </div>
                            <div class="activity-item">
                                <div class="activity-icon activity-icon--secondary">
                                    <span class="material-symbols-outlined">payment</span>
                                </div>
                                <div class="flex-grow-1">
                                    <p class="fw-medium mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Pago Recibido</p>
                                    <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">$120.00 de Jorge Silva.</p>
                                </div>
                                <span class="label-caps ms-2 text-nowrap" style="color: var(--outline);">2 hrs</span>
                            </div>
                            <div class="activity-item border-0">
                                <div class="activity-icon activity-icon--error">
                                    <span class="material-symbols-outlined">cancel</span>
                                </div>
                                <div class="flex-grow-1">
                                    <p class="fw-medium mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Solicitud de Cancelación</p>
                                    <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">Maria Gomez solicitó cancelar Standard.</p>
                                </div>
                                <span class="label-caps ms-2 text-nowrap" style="color: var(--outline);">4 hrs</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <% } %>

            <%-- ============================================================
                 BLOQUE RECEPCIONISTA
                 ============================================================ --%>
            <% if ("Recepcionista".equalsIgnoreCase((String) session.getAttribute("userRole"))) { %>

            <!-- Header Recepción -->
            <div class="d-flex justify-content-between align-items-end mb-4">
                <div>
                    <h1 class="h2 fw-bold mb-1" style="color: var(--on-surface); letter-spacing: -0.02em;">Recepción Hoy</h1>
                    <p class="mb-0" style="color: var(--on-surface-variant); font-size: 1rem;">Resumen de operaciones y métricas diarias.</p>
                </div>
                <span class="label-caps" style="color: var(--on-surface-variant);">Hoy: <span id="fecha-hoy"></span></span>
            </div>

            <!-- Stat Cards Recepcionista -->
            <div class="row g-3 mb-4">
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--primary h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Clientes Atendidos</span>
                            <div class="stat-icon stat-icon--primary">
                                <span class="material-symbols-outlined" style="font-size:20px;">group</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">142</h3>
                            <span class="trend trend--up">
                                <span class="material-symbols-outlined" style="font-size:14px;">trending_up</span> +12% vs ayer
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--secondary h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Contratos Nuevos</span>
                            <div class="stat-icon stat-icon--secondary">
                                <span class="material-symbols-outlined" style="font-size:20px;">contract</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">8</h3>
                            <span class="label-caps ms-1" style="color: var(--on-surface-variant);">Mes actual</span>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--tertiary h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Asistencias</span>
                            <div class="stat-icon stat-icon--tertiary">
                                <span class="material-symbols-outlined" style="font-size:20px;">how_to_reg</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">315</h3>
                            <span class="trend trend--up">
                                <span class="material-symbols-outlined" style="font-size:14px;">trending_up</span> Pico 18:00
                            </span>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <div class="stat-card stat-card--error h-100">
                        <div class="d-flex justify-content-between align-items-start mb-2">
                            <span class="label-caps" style="color: var(--on-surface-variant);">Pagos Recibidos</span>
                            <div class="stat-icon stat-icon--success">
                                <span class="material-symbols-outlined" style="font-size:20px;">payments</span>
                            </div>
                        </div>
                        <div class="d-flex align-items-baseline gap-2">
                            <h3 class="h4 fw-bold mb-0" style="color: var(--on-surface);">$4,250</h3>
                            <span class="label-caps ms-1" style="color: var(--on-surface-variant);">12 transacciones</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Widgets Row Recepcionista: 3 columnas -->
            <div class="row g-3">

                <!-- Próximos Vencimientos -->
                <div class="col-12 col-lg-4">
                    <div class="card-workspace p-0 recep-widget-card">
                        <div class="card-header d-flex justify-content-between align-items-center">
                            <h5 class="fw-semibold mb-0 d-flex align-items-center gap-2" style="color: var(--on-surface);">
                                <span class="material-symbols-outlined" style="color: var(--error);">warning</span>
                                Vencimientos
                            </h5>
                            <a href="#" class="label-caps" style="color: var(--primary-container); text-decoration: none;">Ver todos</a>
                        </div>
                        <div class="recep-scroll-body">
                            <ul class="list-unstyled mb-0 p-2">
                                <li class="recep-venc-item recep-venc--danger">
                                    <div>
                                        <p class="fw-semibold mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Carlos Mendoza</p>
                                        <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">Plan Anual Elite</p>
                                    </div>
                                    <span class="badge-status badge-status--danger">Vence Hoy</span>
                                </li>
                                <li class="recep-venc-item recep-venc--warning">
                                    <div>
                                        <p class="fw-semibold mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Ana Silva</p>
                                        <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">Pase Mensual</p>
                                    </div>
                                    <span class="badge-status badge-status--warning">Mañana</span>
                                </li>
                                <li class="recep-venc-item recep-venc--warning">
                                    <div>
                                        <p class="fw-semibold mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Javier Roca</p>
                                        <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">CrossFit Pack</p>
                                    </div>
                                    <span class="badge-status badge-status--warning">Mañana</span>
                                </li>
                                <li class="recep-venc-item recep-venc--neutral">
                                    <div>
                                        <p class="fw-semibold mb-0" style="color: var(--on-surface); font-size: 0.9rem;">Lucia Torres</p>
                                        <p class="mb-0" style="color: var(--on-surface-variant); font-size: 0.8rem;">Plan Anual Elite</p>
                                    </div>
                                    <span class="badge-status badge-status--neutral">En 3 días</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Nuevos Registros -->
                <div class="col-12 col-lg-4">
                    <div class="card-workspace p-0 recep-widget-card">
                        <div class="card-header d-flex align-items-center gap-2">
                            <span class="material-symbols-outlined" style="color: var(--secondary-container);">person_add</span>
                            <h5 class="fw-semibold mb-0" style="color: var(--on-surface);">Nuevos Registros</h5>
                        </div>
                        <div class="recep-scroll-body p-0">
                            <table class="table table-hover mb-0">
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center gap-2">
                                                <div class="recep-avatar">
                                                    <span class="material-symbols-outlined" style="font-size:16px; color: var(--on-surface-variant);">person</span>
                                                </div>
                                                <span style="font-size:0.9rem;">Roberto Gómez</span>
                                            </div>
                                        </td>
                                        <td class="text-end label-caps" style="color: var(--on-surface-variant);">09:15 AM</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center gap-2">
                                                <div class="recep-avatar">
                                                    <span class="material-symbols-outlined" style="font-size:16px; color: var(--on-surface-variant);">person</span>
                                                </div>
                                                <span style="font-size:0.9rem;">María López</span>
                                            </div>
                                        </td>
                                        <td class="text-end label-caps" style="color: var(--on-surface-variant);">08:40 AM</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center gap-2">
                                                <div class="recep-avatar">
                                                    <span class="material-symbols-outlined" style="font-size:16px; color: var(--on-surface-variant);">person</span>
                                                </div>
                                                <span style="font-size:0.9rem;">David Peña</span>
                                            </div>
                                        </td>
                                        <td class="text-end label-caps" style="color: var(--on-surface-variant);">Ayer</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="d-flex align-items-center gap-2">
                                                <div class="recep-avatar">
                                                    <span class="material-symbols-outlined" style="font-size:16px; color: var(--on-surface-variant);">person</span>
                                                </div>
                                                <span style="font-size:0.9rem;">Elena Ríos</span>
                                            </div>
                                        </td>
                                        <td class="text-end label-caps" style="color: var(--on-surface-variant);">Ayer</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

                <!-- Check-ins Recientes -->
                <div class="col-12 col-lg-4">
                    <div class="card-workspace p-0 recep-widget-card">
                        <div class="card-header d-flex align-items-center gap-2">
                            <span class="material-symbols-outlined" style="color: var(--tertiary);">history</span>
                            <h5 class="fw-semibold mb-0" style="color: var(--on-surface);">Check-ins Recientes</h5>
                        </div>
                        <div class="recep-scroll-body p-3">

                            <div class="recep-checkin-item">
                                <div class="recep-checkin-line"></div>
                                <div class="recep-checkin-dot recep-checkin-dot--success">
                                    <span class="material-symbols-outlined" style="font-size:16px; color: #10B981;">check_circle</span>
                                </div>
                                <div>
                                    <p class="mb-0" style="font-size:0.9rem; color: var(--on-surface);"><strong>Martín Suárez</strong> ingresó</p>
                                    <p class="mb-0 label-caps" style="color: var(--on-surface-variant);">Hace 2 min</p>
                                </div>
                            </div>

                            <div class="recep-checkin-item">
                                <div class="recep-checkin-line"></div>
                                <div class="recep-checkin-dot recep-checkin-dot--success">
                                    <span class="material-symbols-outlined" style="font-size:16px; color: #10B981;">check_circle</span>
                                </div>
                                <div>
                                    <p class="mb-0" style="font-size:0.9rem; color: var(--on-surface);"><strong>Sofia Castro</strong> ingresó</p>
                                    <p class="mb-0 label-caps" style="color: var(--on-surface-variant);">Hace 15 min</p>
                                </div>
                            </div>

                            <div class="recep-checkin-item">
                                <div class="recep-checkin-line"></div>
                                <div class="recep-checkin-dot recep-checkin-dot--error">
                                    <span class="material-symbols-outlined" style="font-size:16px; color: var(--error);">block</span>
                                </div>
                                <div>
                                    <p class="mb-0" style="font-size:0.9rem; color: var(--on-surface);"><strong>Juan Pérez</strong> acceso denegado <span style="color:var(--error);">(Deuda)</span></p>
                                    <p class="mb-0 label-caps" style="color: var(--on-surface-variant);">Hace 45 min</p>
                                </div>
                            </div>

                            <div class="recep-checkin-item recep-checkin-item--last">
                                <div class="recep-checkin-dot recep-checkin-dot--success">
                                    <span class="material-symbols-outlined" style="font-size:16px; color: #10B981;">check_circle</span>
                                </div>
                                <div>
                                    <p class="mb-0" style="font-size:0.9rem; color: var(--on-surface);"><strong>Luis Navarro</strong> ingresó</p>
                                    <p class="mb-0 label-caps" style="color: var(--on-surface-variant);">Hace 1 hora</p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div><!-- end widgets row recepcionista -->

            <% } %>

        </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <script>
        const d = new Date();
        const fechaEl = document.getElementById('fecha-hoy');
        if (fechaEl) {
            fechaEl.textContent = d.toLocaleDateString('es-PE', {
                day: '2-digit', month: 'short', year: 'numeric'
            });
        }

        // Tooltips de barras (solo aplica al dashboard admin)
        document.querySelectorAll('.chart-bar').forEach(bar => {
            bar.addEventListener('mouseenter', function () {
                const tip = document.createElement('div');
                tip.className = 'chart-tooltip';
                tip.textContent = this.dataset.label;
                this.appendChild(tip);
            });
            bar.addEventListener('mouseleave', function () {
                this.querySelectorAll('.chart-tooltip').forEach(t => t.remove());
            });
        });
    </script>
</body>

</html>
