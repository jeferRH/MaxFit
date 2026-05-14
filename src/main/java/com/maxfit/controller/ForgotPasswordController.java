package com.maxfit.controller;
 
 import com.maxfit.service.StaticAuthentication;
 import com.maxfit.view.ViewRoutes;
 
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import java.io.IOException;
 
 /**
  * Controlador para recuperar contraseña.
  */
 public class ForgotPasswordController extends AbstractController {
 
     @Override
     protected void doGet(HttpServletRequest req, HttpServletResponse resp)
             throws ServletException, IOException {
         renderView(req, resp, ViewRoutes.AUTH_FORGOT_PASSWORD);
     }
 
     @Override
     protected void doPost(HttpServletRequest req, HttpServletResponse resp)
             throws ServletException, IOException {
         req.setCharacterEncoding("UTF-8");
         String emailRaw = req.getParameter("email");
         String email = StaticAuthentication.normalizeEmail(emailRaw);
 
         // Simulación de envío de correo
         if (email != null && !email.isEmpty() && email.endsWith("@maxfit.local")) {
             req.setAttribute("successMessage", "Se han enviado las instrucciones a: " + email);
         } else {
             req.setAttribute("errorMessage", "El correo ingresado no está registrado en el sistema.");
         }
 
         renderView(req, resp, ViewRoutes.AUTH_FORGOT_PASSWORD);
     }
 }
