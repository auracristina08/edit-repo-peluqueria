<%-- 
    Document   : forgot_password
    Created on : 2/11/2024, 5:08:18 p. m.
    Author     : aurcr
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restablecer Contraseña</title>
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
        <h2>Restablecer Contraseña</h2>
        <form action="PasswordRecoveryServlet" method="post" onsubmit="return validateForm()">
            <input type="hidden" name="action" value="resetPassword">
            <input type="hidden" name="token" value="${param.token}">

            <!-- Campo para ingresar el correo electrónico -->
            <div class="form-group">
                <label for="email">Correo Electrónico:</label>
                <input type="email" id="email" name="email" required>
            </div>

            <!-- Campo para confirmar el correo electrónico -->
            <div class="form-group">
                <label for="confirm-email">Confirmar Correo Electrónico:</label>
                <input type="email" id="confirm-email" name="confirm-email" required>
            </div>

            <!-- Campo para la nueva contraseña -->
            <div class="form-group">
                <label for="new-password">Nueva Contraseña:</label>
                <input type="password" id="new-password" name="new-password" required>
            </div>

            <!-- Campo para confirmar la nueva contraseña -->
            <div class="form-group">
                <label for="confirm-password">Confirmar Nueva Contraseña:</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
            </div>

            <button type="submit">Restablecer Contraseña</button>
        </form>
    </div>
</body>
</html>
