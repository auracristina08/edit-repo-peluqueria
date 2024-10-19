/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.DriverManager;
import validaciones.svalidaciones;

/**
 *
 * @author aurcr
 */
@WebServlet("/inicio_sesion")
public class svinicio_sesion extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");

        // Validar que los campos de email y password no estén vacíos
        if (email == null || email.trim().isEmpty()) {
            request.setAttribute("error", "El campo de correo electrónico es obligatorio.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        if (password == null || password.trim().isEmpty()) {
            request.setAttribute("error", "El campo de contraseña es obligatorio.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Validar que los campos de nombres y apellidos no estén vacíos (si aplica)
        if (nombres == null || nombres.trim().isEmpty()) {
            request.setAttribute("error", "El campo de nombres es obligatorio.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        if (apellidos == null || apellidos.trim().isEmpty()) {
            request.setAttribute("error", "El campo de apellidos es obligatorio.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Validar formato de correo electrónico
        String emailPattern = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        if (!email.matches(emailPattern)) {
            request.setAttribute("error", "El correo electrónico no tiene un formato válido.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Validar que los nombres y apellidos no contengan números
        String namePattern = "^[a-zA-ZáéíóúÁÉÍÓÚñÑ\\s]+$";
        if (!nombres.matches(namePattern)) {
            request.setAttribute("error", "El campo de nombres solo debe contener letras.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        if (!apellidos.matches(namePattern)) {
            request.setAttribute("error", "El campo de apellidos solo debe contener letras.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        // Validación simulada de credenciales correctas
        if (email.equals("usuario@ejemplo.com") && password.equals("123456")) {
            response.sendRedirect("bienvenido.jsp");
        } else {
            request.setAttribute("error", "Correo electrónico o contraseña incorrectos.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}



    




