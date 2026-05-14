<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="es">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>MaxFit - Gestión de Clientes</title>

            <!-- Bootstrap 5.3 CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                crossorigin="anonymous">
            <!-- Google Fonts: Inter & Material Symbols -->
            <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&display=swap"
                rel="stylesheet">
            <link
                href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap"
                rel="stylesheet">
            <!-- Custom Brand Styles -->
            <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashboard.css">
        </head>

        <body>

            <!-- Sidebar Include -->
            <jsp:include page="../includes/sidebar.jsp" />

            <!-- Navbar Include -->
            <jsp:include page="../includes/navbar.jsp" />

            <!-- Main Content Area -->
            <main class="main-content">

                <!-- Page Header -->
                <div class="d-flex flex-column flex-sm-row align-items-sm-center justify-content-between gap-3 mb-4">
                    <div>
                        <h1 class="h2 fw-bold mb-1">Directorio de Clientes</h1>
                        <p class="text-secondary mb-0">Gestiona la lista de socios y sus estados de contrato.</p>
                    </div>
                    <button class="btn btn-primary d-flex align-items-center gap-2 py-2 px-3 rounded-pill"
                        data-bs-toggle="modal" data-bs-target="#modalNuevoCliente">
                        <span class="material-symbols-outlined fs-5">person_add</span>
                        Nuevo Cliente
                    </button>
                </div>

                <!-- Stats Bar -->
                <div class="row g-3 mb-4">
                    <div class="col-12 col-md-4">
                        <div class="stat-card h-100">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <p class="text-secondary text-uppercase small fw-bold mb-1">Total Clientes</p>
                                    <h3 class="mb-0 fw-bold">842</h3>
                                    <p class="text-success small mt-1 mb-0 d-flex align-items-center gap-1"
                                        style="color: #87f4f0 !important;">
                                        <span class="material-symbols-outlined fs-6">trending_up</span>
                                        +12% vs mes anterior
                                    </p>
                                </div>
                                <div class="logo-icon bg-opacity-10">
                                    <span class="material-symbols-outlined"
                                        style="color: var(--on-primary);">groups</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="stat-card h-100" style="border-left: 4px solid var(--secondary-container);">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <p class="text-secondary text-uppercase small fw-bold mb-1">Nuevos (Semana)</p>
                                    <h3 class="mb-0 fw-bold">24</h3>
                                    <p class="text-secondary small mt-1 mb-0">Crecimiento constante</p>
                                </div>
                                <div class="logo-icon bg-opacity-10" style="background: var(--secondary-container);">
                                    <span class="material-symbols-outlined" style="color: white;">person_add</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-4">
                        <div class="stat-card h-100" style="border-left: 4px solid #ff5451;">
                            <div class="d-flex justify-content-between align-items-start">
                                <div>
                                    <p class="text-secondary text-uppercase small fw-bold mb-1">Vencimientos Próximos
                                    </p>
                                    <h3 class="mb-0 fw-bold">18</h3>
                                    <p class="small mt-1 mb-0 d-flex align-items-center gap-1"
                                        style="color: #ffb4ab !important;">
                                        <span class="material-symbols-outlined fs-6">schedule</span>
                                        En los próximos 7 días
                                    </p>
                                </div>
                                <div class="logo-icon bg-opacity-10" style="background: #93000a;">
                                    <span class="material-symbols-outlined" style="color: white;">warning</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Workspace Area -->
                <div class="card-workspace shadow-sm overflow-hidden">
                    <!-- Table Header Filters -->
                    <div class="card-header">
                        <div class="row g-3 align-items-center">
                            <div class="col-12 col-md-6 col-lg-4">
                                <div class="position-relative">
                                    <span
                                        class="material-symbols-outlined position-absolute top-50 translate-middle-y start-0 ms-3 text-secondary"
                                        style="font-size: 18px;">search</span>
                                    <input type="text" class="form-control ps-5 rounded-pill"
                                        placeholder="Buscar por nombre o documento...">
                                </div>
                            </div>
                            <div class="col-12 col-md-6 col-lg-8 text-md-end">
                                <div class="d-flex flex-wrap gap-2 justify-content-md-end">
                                    <select class="form-select w-auto rounded-pill">
                                        <option value="">Tipo de Membresía</option>
                                        <option>1 Mes</option>
                                        <option>12 Meses</option>
                                    </select>
                                    <select class="form-select w-auto rounded-pill">
                                        <option value="">Estado Contrato</option>
                                        <option>Activo</option>
                                        <option>Vencido</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Client Table -->
                    <div class="table-responsive">
                        <table class="table table-hover mb-0">
                            <thead>
                                <tr>
                                    <th class="px-4">Cliente</th>
                                    <th>Documento</th>
                                    <th>Membresía</th>
                                    <th>Vencimiento</th>
                                    <th>Estado</th>
                                    <th class="px-4 text-end">Acciones</th>
                                </tr>
                            </thead>
                            <tbody class="border-top-0">
                                <!-- Row 1 -->
                                <tr>
                                    <td class="px-4">
                                        <div class="d-flex align-items-center gap-3">
                                            <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuA9uJURNPnLtkBYsQYkAf0gs8QXM-HUL8CziqpgZgsyG_C035SLPF3XMQtob0reuamk6cYm2500wkAKS1SB7Nogb6PwOnkD4_d-QpzfMD0z-N9QaaQIl1bQHmXWAFumkO44GxB6YF97rzRgRiRfxHR0tZoYCfTja4ALveBPJE53PqDaH0nAJoUiqDhAQWwL-BzU1qc-jM0UEs9wdW6OYbqXv9tDa3KFRwjjbIbT07TXzsndmJeqQmVPf82fWG2t6Zz9PjsinmnOTzc"
                                                class="rounded-circle border border-secondary"
                                                style="width: 32px; height: 32px; object-fit: cover;">
                                            <div>
                                                <p class="mb-0 fw-semibold">Elena Rodríguez</p>
                                                <small class="text-secondary">elena.r@example.com</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-secondary">DNI - 1029384</td>
                                    <td>1 Mes</td>
                                    <td class="text-secondary">15 Nov 2024</td>
                                    <td><span class="badge bg-success px-2 py-1">ACTIVO</span></td>
                                    <td class="px-4 text-end">
                                        <div class="d-flex justify-content-end gap-1">
                                            <button class="btn btn-link text-secondary p-1" title="Ver Perfil"><span
                                                    class="material-symbols-outlined fs-6">person</span></button>
                                            <button class="btn btn-link text-secondary p-1" title="Editar"
                                                data-bs-toggle="modal" data-bs-target="#modalEditarCliente">
                                                <span class="material-symbols-outlined fs-6">edit</span>
                                            </button>
                                            <button class="btn btn-link text-secondary p-1" title="Contrato"
                                                data-bs-toggle="modal" data-bs-target="#modalHistorialContratos">
                                                <span class="material-symbols-outlined fs-6">description</span>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <!-- Row 2 -->
                                <tr>
                                    <td class="px-4">
                                        <div class="d-flex align-items-center gap-3">
                                            <div class="rounded-circle d-flex align-items-center justify-content-center fw-bold"
                                                style="width: 32px; height: 32px; font-size: 11px; background: var(--surface-container-highest); color: var(--on-surface-variant); border: 1px solid var(--outline-variant);">
                                                MC</div>
                                            <div>
                                                <p class="mb-0 fw-semibold">Mateo Cruz</p>
                                                <small class="text-secondary">m.cruz@example.com</small>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-secondary">CE - 9382711</td>
                                    <td>12 Meses</td>
                                    <td class="text-secondary">02 Oct 2023</td>
                                    <td><span class="badge bg-danger px-2 py-1">VENCIDO</span></td>
                                    <td class="px-4 text-end">
                                        <div class="d-flex justify-content-end gap-1">
                                            <button class="btn btn-link text-secondary p-1" title="Ver Perfil"><span
                                                    class="material-symbols-outlined fs-6">person</span></button>
                                            <button class="btn btn-link text-secondary p-1" title="Editar"
                                                data-bs-toggle="modal" data-bs-target="#modalEditarCliente">
                                                <span class="material-symbols-outlined fs-6">edit</span>
                                            </button>
                                            <button class="btn btn-link text-secondary p-1" title="Contrato"
                                                data-bs-toggle="modal" data-bs-target="#modalHistorialContratos">
                                                <span class="material-symbols-outlined fs-6">description</span>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- Footer Pagination -->
                    <div class="card-footer border-top p-3">
                        <div class="d-flex align-items-center justify-content-between text-secondary small">
                            <span>Mostrando 1-2 de 842</span>
                            <nav>
                                <ul class="pagination pagination-sm mb-0">
                                    <li class="page-item disabled"><a
                                            class="page-link bg-transparent border-secondary text-secondary"
                                            href="#">Anterior</a></li>
                                    <li class="page-item active"><a
                                            class="page-link bg-primary border-primary text-on-primary" href="#">1</a>
                                    </li>
                                    <li class="page-item"><a
                                            class="page-link bg-transparent border-secondary text-secondary"
                                            href="#">2</a></li>
                                    <li class="page-item"><a
                                            class="page-link bg-transparent border-secondary text-secondary"
                                            href="#">Siguiente</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </main>

            <!-- Modal Nuevo Cliente -->
            <div class="modal fade" id="modalNuevoCliente" tabindex="-1" aria-labelledby="modalNuevoClienteLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content shadow-lg">
                        <div class="modal-header pt-4 px-4">
                            <h5 class="modal-title fw-bold" id="modalNuevoClienteLabel">Registrar Nuevo Cliente</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4">
                            <form id="formNuevoCliente">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" placeholder="Nombre"
                                            required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" placeholder="Apellido"
                                            required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Tipo Documento</label>
                                        <select class="form-select" name="id_TipoDocumento" required>
                                            <option value="" disabled selected>Seleccione...</option>
                                            <option value="DNI">DNI</option>
                                            <option value="CE">Carnet de Extranjería</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Número de
                                            Documento</label>
                                        <input type="text" class="form-control" name="numero_documento"
                                            placeholder="Ingrese número" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Correo
                                            Electrónico</label>
                                        <input type="email" class="form-control" name="email"
                                            placeholder="ejemplo@correo.com">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Teléfono</label>
                                        <input type="tel" class="form-control" name="telefono" placeholder="+51 ...">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Fecha de
                                            Nacimiento</label>
                                        <input type="date" class="form-control" name="fecha_nacimiento">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Género</label>
                                        <select class="form-select" name="genero">
                                            <option value="" disabled selected>Seleccione...</option>
                                            <option value="Masculino">Masculino</option>
                                            <option value="Femenino">Femenino</option>
                                            <option value="Otro">Otro</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer border-top-0 pb-4 px-4">
                            <button type="button" class="btn btn-outline-secondary px-4 rounded-pill"
                                data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" form="formNuevoCliente"
                                class="btn btn-primary px-4 rounded-pill">Guardar
                                Cliente</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Editar Cliente -->
            <div class="modal fade" id="modalEditarCliente" tabindex="-1" aria-labelledby="modalEditarClienteLabel"
                aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content shadow-lg">
                        <div class="modal-header pt-4 px-4">
                            <h5 class="modal-title fw-bold" id="modalEditarClienteLabel">Editar Información del Cliente
                            </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4">
                            <form id="formEditarCliente">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" value="Elena" required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" value="Rodríguez"
                                            required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Tipo Documento</label>
                                        <select class="form-select" name="id_TipoDocumento" required>
                                            <option value="DNI" selected>DNI</option>
                                            <option value="CE">Carnet de Extranjería</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Número de
                                            Documento</label>
                                        <input type="text" class="form-control" name="numero_documento" value="1029384"
                                            required>
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Correo
                                            Electrónico</label>
                                        <input type="email" class="form-control" name="email"
                                            value="elena.r@example.com">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Teléfono</label>
                                        <input type="tel" class="form-control" name="telefono" value="+51 987654321">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Fecha de
                                            Nacimiento</label>
                                        <input type="date" class="form-control" name="fecha_nacimiento"
                                            value="1995-08-15">
                                    </div>
                                    <div class="col-md-6">
                                        <label class="form-label small text-secondary fw-bold text-uppercase"
                                            style="font-size: 0.65rem; letter-spacing: 0.05em;">Género</label>
                                        <select class="form-select" name="genero">
                                            <option value="Femenino" selected>Femenino</option>
                                            <option value="Masculino">Masculino</option>
                                            <option value="Otro">Otro</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer border-top-0 pb-4 px-4">
                            <button type="button" class="btn btn-outline-secondary px-4 rounded-pill"
                                data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" form="formEditarCliente"
                                class="btn btn-primary px-4 rounded-pill">Actualizar Cambios</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal Historial de Contratos -->
            <div class="modal fade" id="modalHistorialContratos" tabindex="-1"
                aria-labelledby="modalHistorialContratosLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content shadow-lg">
                        <div class="modal-header pt-4 px-4">
                            <h5 class="modal-title fw-bold" id="modalHistorialContratosLabel">Historial de Contratos
                            </h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Membresía</th>
                                            <th>Fecha Inicio</th>
                                            <th>Fecha Fin</th>
                                            <th>Monto</th>
                                            <th>Estado</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1 Mes (Elite)</td>
                                            <td class="text-secondary">15/10/2024</td>
                                            <td class="text-secondary">15/11/2024</td>
                                            <td>S/ 150.00</td>
                                            <td><span class="badge bg-success px-2 py-1">ACTIVO</span></td>
                                        </tr>
                                        <tr>
                                            <td>1 Mes (Elite)</td>
                                            <td class="text-secondary">15/09/2024</td>
                                            <td class="text-secondary">15/10/2024</td>
                                            <td>S/ 150.00</td>
                                            <td><span class="badge bg-secondary px-2 py-1"
                                                    style="background-color: rgba(255,255,255,0.05) !important; color: var(--on-surface-variant) !important;">FINALIZADO</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="modal-footer border-top-0 pb-4 px-4">
                            <button type="button" class="btn btn-outline-secondary px-4 rounded-pill"
                                data-bs-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap Bundle with Popper -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                crossorigin="anonymous"></script>
        </body>

        </html>