error id: file:///C:/Users/Jherson%20Silva/MaxFit/src/main/java/com/maxfit/controller/DashboardController.java:_empty_/ServletException#
file:///C:/Users/Jherson%20Silva/MaxFit/src/main/java/com/maxfit/controller/DashboardController.java
empty definition using pc, found symbol in pc: _empty_/ServletException#
empty definition using semanticdb
empty definition using fallback
non-local guesses:

offset: 456
uri: file:///C:/Users/Jherson%20Silva/MaxFit/src/main/java/com/maxfit/controller/DashboardController.java
text:
```scala
package com.maxfit.controller;

import com.maxfit.view.ViewRoutes;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class DashboardController extends AbstractController {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws Servl@@etException, IOException {
        
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

        req.setAttribute("userRole", role);
        req.setAttribute("activePage", "dashboard");
        renderView(req, resp, ViewRoutes.AUTH_DASHBOARD);
    }
}

```


#### Short summary: 

empty definition using pc, found symbol in pc: _empty_/ServletException#