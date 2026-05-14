package com.maxfit.controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Base mínima para controladores: centraliza el forward a la capa vista (JSP).
 */
public abstract class AbstractController extends HttpServlet {
 
     protected final void renderView(HttpServletRequest req, HttpServletResponse resp, String jspViewPath)
             throws ServletException, IOException {
         req.getRequestDispatcher(jspViewPath).forward(req, resp);
     }
 }
