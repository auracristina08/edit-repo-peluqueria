<%-- 
    Document   : login
    Created on : 3/11/2024, 2:47:03 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Inicio de Sesión</title>
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

        input {
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
            width: 100%; /* Asegúrate de que el botón ocupe todo el ancho */
        }

        button:hover {
            background-color: #5a0645;
        }
    </style>

</head>

<body>
    <div class="container">
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
            <button type="submit">Iniciar Sesión</button>
        </form>
        <!-- Enlaces a los otros formularios -->
        <a href="forgot_password.jsp">¿Olvidaste tu contraseña?</a>
        <a href="registrar.jsp">¿No tienes cuenta? Regístrate aquí</a>
    </div>
</body>
</html>

