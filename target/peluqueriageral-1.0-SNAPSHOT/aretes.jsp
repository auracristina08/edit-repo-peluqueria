<%-- 
    Document   : aretes
    Created on : 11/10/2024, 10:33:45 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Collares</title>
    <style>
        /* Estilos generales */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
            margin: 0;
            padding: 0;
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

        .products-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .product {
            background-color: #fff;
            border-radius: 10px;
            width: 25%; /* Cambiado para hacer las cajas más pequeñas */
            margin: 15px 0;
            padding: 15px; /* Ajustado el padding */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .product img {
            max-width: 60%; /* Ajustar el ancho máximo de la imagen */
            height: auto; /* Mantener la proporción de la imagen */
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .product h2 {
            color: #440436;
            margin-bottom: 10px;
        }

        .product p {
            margin-bottom: 10px;
            color: #666;
        }

        .product .price {
            font-size: 1.2em;
            color: #b12704; /* Color rojo para el precio */
            margin-bottom: 15px;
        }

        .add-to-cart {
            background-color: #440436; /* Color de fondo del botón */
            color: #fff; /* Color del texto del botón */
            border: none; /* Sin borde */
            border-radius: 5px; /* Bordes redondeados */
            padding: 10px 15px; /* Espaciado interno */
            cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
            transition: background-color 0.3s; /* Transición suave */
            text-align: center; /* Centrar el texto */
            text-decoration: none; /* Sin subrayado */
            display: inline-block; /* Para que el botón se comporte como un bloque */
            margin-top: 10px; /* Margen superior para separar del precio */
        }

        .add-to-cart:hover {
            background-color: #9b6f92; /* Cambia el color de fondo al pasar el mouse */
        }

        footer {
            text-align: center;
            padding: 10px 0;
            background-color: #440436;
            color: #fff;
            margin-top: 20px;
        }

        /* Responsividad */
        @media (max-width: 768px) {
            .product {
                width: 45%; /* Ajustar el tamaño en pantallas más pequeñas */
            }
        }

        @media (max-width: 480px) {
            .product {
                width: 100%; /* Caja ocupa todo el ancho en pantallas muy pequeñas */
            }
        }
    </style>
</head>
<body>

    <header>
        <h1>Nuestros Collares</h1>
    </header>

    <main class="products-container">
        <!-- Producto 1 -->
        <section class="product">
            <img src="https://www.yanbal.com/medias/145Wx145H-Yanbal-OriginalFormat-25039431-01.jpg?context=bWFzdGVyfGltYWdlc3w1MDQ5fGltYWdlL2pwZWd8YURRM0wyZzFaUzh4TURVd056Y3dOamMyTVRJME5pOHhORFZYZURFME5VaGZXV0Z1WW1Gc0xVOXlhV2RwYm1Gc1JtOXliV0YwWHpJMU1ETTVORE14WHpBeExtcHdad3xkYWU3YjQwMDM3YzViN2QzNTAwZGU0YTJlZTNkNmFhMzAxZWUzZjgxNGY1NjI1MGI2OTEyMWVlMDFkYjVkMzBl"  width="500" alt="Joyeria Arbolda">
            <h2>Set Aretes Arboleada</h2>
            <p>¡Esenciales! Cristales llenos de color para llevar siempre. Baño de oro en tono amarillo brillante de 24 quilates con finos cristales en burgundy, verde claro, azul y marrón claro. Set de 3 pares de aretes con poste y una con pasador.</p>
            <div class="price">$80,000</div> <!-- Precio del producto -->
            <button class="add-to-cart">Agregar al Carrito</button> <!-- Botón para agregar al carrito -->
        </section>

        <!-- Producto 2 -->
        <section class="product">
            <img src="https://www.yanbal.com/medias/145Wx145H-Yanbal-OriginalFormat-25039432-01.jpg?context=bWFzdGVyfGltYWdlc3w0ODYxfGltYWdlL2pwZWd8YURnNUwyZzFaQzh4TURVd056Y3dPREEzTVRrMk5pOHhORFZYZURFME5VaGZXV0Z1WW1Gc0xVOXlhV2RwYm1Gc1JtOXliV0YwWHpJMU1ETTVORE15WHpBeExtcHdad3xmNjNiMzIzYjdhNDQwNzE1ZmMzZjM3Y2RmMGQ4ZTE5MDBlY2I0MGU2NjM1ODQ4MTI2NThlMzU2MTE2NTg3MGM2" width="500" alt="Exfoliante corp">
            <h2>Set Aretes Esferas Cristal</h2>
            <p>¡Imprescindibles en tu joyero! Úsalos junto a tus collares Yanbal preferidos. Baño de oro en tono bronce brillante de 24 quilates con finos cristales traslúcidos y perlas de alta bijouterie. Set de 4 pares de aretes con poste y una con pasador.</p>
            <div class="price">$100,000</div> <!-- Precio del producto -->
            <button class="add-to-cart">Agregar al Carrito</button> <!-- Botón para agregar al carrito -->
        </section>


        <!-- Agregar más productos aquí -->
    </main>

    <footer>
        <p>© 2024 Tienda Online</p>
    </footer>

</body>
</html>
