<%-- 
    Document   : carrito
    Created on : 8/10/2024, 6:36:31 p. m.
    Author     : aurcr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Carrito de Compras</title>
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

        /* Estilos del carrito */
        .cart-container {
            max-width: 800px;
            margin: 40px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .cart-container h2 {
            text-align: center;
            color: #440436;
            margin-bottom: 20px;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #ccc;
        }

        .cart-item:last-child {
            border-bottom: none;
        }

        .item-details {
            flex: 1;
        }

        .item-name {
            font-size: 18px;
            color: #440436;
        }

        .item-price {
            font-size: 16px;
            color: #333;
        }

        .item-quantity {
            display: flex;
            align-items: center;
        }

        .item-quantity input {
            width: 40px;
            padding: 5px;
            margin: 0 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .remove-button {
            background-color: #94688d;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            cursor: pointer;
        }

        .remove-button:hover {
            background-color: #440436;
        }

        /* Resumen del carrito */
        .cart-summary {
            margin-top: 20px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .total-price {
            font-size: 20px;
            color: #440436;
            margin: 10px 0;
        }

        .checkout-button {
            width: 100%;
            padding: 10px;
            background-color: #440436;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .checkout-button:hover {
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
            .cart-container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Carrito de Compras</h1>
    </header>

    <main>
        <div class="cart-container">
            <h2>Productos en tu carrito</h2>
            <!-- Producto 1 -->
            <div class="cart-item">
                <div class="item-details">
                    <span class="item-name">Shampoo Hidratante</span><br>
                    <span class="item-price">$25,000</span>
                </div>
                <div class="item-quantity">
                    <label for="quantity1">Cantidad:</label>
                    <input type="number" id="quantity1" name="quantity" value="1" min="1">
                </div>
                <button class="remove-button">Eliminar</button>
            </div>
            <!-- Producto 2 -->
            <div class="cart-item">
                <div class="item-details">
                    <span class="item-name">Acondicionador Reparador</span><br>
                    <span class="item-price">$28,000</span>
                </div>
                <div class="item-quantity">
                    <label for="quantity2">Cantidad:</label>
                    <input type="number" id="quantity2" name="quantity" value="1" min="1">
                </div>
                <button class="remove-button">Eliminar</button>
            </div>
            <!-- Resumen del carrito -->
            <div class="cart-summary">
                <h3>Resumen de la compra</h3>
                <div class="total-price">Total: $53.000</div>
                <button class="checkout-button">Proceder al Pago</button>
            </div>
        </div>
    </main>

    <footer>
        <p>© 2024 Tienda Online. Todos los derechos reservados.</p>
    </footer>
</body>
</html>
