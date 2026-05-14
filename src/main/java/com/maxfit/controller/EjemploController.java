package com.maxfit.controller;

import com.maxfit.view.RutasVista;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Controlador de ejemplo: prepara datos y delega en la vista.
 */
public class EjemploController extends AbstractControlador {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("mensaje", "Hola desde el controlador (GET). Patrón MVC.");
        mostrarVista(req, resp, RutasVista.EJEMPLO_DEMO);
    }
}
