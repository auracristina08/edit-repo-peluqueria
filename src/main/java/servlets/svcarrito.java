/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author aurcr
 */
// Definir la URL del servlet
@WebServlet("/carrito")
public class svcarrito extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Método GET para mostrar el carrito
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtener la sesión actual o crear una nueva
        HttpSession session = request.getSession();
        // Obtener el carrito de la sesión
        Map<String, Integer> carrito = (Map<String, Integer>) session.getAttribute("carrito");
        if (carrito == null) {
            carrito = new HashMap<>();
        }

        // Calcular el total de la compra
        double total = calcularTotal(carrito);

        // Enviar el carrito y el total a la JSP
        request.setAttribute("carrito", carrito);
        request.setAttribute("total", total);
        request.getRequestDispatcher("carrito.jsp").forward(request, response);
    }

    // Método POST para agregar productos o eliminar del carrito
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String producto = request.getParameter("producto");
        int cantidad = Integer.parseInt(request.getParameter("cantidad"));

        // Obtener la sesión actual
        HttpSession session = request.getSession();
        Map<String, Integer> carrito = (Map<String, Integer>) session.getAttribute("carrito");
        if (carrito == null) {
            carrito = new HashMap<>();
        }

        // Manejar acciones de agregar o eliminar
        if ("agregar".equals(action)) {
            carrito.put(producto, carrito.getOrDefault(producto, 0) + cantidad);
        } else if ("eliminar".equals(action)) {
            carrito.remove(producto);
        }

        // Actualizar el carrito en la sesión
        session.setAttribute("carrito", carrito);
        response.sendRedirect("carrito"); // Redirigir a la página del carrito
    }

    // Método para calcular el total de la compra
    private double calcularTotal(Map<String, Integer> carrito) {
        double total = 0.0;
        // Asumir precios para los productos
        Map<String, Double> precios = new HashMap<>();
        precios.put("Shampoo Hidratante", 20.00);
        precios.put("Acondicionador Reparador", 15.00);

        for (Map.Entry<String, Integer> entry : carrito.entrySet()) {
            String producto = entry.getKey();
            int cantidad = entry.getValue();
            total += precios.get(producto) * cantidad;
        }
        return total;
    }
}
