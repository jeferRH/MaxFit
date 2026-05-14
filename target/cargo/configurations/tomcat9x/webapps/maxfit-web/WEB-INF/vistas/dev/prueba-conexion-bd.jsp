<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Properties" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Prueba JDBC</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/estilos.css">
</head>
<body>
  <h1>Prueba de conexión SQL Server</h1>
  <p><a href="${pageContext.request.contextPath}/inicio">Volver al inicio</a></p>
<%
  Properties p = new Properties();
  try (InputStream in = application.getResourceAsStream("/WEB-INF/classes/db.properties")) {
    if (in == null) {
      out.println("<p class=\"error\">No se encontró <code>db.properties</code> en el classpath. " +
          "Copia <code>db.properties.example</code> a <code>src/main/resources/db.properties</code>.</p>");
    } else {
      p.load(in);
      String url = p.getProperty("jdbc.url");
      String user = p.getProperty("jdbc.user");
      String pass = p.getProperty("jdbc.password");
      Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
      try (Connection c = DriverManager.getConnection(url, user, pass);
           Statement st = c.createStatement();
           ResultSet rs = st.executeQuery("SELECT 1 AS ok")) {
        rs.next();
        out.println("<p class=\"ok\">Conexión correcta. SQL Server respondió: <strong>" + rs.getInt("ok") + "</strong></p>");
      }
    }
  } catch (Exception e) {
    out.println("<p class=\"error\">Error: " + e.getMessage() + "</p>");
  }
%>
</body>
</html>
