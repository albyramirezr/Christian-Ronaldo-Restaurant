<?php require('./connection.php')?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Portal Web</title>
    <link rel="stylesheet" href="./bootstrap.min.css">
    <link rel="stylesheet" href="./estilos.css">
    <script src="./scripts.js" defer></script>   
</head>
<body>
    <div class="navigation d-flex justify-content-end">
            <a class="option" href="./panel.php">Inicio</a>
            <div class="producto option">Productos
                <div class="productos">
                    <a class="producto" href="./ingresar.php">Agregar</a>
                    <a class="producto" href="./consultar.php">Buscar</a>
                </div>
            </div>
            <a class="option" href="./desarrollo.php">Clientes</a>
            <a class="option" href="./desarrollo.php">Facturas</a>
            <a class="option" href="./desarrollo.php">Vendedores</a>
            <a class="option salir" href="/portalweb">Salir</a>
    </div>

