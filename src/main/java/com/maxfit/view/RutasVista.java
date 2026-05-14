package com.maxfit.view;

/**
 * Rutas de la capa vista (V de MVC): JSP bajo {@code WEB-INF/vistas} para que
 * solo se sirvan por {@code forward} desde controladores, no por URL directa.
 */
public final class RutasVista {

    private RutasVista() {
    }

    public static final String HOME_INICIO = "/WEB-INF/vistas/home/inicio.jsp";
    public static final String EJEMPLO_DEMO = "/WEB-INF/vistas/ejemplo/demo.jsp";
    public static final String DEV_PRUEBA_CONEXION_BD = "/WEB-INF/vistas/dev/prueba-conexion-bd.jsp";
    public static final String AUTH_LOGIN = "/WEB-INF/vistas/auth/login.jsp";
}
