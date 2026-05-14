package com.maxfit.controller;

import com.maxfit.view.ViewRoutes;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Controlador de la sección de Horarios.
 */
public class SchedulesController extends AbstractController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("userName") == null) {
            resp.sendRedirect(req.getContextPath() + "/login");
            return;
        }

        String role = (String) session.getAttribute("userRole");
        if (!"Admin".equalsIgnoreCase(role) && !"Recepcionista".equalsIgnoreCase(role)) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "No tienes permiso para acceder a esta sección.");
            return;
        }

        req.setAttribute("activePage", "schedules");

        String path = req.getServletPath();
        String vista = req.getParameter("vista");

        if ("/calendar".equals(path) || "calendario".equals(vista)) {
            renderView(req, resp, ViewRoutes.SCHEDULES_CALENDAR);
        } else {
            renderView(req, resp, ViewRoutes.SCHEDULES_INDEX);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        doGet(req, resp);
    }
}
