/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aurcr
 */
@WebServlet(name = "passwordrec", urlPatterns = {"/passwordrec"})
public class passwordrec extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if ("requestRecovery".equals(action)) {
            String email = request.getParameter("email");

            // Verificar si el email está registrado en la base de datos
            // (Lógica para verificar en base de datos)
            // Si el email es válido, genera un token y guarda en la base de datos
            String token = generateToken(); // Genera un token único
            // Guarda el token en la base de datos junto con el email y el tiempo de expiración

            // Envía el enlace al correo del usuario
            String resetLink = "http://yourdomain.com/reset-password.jsp?token=" + token;
            sendRecoveryEmail(email, resetLink); // Envía el correo con el enlace

            request.getSession().setAttribute("success", "Revisa tu correo para restablecer tu contraseña.");
            response.sendRedirect("inicio_sesion.jsp"); // Redirige al usuario a la página de inicio de sesión
        }
    }

    private String generateToken() {
        // Genera un token seguro, podrías usar UUID o algún método de generación de token
        return java.util.UUID.randomUUID().toString();
    }

    private void sendRecoveryEmail(String email, String link) {
        // Implementa la lógica para enviar el correo con el enlace de recuperación
        // Puede ser mediante JavaMail API o algún servicio de correo
    }
}
