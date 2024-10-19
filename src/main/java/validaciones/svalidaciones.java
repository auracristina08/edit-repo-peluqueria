/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package validaciones;


import javax.servlet.annotation.WebServlet;
import java.util.regex.Pattern;

/**
 *
 * @author aurcr
 */
@WebServlet("/svalidaciones")
public class svalidaciones{

    // Método para validar el correo electrónico
    public static boolean isValidEmail(String email) {
        String emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";
        return Pattern.matches(emailRegex, email);
    }

    // Método para validar contraseñas
    public static boolean isValidPassword(String password) {
        // Ejemplo: al menos 8 caracteres, al menos una letra y un número
        String passwordRegex = "^(?=.*[a-zA-Z])(?=.*\\d).{8,}$";
        return Pattern.matches(passwordRegex, password);
    }

    // Método para validar nombres (solo letras)
    public static boolean isValidName(String name) {
        String nameRegex = "^[a-zA-ZÀ-ÿ\\s]+$"; // Incluye caracteres acentuados
        return Pattern.matches(nameRegex, name);
    }

    // Método para validar la cédula (solo números)
    public static boolean isValidCedula(String cedula) {
        String cedulaRegex = "^[0-9]+$";
        return Pattern.matches(cedulaRegex, cedula);
    }

    // Método para validar el teléfono (números y longitud)
    public static boolean isValidPhone(String phone) {
        return phone.length() >= 7 && phone.length() <= 15 && phone.matches("\\d+");
    }

    // Método para validar fechas (formato simple)
    public static boolean isValidDate(String date) {
        // Aquí puedes agregar validaciones adicionales según sea necesario
        return true; // Cambia esto si implementas validaciones de fecha
    }
}
