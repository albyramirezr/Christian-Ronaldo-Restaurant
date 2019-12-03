<?php
require('../connection.php');
$request = $_SERVER['REQUEST_URI'];
if(isset($_COOKIE['id'])){
    $userCookie = $_COOKIE['id'];
    $buscarCookie = "SELECT cookie FROM tacceso WHERE cookie='$userCookie'";
    $resultadoCookie = $conn->query($buscarCookie);
    if(!$resultadoCookie->num_rows > 0){
        echo 'Nope';
        // header('Location:/Christian-Ronaldo-Restaurant/admin/login.html');
    }else{
        switch ($request) {
            case '/Christian-Ronaldo-Restaurant/admin/' :
                require __DIR__ . '/index.html';
                break;
            case '/Christian-Ronaldo-Restaurant/admin/productos/' :
                require __DIR__ . '/productos.html';
                break;
            case '/Christian-Ronaldo-Restaurant/admin/clientes/' :
                require __DIR__ . '/clientes.php';
                break;
            case '/Christian-Ronaldo-Restaurant/admin/inventario/' :
                require __DIR__ . '/inventario.html';
                break;
            case '/Christian-Ronaldo-Restaurant/admin/nuevoProducto/' :
                require __DIR__ . '/Christian-Ronaldo-Restaurant/admin/nuevoProducto.html';
                break;
            case '/Christian-Ronaldo-Restaurant/admin/ventas' :
                require __DIR__ . '/Christian-Ronaldo-Restaurant/admin/ventas.html';
                break;
            case '/Christian-Ronaldo-Restaurant/admin/nuevoCliente' :
                require __DIR__ . '/nuevoCliente.html';
                break;
        }
    }
}else{
    echo 'No galleta';
    header('Location:/Christian-Ronaldo-Restaurant/admin/login.html');
}

