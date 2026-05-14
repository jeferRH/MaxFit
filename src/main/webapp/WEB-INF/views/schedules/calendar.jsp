<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>MaxFit - Calendario de Clases</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dashboard.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/calendar.css">
    </head>
    <body>
        <jsp:include page="../includes/sidebar.jsp" />
        <jsp:include page="../includes/navbar.jsp" />

        <main class="main-content d-flex flex-column" style="height: calc(100vh - 64px); overflow: hidden;">

            <!-- Page Header -->
            <div class="cal-header d-flex justify-content-between align-items-end">
                <div>
                    <h1 class="fw-bold mb-1">Calendario de Clases</h1>
                    <p class="text-secondary mb-0">Manage scheduling, instructors, and facility utilization.</p>
                </div>
                <div class="d-flex align-items-center gap-3">
                    <!-- Week / Month Toggle -->
                    <!-- Week / Month Toggle -->
                    <div class="view-toggle">
                        <button class="tab active">Week</button>
                        <button class="tab" onclick="window.location.href = '${pageContext.request.contextPath}/schedules?vista=lista'">
                            Month
                        </button>
                    </div>
                    <!-- Date Navigation -->
                    <div class="d-flex align-items-center gap-2">
                        <button class="cal-nav-btn" id="btn-prev">
                            <span class="material-symbols-outlined">chevron_left</span>
                        </button>
                        <span class="cal-date-label" id="date-label">Oct 23 - 29</span>
                        <button class="cal-nav-btn" id="btn-next">
                            <span class="material-symbols-outlined">chevron_right</span>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Calendar Grid Wrapper -->
            <div class="cal-wrap flex-fill">
                <div class="cal-grid-container d-flex flex-column h-100">

                    <!-- Days Header -->
                    <div class="cal-days-header">
                        <div class="cal-tz-cell">PST</div>
                        <div class="cal-day-col" id="hdr-mon"><span class="day-name">Mon</span><span class="day-num">23</span></div>
                        <div class="cal-day-col" id="hdr-tue"><span class="day-name">Tue</span><span class="day-num">24</span></div>
                        <div class="cal-day-col today" id="hdr-wed"><span class="day-name">Wed</span><span class="day-num">25</span><div class="today-dot"></div></div>
                        <div class="cal-day-col" id="hdr-thu"><span class="day-name">Thu</span><span class="day-num">26</span></div>
                        <div class="cal-day-col" id="hdr-fri"><span class="day-name">Fri</span><span class="day-num">27</span></div>
                        <div class="cal-day-col weekend" id="hdr-sat"><span class="day-name">Sat</span><span class="day-num">28</span></div>
                        <div class="cal-day-col weekend" id="hdr-sun"><span class="day-name">Sun</span><span class="day-num">29</span></div>
                    </div>

                    <!-- Scrollable Body -->
                    <div class="cal-body" id="cal-body">

                        <!-- Current time indicator -->
                        <div class="time-indicator" id="time-indicator">
                            <span class="time-indicator-label" id="time-indicator-label">08:30</span>
                            <div class="time-indicator-line">
                                <div class="time-indicator-dot"></div>
                            </div>
                        </div>

                        <!-- Grid rows -->
                        <div class="cal-grid">

                            <%-- ── 6 AM ── --%>
                            <div class="cal-time-cell"><span>6 AM</span></div>
                            <div class="cal-cell">
                                <%-- Forge HIIT – Red block --%>
                                <div class="cal-event cal-event--red">
                                    <div class="d-flex justify-content-between align-items-start mb-1">
                                        <span class="event-title">Forge HIIT</span>
                                        <span class="material-symbols-outlined event-icon">local_fire_department</span>
                                    </div>
                                    <div class="event-instructor">M. Chen</div>
                                    <div class="event-room">Studio A</div>
                                    <%-- Tooltip --%>
                                    <div class="event-tooltip">
                                        <div class="d-flex justify-content-between align-items-center pb-2 mb-2" style="border-bottom:1px solid rgba(255,255,255,.1);">
                                            <span class="fw-bold" style="font-size:13px;">Forge HIIT</span>
                                            <span class="event-badge event-badge--red">High Int</span>
                                        </div>
                                        <div class="d-flex justify-content-between" style="font-size:12px;">
                                            <span class="text-secondary">Enrollment:</span>
                                            <span class="fw-bold">22 / 24</span>
                                        </div>
                                        <div class="tooltip-bar-wrap mt-2">
                                            <div class="tooltip-bar" style="width:90%;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell">
                                <%-- Mobility – Orange block (offset) --%>
                                <div class="cal-event cal-event--orange" style="top:50%;">
                                    <div class="d-flex justify-content-between align-items-start mb-1">
                                        <span class="event-title">Mobility</span>
                                        <span class="material-symbols-outlined event-icon">self_improvement</span>
                                    </div>
                                    <div class="event-instructor">J. Davis</div>
                                    <div class="event-room">Turf Area</div>
                                </div>
                            </div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend"></div>

                            <%-- ── 7 AM ── --%>
                            <div class="cal-time-cell"><span>7 AM</span></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell">
                                <div class="cal-event cal-event--red">
                                    <div class="d-flex justify-content-between align-items-start mb-1">
                                        <span class="event-title">Forge HIIT</span>
                                        <span class="material-symbols-outlined event-icon">local_fire_department</span>
                                    </div>
                                    <div class="event-instructor">M. Chen</div>
                                </div>
                            </div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell">
                                <%-- Maintenance – locked block spanning 2h --%>
                                <div class="cal-event cal-event--locked" style="height:185px;">
                                    <span class="material-symbols-outlined mb-1" style="font-size:22px;">lock</span>
                                    <span class="event-title text-center" style="font-size:11px;">Maintenance</span>
                                </div>
                            </div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend"></div>

                            <%-- ── 8 AM ── --%>
                            <div class="cal-time-cell"><span>8 AM</span></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell">
                                <%-- Foundations – Orange multi-hour --%>
                                <div class="cal-event cal-event--orange" style="height:185px;">
                                    <div class="d-flex justify-content-between align-items-start mb-1">
                                        <span class="event-title">Foundations</span>
                                        <span class="material-symbols-outlined event-icon">fitness_center</span>
                                    </div>
                                    <div class="event-instructor">S. Miller</div>
                                    <div class="event-room">Main Floor</div>
                                    <div class="event-enroll mt-auto position-absolute" style="bottom:8px;left:8px;">
                                        <span class="enroll-dot"></span>
                                        <span>15/20 Enrolled</span>
                                    </div>
                                </div>
                            </div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend">
                                <%-- Weekend Warrior --%>
                                <div class="cal-event cal-event--red" style="top:16px;">
                                    <span class="event-title">Weekend Warrior</span>
                                    <div class="event-instructor">Team</div>
                                </div>
                            </div>

                            <%-- ── 9 AM ── --%>
                            <div class="cal-time-cell"><span>9 AM</span></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend"></div>

                            <%-- ── 10 AM ── --%>
                            <div class="cal-time-cell"><span>10 AM</span></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend"></div>

                            <%-- ── 11 AM ── --%>
                            <div class="cal-time-cell"><span>11 AM</span></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend"></div>

                            <%-- ── 12 PM ── --%>
                            <div class="cal-time-cell"><span>12 PM</span></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell"></div>
                            <div class="cal-cell weekend"></div>
                            <div class="cal-cell weekend"></div>

                        </div><%-- /cal-grid --%>
                    </div><%-- /cal-body --%>
                </div>
            </div>

        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            /* ── View toggle ── */
            document.querySelectorAll('.view-toggle .tab').forEach(btn => {
                btn.addEventListener('click', function () {
                    document.querySelectorAll('.view-toggle .tab').forEach(b => b.classList.remove('active'));
                    this.classList.add('active');
                });
            });

            /* ── Current time indicator ── */
            function updateTimeIndicator() {
                const now = new Date();
                const h = now.getHours();
                const m = now.getMinutes();
                const label = `${String(h).padStart(2,'0')}:${String(m).padStart(2,'0')}`;
                        const startH = 6; // grid starts at 6 AM
                        const rowPx = 100;
                        const topPx = ((h - startH) + m / 60) * rowPx;

                        const el = document.getElementById('time-indicator');
                        const lb = document.getElementById('time-indicator-label');
                        if (el)
                            el.style.top = topPx + 'px';
                        if (lb)
                            lb.textContent = label;
                    }
                    updateTimeIndicator();
                    setInterval(updateTimeIndicator, 60000);
        </script>
    </body>
</html>
