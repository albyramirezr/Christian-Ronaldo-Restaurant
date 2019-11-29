-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 29-11-2019 a las 02:48:35
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base_de_datos_fatima`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcliente`
--

DROP TABLE IF EXISTS `tcliente`;
CREATE TABLE IF NOT EXISTS `tcliente` (
  `ID_Cliente` varchar(9) NOT NULL,
  `Nombres_C` varchar(40) NOT NULL,
  `Apellidos_C` varchar(40) NOT NULL,
  `Teléfono` int(12) NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdetalle`
--

DROP TABLE IF EXISTS `tdetalle`;
CREATE TABLE IF NOT EXISTS `tdetalle` (
  `Num_Detalle` varchar(10) NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Precio_Final` int(8) NOT NULL,
  `Num_Factura` int(10) NOT NULL,
  `Cod_Producto` varchar(20) NOT NULL,
  PRIMARY KEY (`Num_Detalle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templeados`
--

DROP TABLE IF EXISTS `templeados`;
CREATE TABLE IF NOT EXISTS `templeados` (
  `Cod_Empleado` varchar(9) NOT NULL,
  `Nombres` varchar(40) NOT NULL,
  `Apellidos` varchar(40) NOT NULL,
  `Correo` varchar(30) NOT NULL,
  `Teléfono` int(12) NOT NULL,
  `Dirección` varchar(60) NOT NULL,
  `Cargo` varchar(25) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  PRIMARY KEY (`Cod_Empleado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tfactura`
--

DROP TABLE IF EXISTS `tfactura`;
CREATE TABLE IF NOT EXISTS `tfactura` (
  `Num_Factura` int(10) NOT NULL,
  `Fecha_Factura` date NOT NULL,
  `Modo_Pago` varchar(10) NOT NULL,
  `ID_Cliente` varchar(9) NOT NULL,
  PRIMARY KEY (`Num_Factura`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tingredientes`
--

DROP TABLE IF EXISTS `tingredientes`;
CREATE TABLE IF NOT EXISTS `tingredientes` (
  `Cod_Ingrediente` varchar(20) NOT NULL,
  `Nombre_In` varchar(25) NOT NULL,
  `Cantidad_de_uso` int(5) NOT NULL,
  `Precio_por_unidad` int(4) NOT NULL,
  PRIMARY KEY (`Cod_Ingrediente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tinventario`
--

DROP TABLE IF EXISTS `tinventario`;
CREATE TABLE IF NOT EXISTS `tinventario` (
  `Cod_Inventario` varchar(20) NOT NULL,
  `Stock` int(10) NOT NULL,
  PRIMARY KEY (`Cod_Inventario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpedidos`
--

DROP TABLE IF EXISTS `tpedidos`;
CREATE TABLE IF NOT EXISTS `tpedidos` (
  `Nro_Pedido` varchar(8) NOT NULL,
  `Cod_Producto` varchar(20) NOT NULL,
  `Cantidad_Producto` int(5) NOT NULL,
  `ID_Cliente` varchar(9) NOT NULL,
  PRIMARY KEY (`Nro_Pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tproducto`
--

DROP TABLE IF EXISTS `tproducto`;
CREATE TABLE IF NOT EXISTS `tproducto` (
  `Cod_Producto` varchar(10) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Descripción` varchar(300) NOT NULL,
  `Categoría` varchar(15) NOT NULL,
  `Precio_Unidad` int(4) NOT NULL,
  PRIMARY KEY (`Cod_Producto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treceta`
--

DROP TABLE IF EXISTS `treceta`;
CREATE TABLE IF NOT EXISTS `treceta` (
  `Cod_Receta` varchar(20) NOT NULL,
  `Comentario` varchar(300) NOT NULL,
  PRIMARY KEY (`Cod_Receta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
