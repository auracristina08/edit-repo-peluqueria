/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aurcr
 */
// Definir la URL del servlet
@WebServlet("/productos")
public class svproductos extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Método GET para cargar la página con las categorías
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Ejemplo de categorías simuladas. Podrían venir de la base de datos.
        List<String> productosCapilares = new ArrayList<>();
        productosCapilares.add("Shampoo");
        productosCapilares.add("Acondicionadores");
        productosCapilares.add("Tratamientos");
        productosCapilares.add("Termoprotectores");

        List<String> productosCorporales = new ArrayList<>();
        productosCorporales.add("Perfumes");
        productosCorporales.add("Cremas");
        productosCorporales.add("Jabones");
        productosCorporales.add("Exfoliantes");

        // Enviar las listas de productos a la JSP
        request.setAttribute("productosCapilares", productosCapilares);
        request.setAttribute("productosCorporales", productosCorporales);

        // Redirigir al JSP (productos.jsp)
        request.getRequestDispatcher("productos.jsp").forward(request, response);
    }

    // Método POST si se desea manejar formularios o envíos de datos
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Aquí se puede manejar el envío de datos desde la página, si es necesario.
    }
}
