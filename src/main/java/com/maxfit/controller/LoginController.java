package com.maxfit.controller;
 
 import com.maxfit.service.StaticAuthentication;
 import com.maxfit.view.ViewRoutes;
 
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import java.io.IOException;
 import java.util.Optional;
 
 /**
  * Login: GET muestra el formulario; POST valida credenciales y redirige al dashboard si es exitoso.
  */
 public class LoginController extends AbstractController {
 
     @Override
     protected void doGet(HttpServletRequest req, HttpServletResponse resp)
             throws ServletException, IOException {
         renderView(req, resp, ViewRoutes.AUTH_LOGIN);
     }
 
     @Override
     protected void doPost(HttpServletRequest req, HttpServletResponse resp)
             throws ServletException, IOException {
         req.setCharacterEncoding("UTF-8");
         String email = req.getParameter("email");
         String password = req.getParameter("password");
 
         Optional<StaticAuthentication.User> userOpt = StaticAuthentication.validateCredentials(email, password);
         if (userOpt.isPresent()) {
             StaticAuthentication.User user = userOpt.get();
             // Guardar info en sesión
             req.getSession().setAttribute("userName", user.getName());
             req.getSession().setAttribute("userRole", user.getRole());
             
             // Redirigir al dashboard
             resp.sendRedirect(req.getContextPath() + "/dashboard");
         } else {
             req.setAttribute("loginError", "Correo o contraseña incorrectos.");
             renderView(req, resp, ViewRoutes.AUTH_LOGIN);
         }
     }
 }
