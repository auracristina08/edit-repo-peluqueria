<%-- 
    Document   : productos
    Created on : 8/10/2024, 6:03:48 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
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
            padding: 10px 0;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        .categories-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .category {
            background-color: #94688d;
            border-radius: 10px;
            width: 30%;
            margin: 15px 0;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center; /* Centrar imagen y texto */
        }

        .category h2 {
            color: #fff;
            margin-bottom: 15px;
        }

        .category img {
            max-width: 100%; /* Imagen responsiva */
            height: auto;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .subcategories {
            list-style-type: none;
            padding: 0;
        }

        .subcategories li {
            margin-bottom: 10px;
        }

        .subcategories li a {
            text-decoration: none;
            color: #440436;
            background-color: #fff;
            padding: 10px;
            display: block;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .subcategories li a:hover {
            background-color: #f0e4ef;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #440436;
            color: #fff;
            margin-top: 20px;
        }

        /* Responsividad */
        @media (max-width: 768px) {
            .category {
                width: 45%;
            }
        }

        @media (max-width: 480px) {
            .category {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Nuestras Categorías de Productos</h1>
    </header>

    <main class="categories-container">
        <!-- Categoría: Productos capilares -->
        <section class="category">
            <h2>Productos Capilares</h2>
            <!-- Imagen de la categoría -->
            <img src="https://saloninprofessional.com/wp-content/uploads/2022/01/beauty.jpg" alt="Productos Capilares">
            <ul class="subcategories">
                <li><a href="shampoo.jsp">Shampoo</a></li>
                <li><a href="acondicionador.jsp">Acondicionadores</a></li>
                <li><a href="tratamientos.jsp">Tratamientos</a></li>
                <li><a href="termoprotectores.jsp">Termoprotectores</a></li>
                <li><a href="ampollas_cap.jsp">Ampollas Capilares</a></li>
                <li><a href="matizantes.jsp">Matizantes</a></li>
                <li><a href="cepillos_sec.jsp">Cepillos Secadores</a></li>
            </ul>
        </section>

        <!-- Categoría: Productos Corporales -->
        <section class="category">
            <h2>Productos Corporales</h2>
            <!-- Imagen de la categoría -->
            <img src="https://i.pinimg.com/originals/ad/8e/00/ad8e009d1e618eac799343a7949b88c3.jpg" alt="Productos Corporales">
            <ul class="subcategories">
                <li><a href="perfumes.jsp">Perfumes</a></li>
                <li><a href="cremas.jsp">Cremas</a></li>
                <li><a href="jabones.jsp">Jabones</a></li>
                <li><a href="exfoliantes.jsp">Exfoliantes</a></li>
            </ul>
        </section>

        <!-- Categoría: Accesorios -->
        <section class="category">
            <h2>Accesorios</h2>
            <!-- Imagen de la categoría -->
            <img src="https://i.pinimg.com/736x/b7/a2/52/b7a252753e01eb46f08cccf7f5e8ee14--nice-php.jpg" alt="Accesorios">
            <ul class="subcategories">
                <li><a href="ganchos.jsp">Ganchos</a></li>
                <li><a href="collares.jsp">Collares</a></li>
                <li><a href="aretes.jsp">Aretes</a></li>
                <li><a href="moñas.jsp">Moñas</a></li>
            </ul>
        </section>
    </main>

    <footer>
        <p>© 2024 Tienda Online</p>
    </footer>
</body>
</html>
