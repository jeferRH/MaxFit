package com.maxfit.service;

import java.util.Locale;
import java.util.Optional;

/**
 * Credenciales de demostración (sin BD). Sustituir por DAO cuando conectes SQL Server.
 */
public final class AutenticacionEstatica {

    private AutenticacionEstatica() {
    }

    /**
     * Normaliza el campo correo: si no lleva @, se asume usuario corto (admin, recepcionista, instructor).
     */
    public static String normalizarCorreo(String correoRaw) {
        if (correoRaw == null) {
            return "";
        }
        String c = correoRaw.trim().toLowerCase(Locale.ROOT);
        if (c.isEmpty()) {
            return "";
        }
        if (!c.contains("@")) {
            c = c + "@maxfit.local";
        }
        return c;
    }

    /**
     * @return nombre para el mensaje de bienvenida si las credenciales son válidas
     */
    public static Optional<String> validarCredenciales(String correoRaw, String contrasena) {
        String correo = normalizarCorreo(correoRaw);
        String pass = contrasena == null ? "" : contrasena;

        if ("admin@maxfit.local".equals(correo) && "admin123".equals(pass)) {
            return Optional.of("Administrador");
        }
        if ("recepcionista@maxfit.local".equals(correo) && "recep123".equals(pass)) {
            return Optional.of("Recepcionista");
        }
        if ("instructor@maxfit.local".equals(correo) && "inst123".equals(pass)) {
            return Optional.of("Instructor");
        }
        return Optional.empty();
    }
}
