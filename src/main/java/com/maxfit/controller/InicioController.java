package com.maxfit.controller;

import com.maxfit.view.RutasVista;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Controlador (C de MVC): pantalla de inicio.
 */
public class InicioController extends AbstractControlador {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        mostrarVista(req, resp, RutasVista.HOME_INICIO);
    }
}
