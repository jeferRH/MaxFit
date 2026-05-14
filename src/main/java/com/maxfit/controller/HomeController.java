package com.maxfit.controller;

import com.maxfit.view.ViewRoutes;
 
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import java.io.IOException;
 
 /**
  * Controlador (C de MVC): pantalla de inicio.
  */
 public class HomeController extends AbstractController {
 
     @Override
     protected void doGet(HttpServletRequest req, HttpServletResponse resp)
             throws ServletException, IOException {
         renderView(req, resp, ViewRoutes.HOME_INDEX);
     }
 }
