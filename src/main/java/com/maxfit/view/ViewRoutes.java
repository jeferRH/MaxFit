package com.maxfit.view;

/**
 * Rutas de la capa vista (V de MVC): JSP bajo {@code WEB-INF/vistas} para que
 * solo se sirvan por {@code forward} desde controladores, no por URL directa.
 */
public final class ViewRoutes {

    private ViewRoutes() {
    }

    public static final String HOME_INDEX = "/WEB-INF/views/home/index.jsp";
    public static final String AUTH_LOGIN = "/WEB-INF/views/auth/login.jsp";
    public static final String AUTH_FORGOT_PASSWORD = "/WEB-INF/views/auth/forgot-password.jsp";
    public static final String AUTH_DASHBOARD = "/WEB-INF/views/dashboard/dashboard.jsp";
    public static final String CLIENTS_INDEX = "/WEB-INF/views/clients/clients.jsp";
    public static final String SCHEDULES_INDEX = "/WEB-INF/views/schedules/schedules.jsp";
    public static final String MEMBERSHIPS_INDEX = "/WEB-INF/views/memberships/memberships.jsp";
    public static final String EMPLOYEES_INDEX = "/WEB-INF/views/employees/employees.jsp";
    public static final String REPORTS_INDEX = "/WEB-INF/views/reports/reports.jsp";
}
