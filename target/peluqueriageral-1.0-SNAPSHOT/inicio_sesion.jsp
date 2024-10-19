<%-- 
    Document   : inicio_sesion
    Created on : 8/10/2024, 5:18:41 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro e Inicio de Sesión</title>
    <style>
        /* Estilos generales */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #94668d; /* Color de fondo del formulario */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #440436; /* Color del texto del título */
        }

        .form-group {
            margin-bottom: 10px;
        }

        label {
            font-weight: bold;
            color: #fff;
        }

        input, select {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
        }

        button {
            padding: 10px;
            background-color: #440436;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #5a0645;
        }

        .toggle-link {
            color: #440436;
            cursor: pointer;
            text-align: center;
            display: block;
            margin-top: 10px;
        }

        .message {
            color: red; /* O verde para mensajes de éxito */
            text-align: center;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Mostrar mensajes de error o éxito -->
        <c:if test="${not empty sessionScope.error}">
            <div class="message">${sessionScope.error}</div>
            <c:remove var="error" scope="session"/>
        </c:if>
        <c:if test="${not empty sessionScope.success}">
            <div class="message" style="color: green;">${sessionScope.success}</div>
            <c:remove var="success" scope="session"/>
        </c:if>

        <!-- Formulario de Inicio de Sesión (se muestra por defecto) -->
        <div id="login-form" class="form-section">
            <h2>Inicio de Sesión</h2>
            <form action="UserServlet" method="post">
                <input type="hidden" name="action" value="login">
                <div class="form-group">
                    <label for="email-login">Correo Electrónico:</label>
                    <input type="email" id="email-login" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password-login">Contraseña:</label>
                    <input type="password" id="password-login" name="password" required>
                </div>
                <button type="submit" class="login-btn">Iniciar Sesión</button>
            </form>
            <a class="toggle-link" onclick="toggleForms()">¿No tienes cuenta? Regístrate aquí</a>
        </div>

        <!-- Formulario de Registro (inicialmente oculto) -->
        <div id="register-form" class="form-section" style="display: none;">
            <h2>Registro de Usuario</h2>
            <form action="UserServlet" method="post">
                <input type="hidden" name="action" value="register">
                <div class="form-group">
                    <label for="nombres">Nombres:</label>
                    <input type="text" id="nombres" name="nombres" required>
                </div>
                <div class="form-group">
                    <label for="apellidos">Apellidos:</label>
                    <input type="text" id="apellidos" name="apellidos" required>
                </div>
                <div class="form-group">
                    <label for="tipo-cedula">Tipo de Cédula:</label>
                    <select id="tipo-cedula" name="tipo-cedula" required>
                        <option value="CC">Cédula de Ciudadanía</option>
                        <option value="TI">Tarjeta de Identidad</option>
                        <option value="CE">Cédula de Extranjería</option>
                        <option value="PAS">Pasaporte</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="cedula">Cédula:</label>
                    <input type="text" id="cedula" name="cedula" required>
                </div>
                <div class="form-group">
                    <label for="fecha-nacimiento">Fecha de Nacimiento:</label>
                    <input type="date" id="fecha-nacimiento" name="fecha-nacimiento" required>
                </div>
                <div class="form-group">
                    <label for="email">Correo Electrónico:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="direccion">Dirección:</label>
                    <input type="text" id="direccion" name="direccion" required>
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono:</label>
                    <input type="tel" id="telefono" name="telefono" required>
                </div>
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="form-group">
                    <label for="confirm-password">Confirmar Contraseña:</label>
                    <input type="password" id="confirm-password" name="confirm-password" required>
                </div>
                <button type="submit" class="register-btn">Completar Registro</button>
            </form>
            <a class="toggle-link" onclick="toggleForms()">¿Ya tienes cuenta? Inicia sesión aquí</a>
        </div>
    </div>

    <script>
        function toggleForms() {
            var loginForm = document.getElementById('login-form');
            var registerForm = document.getElementById('register-form');

            if (loginForm.style.display === "none") {
                loginForm.style.display = "block";
                registerForm.style.display = "none";
            } else {
                loginForm.style.display = "none";
                registerForm.style.display = "block";
            }
        }
       // Validación de formulario de inicio de sesión
    document.querySelector('.login-btn').addEventListener('click', function(event) {
        var email = document.getElementById('email-login').value;
        var password = document.getElementById('password-login').value;

        // Validar email
        if (!validateEmail(email)) {
            alert("Por favor, introduce un correo electrónico válido.");
            event.preventDefault(); // Detiene el envío del formulario
        }

        // Validar contraseña (mínimo 6 caracteres)
        if (password.length < 6) {
            alert("La contraseña debe tener al menos 6 caracteres.");
            event.preventDefault();
        }
    });

    // Validación de formulario de registro
    document.querySelector('.register-btn').addEventListener('click', function(event) {
        var nombres = document.getElementById('nombres').value;
        var apellidos = document.getElementById('apellidos').value;
        var cedula = document.getElementById('cedula').value;
        var fechaNacimiento = document.getElementById('fecha-nacimiento').value;
        var email = document.getElementById('email').value;
        var telefono = document.getElementById('telefono').value;
        var password = document.getElementById('password').value;
        var confirmPassword = document.getElementById('confirm-password').value;

        // Validar que los nombres no estén vacíos
        if (nombres.trim() === "") {
            alert("Por favor, introduce tus nombres.");
            event.preventDefault();
        }

        // Validar que los apellidos no estén vacíos
        if (apellidos.trim() === "") {
            alert("Por favor, introduce tus apellidos.");
            event.preventDefault();
        }

        // Validar cédula (solo números, longitud mínima 6 caracteres)
        if (!/^\d{6,}$/.test(cedula)) {
            alert("La cédula debe contener solo números y tener al menos 6 dígitos.");
            event.preventDefault();
        }

        // Validar fecha de nacimiento (no debe estar vacía)
        if (!fechaNacimiento) {
            alert("Por favor, selecciona tu fecha de nacimiento.");
            event.preventDefault();
        }

        // Validar email
        if (!validateEmail(email)) {
            alert("Por favor, introduce un correo electrónico válido.");
            event.preventDefault();
        }

        // Validar teléfono (solo números y al menos 7 caracteres)
        if (!/^\d{7,}$/.test(telefono)) {
            alert("El teléfono debe contener solo números y tener al menos 7 dígitos.");
            event.preventDefault();
        }

        // Validar contraseña (mínimo 6 caracteres)
        if (password.length < 6) {
            alert("La contraseña debe tener al menos 6 caracteres.");
            event.preventDefault();
        }

        // Validar confirmación de contraseña
        if (password !== confirmPassword) {
            alert("Las contraseñas no coinciden.");
            event.preventDefault();
        }
    });

    // Función para validar el formato del correo electrónico
    function validateEmail(email) {
        var re = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        return re.test(String(email).toLowerCase());
    } 
    </script>
</body>
</html>

