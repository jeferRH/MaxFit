package com.maxfit.service;

import java.util.Locale;
import java.util.Optional;

/**
 * Credenciales de demostración (sin BD). Sustituir por DAO cuando conectes SQL
 * Server.
 */
public final class StaticAuthentication {

    private StaticAuthentication() {
    }

    /**
     * Normaliza el campo correo: si no lleva @, se asume usuario corto (admin,
     * recepcionista, instructor).
     */
    public static String normalizeEmail(String rawEmail) {
        if (rawEmail == null) {
            return "";
        }
        String email = rawEmail.trim().toLowerCase(Locale.ROOT);
        if (email.isEmpty()) {
            return "";
        }
        if (!email.contains("@")) {
            email = email + "@maxfit.local";
        }
        return email;
    }

    public static class User {
        private final String name;
        private final String role;

        public User(String name, String role) {
            this.name = name;
            this.role = role;
        }

        public String getName() {
            return name;
        }

        public String getRole() {
            return role;
        }
    }

    /**
     * @return User object if credentials are valid
     */
    public static Optional<User> validateCredentials(String rawEmail, String password) {
        String email = normalizeEmail(rawEmail);
        String pass = password == null ? "" : password;

        if ("admin@email.com".equals(email) && "12345".equals(pass)) {
            return Optional.of(new User("Administrador", "Admin"));
        }
        if ("recepcionista@email.com".equals(email) && "12345".equals(pass)) {
            return Optional.of(new User("Recepcionista", "Recepcionista"));
        }
        if ("instructor@email.com".equals(email) && "12345".equals(pass)) {
            return Optional.of(new User("Instructor", "Instructor"));
        }
        return Optional.empty();
    }
}
