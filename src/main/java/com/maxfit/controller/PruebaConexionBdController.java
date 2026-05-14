package com.maxfit.controller;

import com.maxfit.view.RutasVista;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Controlador (solo ruta): la lógica JDBC sigue en la JSP de desarrollo;
 * cuando retomes el back, muévela a {@code service} / {@code dao}.
 */
public class PruebaConexionBdController extends AbstractControlador {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        mostrarVista(req, resp, RutasVista.DEV_PRUEBA_CONEXION_BD);
    }
}
