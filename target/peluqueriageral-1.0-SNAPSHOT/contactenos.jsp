<%-- 
    Document   : contactenos
    Created on : 8/10/2024, 6:53:52 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contáctenos</title>
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
            color: #333;
            line-height: 1.6;
        }

        header {
            background-color: #440436;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        /* Estilos del formulario de contacto */
        .contact-form-container {
            max-width: 600px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form-container h2 {
            text-align: center;
            color: #440436;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="tel"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group textarea {
            height: 150px;
            resize: none;
        }

        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #440436;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .form-group button:hover {
            background-color: #94688d;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px 0;
            background-color: #440436;
            color: #fff;
            margin-top: 20px;
        }

        /* Responsividad */
        @media (max-width: 768px) {
            .contact-form-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Contáctenos</h1>
    </header>

    <main>
        <div class="contact-form-container">
            <h2>Envíanos un mensaje</h2>
            <form>
                <!-- Nombre -->
                <div class="form-group">
                    <label for="name">Nombre Completo</label>
                    <input type="text" id="name" name="name" placeholder="Ingresa tu nombre completo" required>
                </div>

                <!-- Correo electrónico -->
                <div class="form-group">
                    <label for="email">Correo Electrónico</label>
                    <input type="email" id="email" name="email" placeholder="Ingresa tu correo electrónico" required>
                </div>

                <!-- Teléfono -->
                <div class="form-group">
                    <label for="phone">Teléfono</label>
                    <input type="tel" id="phone" name="phone" placeholder="Ingresa tu número de teléfono">
                </div>

                <!-- Mensaje -->
                <div class="form-group">
                    <label for="message">Mensaje</label>
                    <textarea id="message" name="message" placeholder="Escribe tu mensaje aquí..." required></textarea>
                </div>

                <!-- Botón enviar -->
                <div class="form-group">
                    <button type="submit">Enviar Mensaje</button>
                </div>
            </form>
        </div>
    </main>

    <footer>
        <p>Peluquería Geral © 2024 Tienda Online. </p>
       
        <p>Todos los derechos reservados.</p>
    </footer>
</body>
</html>
