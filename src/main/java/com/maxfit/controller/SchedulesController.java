package com.maxfit.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SchedulesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String vista = request.getParameter("vista");

        if ("calendario".equals(vista)) {
            request.getRequestDispatcher("/WEB-INF/views/schedules/calendar.jsp")
                    .forward(request, response);
        } else {
            // Por defecto muestra el listado
            request.getRequestDispatcher("/WEB-INF/views/schedules/schedules.jsp")
                    .forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
