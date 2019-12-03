-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-12-2019 a las 00:41:42
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
-- Estructura de tabla para la tabla `tacceso`
--

DROP TABLE IF EXISTS `tacceso`;
CREATE TABLE IF NOT EXISTS `tacceso` (
  `ID_acceso` varchar(32) NOT NULL,
  `login_acceso` varchar(32) NOT NULL,
  `clave_acceso` varchar(32) NOT NULL,
  `nivel_acceso` varchar(1) NOT NULL,
  `cookie` varchar(32) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`ID_acceso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarticulos`
--

DROP TABLE IF EXISTS `tarticulos`;
CREATE TABLE IF NOT EXISTS `tarticulos` (
  `Cod_Articulo` varchar(20) NOT NULL,
  `Descripcion_A` varchar(32) NOT NULL,
  `Categoria` varchar(20) NOT NULL,
  `Cantidad` varchar(13) NOT NULL,
  PRIMARY KEY (`Cod_Articulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tarticulos`
--

INSERT INTO `tarticulos` (`Cod_Articulo`, `Descripcion_A`, `Categoria`, `Cantidad`) VALUES
('envase2', 'Envase desechable tipo 2', 'Pedidos', '70'),
('envase_1', 'Envase desechable tipo 1        ', 'Pedidos', '100'),
('jabonL', 'Jabon liquido', 'Aseo', '45Lts'),
('papelH', 'Papel Higienico', 'Aseo', '50 rollos'),
('pitillos_1', 'Pitillos Normales', 'Bebida', '500'),
('plato2', 'Plato Ondo de ceramica', 'Cocina', '70'),
('platos_2', 'Platos de plastico', 'Pedidos', '70'),
('plato_1', 'Platos de Ceramica', 'Cocina', '70');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tclientes`
--

DROP TABLE IF EXISTS `tclientes`;
CREATE TABLE IF NOT EXISTS `tclientes` (
  `ID_Cliente` varchar(9) NOT NULL,
  `Nombre_C` varchar(20) NOT NULL,
  `Apellido_C` varchar(20) NOT NULL,
  `Telefono_C` varchar(15) NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tclientes`
--

INSERT INTO `tclientes` (`ID_Cliente`, `Nombre_C`, `Apellido_C`, `Telefono_C`) VALUES
('0.167.784', 'Augie', 'Alleyn', '+34-7657522160'),
('0.346.467', 'Jarret', 'Bangley', '+41-4226571251'),
('0.357.090', 'Casi', 'Chaffin', '+34-5968399339'),
('0.378.717', 'Paulie', 'Leat', '+56-9606393329'),
('0.579.623', 'Natalie', 'Summers', '+10-2769500748'),
('1.032.382', 'Rivi', 'Hatton', '+73-3232923971'),
('1.117.545', 'Delcine', 'Gammon', '+49-0960033306'),
('1.275.044', 'Clint', 'Jantel', '+57-2152481509'),
('1.286.283', 'Lionello', 'Birrel', '+84-5161431736'),
('1.288.951', 'Alasdair', 'Janda', '+28-5773149646'),
('1.298.551', 'Richart', 'Dayton', '+33-5067798344'),
('1.454.862', 'Deeanne', 'Greaterex', '+27-6603095689'),
('1.476.701', 'Tonie', 'Perrat', '+72-3703119703'),
('1.498.457', 'Solly', 'MacKinnon', '+55-6185026619'),
('1.508.774', 'Osgood', 'Birkmyre', '+11-6293629853'),
('1.518.070', 'Verne', 'Oliffe', '+34-9975746052'),
('1.521.394', 'Michaella', 'Kalisz', '+47-3274431908'),
('1.623.713', 'Jinny', 'Manuele', '+05-9758221422'),
('1.832.822', 'Kienan', 'Aldgate', '+25-2168579620'),
('1.917.264', 'Tresa', 'Matiasek', '+76-1658409980'),
('2.180.754', 'Salvidor', 'De Lisle', '+89-6272166902'),
('2.189.355', 'Cassius', 'Dumbrell', '+74-3970549903'),
('2.215.785', 'Anabal', 'Sabin', '+93-2274558733'),
('2.262.675', 'Tomi', 'Bockett', '+86-3249164372'),
('2.416.254', 'Nancy', 'Brazenor', '+51-2682901615'),
('2.577.196', 'Wynny', 'Reef', '+98-5219857478'),
('2.786.151', 'Hercule', 'Beech', '+11-6968334119'),
('2.881.268', 'Gilburt', 'Caddan', '+21-7977200429'),
('2.910.190', 'Findley', 'Rickardes', '+52-5283111912'),
('2.942.761', 'Chrisse', 'McGiven', '+16-6833042153'),
('3.047.925', 'Cecilla', 'Pepon', '+18-1429906563'),
('3.183.185', 'Marnie', 'Huby', '+02-3260883596'),
('3.255.208', 'Mora', 'McVitty', '+69-9506506361'),
('3.382.363', 'Ebba', 'Persey', '+32-8719381876'),
('3.402.152', 'Saundra', 'Biskupski', '+02-9588822620'),
('3.437.137', 'Dorthea', 'Phin', '+13-5256239899'),
('3.731.068', 'Mohandis', 'Fentem', '+11-6103867485'),
('3.860.420', 'Rozele', 'Hopkynson', '+34-4790495193'),
('4.073.723', 'Corbett', 'Shevelin', '+95-0613132336'),
('4.127.004', 'Ahmad', 'Astill', '+52-1941517399'),
('4.137.227', 'Madeline', 'Dymick', '+37-5849597045'),
('4.176.984', 'Rhody', 'Guiden', '+90-6685837381'),
('4.263.370', 'Mikey', 'Vitte', '+85-1809413418'),
('4.289.478', 'Gay', 'Sonier', '+30-9881881010'),
('4.399.022', 'Philbert', 'Farrington', '+86-7605742386'),
('4.708.061', 'Reggie', 'Monckton', '+35-7950800208'),
('4.713.904', 'Ebeneser', 'Bugby', '+93-9115429392'),
('4.741.395', 'Barde', 'Mannin', '+17-3741590774'),
('5.021.977', 'Em', 'Legh', '+98-7861285992'),
('5.054.266', 'Lyda', 'Santorini', '+27-5142244315'),
('5.168.188', 'Floria', 'O\'Carran', '+33-2529609460'),
('5.208.459', 'Bernetta', 'Gawthrope', '+42-3679046546'),
('5.245.468', 'Claretta', 'Gleave', '+62-7845459775'),
('5.324.052', 'Auguste', 'Ashment', '+37-0697582674'),
('5.420.949', 'Elbertine', 'Queripel', '+77-3191307780'),
('5.489.784', 'Mohandas', 'Ferrotti', '+05-3259351474'),
('5.591.698', 'Osbourn', 'Dilgarno', '+81-9003057015'),
('5.659.454', 'Payton', 'Matts', '+76-7305016805'),
('5.878.254', 'Deloria', 'Tunnicliff', '+52-7082921386'),
('5.942.453', 'Steffen', 'Fydo', '+00-0898598109'),
('6.050.808', 'Barbi', 'Probat', '+27-9134167130'),
('6.121.306', 'Barris', 'Kmietsch', '+34-4733311064'),
('6.380.369', 'Conney', 'Bellamy', '+04-5354710177'),
('6.613.544', 'Sammy', 'Pfaffe', '+02-9494811533'),
('6.652.988', 'Vidovik', 'Hakewell', '+20-7234709113'),
('6.658.132', 'Ethelind', 'Funcheon', '+57-6718969414'),
('6.939.192', 'Justin', 'Covil', '+10-6442110115'),
('6.997.546', 'Tiertza', 'Ziemecki', '+71-7864738505'),
('7.062.414', 'Mollee', 'Eadon', '+45-1237027558'),
('7.070.607', 'Derward', 'Millen', '+09-7997324158'),
('7.161.119', 'Isadora', 'Rubanenko', '+82-2376087170'),
('7.201.069', 'Jayne', 'Spinley', '+13-2804705178'),
('7.335.509', 'Walther', 'Beaman', '+61-7163445448'),
('7.363.110', 'Gerrie', 'Cadwallader', '+13-9689614526'),
('7.369.142', 'Aindrea', 'Gonzalo', '+27-6699769317'),
('7.413.163', 'Dianemarie', 'Serraillier', '+26-9640815888'),
('7.414.356', 'Benn', 'Filan', '+02-5210940109'),
('7.482.177', 'Dion', 'Mundwell', '+56-8094684742'),
('7.624.427', 'Florencia', 'Copner', '+28-0561478114'),
('7.876.800', 'Deanna', 'Byneth', '+01-3708733511'),
('7.958.331', 'Holli', 'Calow', '+13-7273246226'),
('7.958.532', 'Wolfy', 'Kaser', '+84-2280097168'),
('7.981.332', 'Iggy', 'Dilkes', '+69-5982630827'),
('8.057.726', 'Ruprecht', 'Earland', '+50-4527746941'),
('8.074.570', 'Heinrick', 'Dmitrienko', '+94-0919997424'),
('8.108.782', 'Prudy', 'McKerton', '+69-5979082941'),
('8.277.605', 'Kipper', 'Pellatt', '+15-6761442382'),
('8.279.887', 'Lowrance', 'Dirand', '+57-2141577210'),
('8.386.380', 'Tabbatha', 'Vesque', '+31-0065747721'),
('8.453.089', 'Sinclare', 'McKinnon', '+99-3764304075'),
('8.755.015', 'Kearney', 'Barrack', '+27-5895420272'),
('9.122.554', 'Jaine', 'Livezley', '+60-9005904718'),
('9.239.733', 'Antony', 'MacMeeking', '+96-1075861683'),
('9.282.204', 'Cole', 'Northway', '+50-6580102946'),
('9.476.481', 'Aggy', 'Gladebeck', '+55-8913993062'),
('9.477.490', 'Alard', 'Regus', '+93-0297556867'),
('9.484.633', 'Ashton', 'Gilfoy', '+31-8876340268'),
('9.759.537', 'Skyler', 'Hampstead', '+98-9640007764'),
('9.829.190', 'Brittan', 'Olohan', '+71-0904851186'),
('9.926.049', 'Ida', 'Jakobsson', '+61-5497954569');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdetalle`
--

DROP TABLE IF EXISTS `tdetalle`;
CREATE TABLE IF NOT EXISTS `tdetalle` (
  `Num_Detalle` int(10) NOT NULL,
  `Cantidad` int(4) NOT NULL,
  `Precio_Final` int(8) NOT NULL,
  `Cod_Producto` varchar(10) NOT NULL,
  PRIMARY KEY (`Num_Detalle`),
  KEY `Cod_Producto` (`Cod_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templeados`
--

DROP TABLE IF EXISTS `templeados`;
CREATE TABLE IF NOT EXISTS `templeados` (
  `ID_Empleado` varchar(9) NOT NULL,
  `Nombre_E` varchar(40) NOT NULL,
  `Apellido_E` varchar(40) NOT NULL,
  `Correo_E` varchar(30) NOT NULL,
  `Telefono_E` varchar(15) NOT NULL,
  `Direccion_E` varchar(60) NOT NULL,
  `Cargo` varchar(30) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Departamento` varchar(20) NOT NULL,
  `Numero_de_Cuenta` varchar(16) NOT NULL,
  `Salario_Base` varchar(9) NOT NULL,
  PRIMARY KEY (`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `templeados`
--

INSERT INTO `templeados` (`ID_Empleado`, `Nombre_E`, `Apellido_E`, `Correo_E`, `Telefono_E`, `Direccion_E`, `Cargo`, `Fecha_Ingreso`, `Departamento`, `Numero_de_Cuenta`, `Salario_Base`) VALUES
('0.041.941', 'Barney', 'Sor', 'bsori@lulu.com', '+41-5020832266', '360 Luster Road', 'Master Chef', '2019-10-15', 'Cocina', '3535253153428811', '$95.85'),
('0.206.881', 'Tricia', 'Maplestone', 'tmaplestones@reverbnation.com', '+69-9086330619', '8 Briar Crest Alley', 'Aseo', '2019-05-03', 'Aseo', '30299840341228', '$24'),
('0.533.528', 'Abelard', 'Pointer', 'apointerg@umn.edu', '+86-3129864550', '309 Brown Trail', 'Aseo', '2019-03-26', 'Aseo', '3561739700997149', '$25'),
('0.851.352', 'Christiana', 'Pickle', 'cpickle4@chicagotribune.com', '+61-1052623450', '909 Maryland Plaza', 'Cocinero', '2019-06-09', 'Cocina', '5473235339135757', '$60'),
('0.894.676', 'Giustino', 'Bunney', 'gbunney0@mashable.com', '+11-9463471642', '8654 Village Park', 'Cocinero', '2019-10-27', 'Cocina', '3540660311957163', '$66.69'),
('1.235.513', 'Robenia', 'Tison', 'rtisono@webs.com', '+82-4252629874', '503 Becker Road', 'Repartidor', '2019-03-11', 'Pedidos', '4917515485550090', '$29'),
('1.602.066', 'Renata', 'Mufford', 'rmufforda@businessweek.com', '+65-3349940447', '5 Tony Alley', 'Limpiador de Platos', '2019-03-21', 'Aseo', '4917064280643040', '$25'),
('1.812.670', 'Allayne', 'Crips', 'acripsp@freewebs.com', '+42-2526623320', '536 Emmet Terrace', 'Gestor de Pedidos', '2019-07-17', 'Pedidos', '3587980892822873', '$46'),
('2.008.222', 'Ninnette', 'Benaine', 'nbenaine9@seesaa.net', '+04-1045744575', '32095 Rowland Junction', 'Cajero', '2019-09-15', 'Caja', '3552506241618992', '$30'),
('2.212.132', 'Regen', 'Ygo', 'rygoq@hp.com', '+56-0289451653', '96 5th Pass', 'Ayudante de Cocinero', '2019-09-03', 'Cocina', '3538774326863177', '$28.85'),
('3.014.912', 'Darnall', 'Abade', 'dabadem@51.la', '+21-0382178806', '254 Declaration Hill', 'Repartidor', '2019-11-27', 'Pedidos', '5100175852582012', '$29'),
('3.124.541', 'Manolo', 'Bladder', 'mbladder1@blogger.com', '+13-5739602028', '099 Blackbird Lane', 'Cocinero', '2019-04-13', 'Cocina', '4017955927078681', '$60'),
('3.318.736', 'Shaylyn', 'Gravells', 'sgravells2@berkeley.edu', '+70-0821950247', '91 Kings Center', 'Cocinero', '2019-08-20', 'Cocina', '379506007378366', '$60'),
('3.528.521', 'Ashly', 'Matzel', 'amatzelc@mashable.com', '+17-4761090943', '2997 Straubel Avenue', 'Mesero', '2019-08-05', 'Mesero', '4405206514828546', '$19'),
('3.903.447', 'Batholomew', 'Woodburn', 'bwoodburne@fastcompany.com', '+91-8789977463', '5 Kim Park', 'Mesero', '2019-09-04', 'Mesero', '3562256179763745', '$19'),
('4.028.027', 'Jules', 'Lukes', 'jlukesh@networksolutions.com', '+72-5333244810', '604 Manufacturers Hill', 'Limpiador de Platos', '2019-07-30', 'Aseo', '374622448891365', '$25'),
('4.122.552', 'Blanche', 'Kyne', 'bkynek@discovery.com', '+20-8735156176', '6 Helena Park', 'Publicista', '2019-10-07', 'Marketing', '5602253542173162', '$28'),
('4.479.934', 'Angel', 'Aranguren', 'dpoundford1@pinterest.com', '+50-5643904447', '97 Myrtle Lane', 'Gerente', '2019-06-05', 'Supervision', '36400635466667', '$100'),
('4.755.789', 'Francisco', 'Regalado', 'cridsdell0@gov.uk', '+70-9156424928', '93014 Mallard Park', 'Database Administrator I', '2019-08-12', 'Supervision', '4026007350348592', '$120'),
('5.488.073', 'Bartholomeo', 'Birchner', 'bbirchnerd@si.edu', '+16-9747858495', '19 Vera Plaza', 'Mesero', '2019-03-04', 'Mesero', '3535309772229004', '$19'),
('6.016.376', 'Stesha', 'Sutherns', 'ssuthernsb@vkontakte.ru', '+52-7878796698', '276 Farmco Terrace', 'Cantinero', '2019-01-07', 'Barra', '30179185719727', '$45'),
('6.174.293', 'Juan', 'Curvelo', 'amacenzy2@bandcamp.com', '+54-4384412186', '5815 Prairie Rose Junction', 'Supervisor', '2019-11-06', 'Supervision', '295375968520456', '$125'),
('7.150.964', 'Jeezrel', 'Molina', 'gshervington3@mediafire.com', '+37-6889900993', '7 Ruskin Drive', 'Publicista Jefe', '2019-10-24', 'Supervision', '46660764465353', '$100'),
('7.461.642', 'Albany', 'Ramirez', 'dbenardeaut@moonfruit.com', '+62-4616871300', '69869 Nevada Road', 'Dictadora', '2019-04-05', 'Supervision', '6386336851003664', '$500'),
('7.537.475', 'Wendeline', 'Seldner', 'wseldner6@wsj.com', '+48-7113409382', '43 Arkansas Avenue', 'Ayudante de Cocinero', '2019-02-19', 'Cocina', '30027770154471', '$28.85'),
('7.555.213', 'Aridatha', 'Garrie', 'agarrief@noaa.gov', '+74-0120205716', '8642 Barby Trail', 'Mesero', '2019-07-27', 'Mesero', '201907338869699', '$19'),
('7.812.912', 'Delora', 'Climie', 'dclimien@blogger.com', '+95-1414558363', '58072 Clove Trail', 'Repartidor', '2019-02-04', 'Pedidos', '3567221194566114', '$29'),
('8.693.069', 'Zane', 'Kilbee', 'zkilbeel@va.gov', '+86-4043302426', '959 Village Green Terrace', 'Publicista', '2019-08-15', 'Marketing', '5602232890109721', '$28'),
('8.970.562', 'Cyrill', 'Sherwin', 'csherwin8@fda.gov', '+11-1741580536', '6 Dovetail Crossing', 'Cajero', '2019-08-02', 'Caja', '3586658037273837', '$30'),
('9.025.602', 'Poul', 'Gorusso', 'pgorusso7@princeton.edu', '+58-0146530630', '339 Sheridan Pass', 'Cajero', '2019-01-17', 'Caja', '4917541120789141', '$30'),
('9.180.710', 'Erhart', 'Restall', 'erestall5@soup.io', '+79-6050892793', '45117 Donald Drive', 'Cocinero', '2019-04-30', 'Cocina', '3570754981471515', '$60'),
('9.196.459', 'Mikey', 'Cawkwell', 'mcawkwellr@google.pl', '+73-2985739161', '78 Farmco Terrace', 'Aseo', '2019-07-21', 'Aseo', '5506141034474320', '$24'),
('9.533.190', 'Shirline', 'Elwyn', 'selwyn3@fda.gov', '+47-4571936963', '71 Morning Lane', 'Ayudante de Coinero', '2019-09-03', 'Cocina', '3578241077583918', '$28.85'),
('9.751.681', 'Luke', 'Shank', 'lshankj@tiny.cc', '+80-1064293835', '1614 Bonner Street', 'Contador', '2019-07-20', 'Contaduria', '201719051369249', '$75.99');

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
  `Num_Detalle` int(10) NOT NULL,
  PRIMARY KEY (`Num_Factura`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `Num_Detalle` (`Num_Detalle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `Cod_Receta` varchar(20) NOT NULL,
  PRIMARY KEY (`Cod_Ingrediente`),
  KEY `Cod_Receta` (`Cod_Receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tinventario`
--

DROP TABLE IF EXISTS `tinventario`;
CREATE TABLE IF NOT EXISTS `tinventario` (
  `Cod_Inventario` varchar(20) NOT NULL,
  `Stock` int(10) NOT NULL,
  `Cod_Producto` varchar(10) NOT NULL,
  `Cod_Articulo` varchar(20) NOT NULL,
  PRIMARY KEY (`Cod_Inventario`),
  KEY `Cod_Articulo` (`Cod_Articulo`),
  KEY `Cod_Producto` (`Cod_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tnomina_pago`
--

DROP TABLE IF EXISTS `tnomina_pago`;
CREATE TABLE IF NOT EXISTS `tnomina_pago` (
  `Cod_Nomina` varchar(20) NOT NULL,
  `ID_Empleado` varchar(9) NOT NULL,
  `IRS` int(10) NOT NULL,
  `Seguro_Social` int(10) NOT NULL,
  `Retenciones_Adicionales` int(10) NOT NULL,
  `Total_Deducciones` int(15) NOT NULL,
  `Dias_de_trabajo` int(10) NOT NULL,
  `Horas_Extra` int(10) NOT NULL,
  `Bonos` int(10) NOT NULL,
  `Total_Asignaciones` int(15) NOT NULL,
  `Pago_Total` int(15) NOT NULL,
  PRIMARY KEY (`Cod_Nomina`,`ID_Empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`Nro_Pedido`),
  KEY `ID_Cliente` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tproducto`
--

DROP TABLE IF EXISTS `tproducto`;
CREATE TABLE IF NOT EXISTS `tproducto` (
  `Cod_Producto` varchar(10) NOT NULL,
  `Nombre_Producto` varchar(50) NOT NULL,
  `Descripcion_P` varchar(300) NOT NULL,
  `Categoria` varchar(15) NOT NULL,
  `Precio_Unidad` int(4) NOT NULL,
  `Cod_Ingrediente` varchar(20) NOT NULL,
  PRIMARY KEY (`Cod_Producto`),
  KEY `Cod_Ingrediente` (`Cod_Ingrediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treceta`
--

DROP TABLE IF EXISTS `treceta`;
CREATE TABLE IF NOT EXISTS `treceta` (
  `Cod_Receta` varchar(20) NOT NULL,
  `Comentario` varchar(300) NOT NULL,
  PRIMARY KEY (`Cod_Receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tdetalle`
--
ALTER TABLE `tdetalle`
  ADD CONSTRAINT `tdetalle_ibfk_1` FOREIGN KEY (`Cod_Producto`) REFERENCES `tproducto` (`Cod_Producto`);

--
-- Filtros para la tabla `tfactura`
--
ALTER TABLE `tfactura`
  ADD CONSTRAINT `tfactura_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `tclientes` (`ID_Cliente`),
  ADD CONSTRAINT `tfactura_ibfk_2` FOREIGN KEY (`Num_Detalle`) REFERENCES `tdetalle` (`Num_Detalle`);

--
-- Filtros para la tabla `tingredientes`
--
ALTER TABLE `tingredientes`
  ADD CONSTRAINT `tingredientes_ibfk_1` FOREIGN KEY (`Cod_Receta`) REFERENCES `treceta` (`Cod_Receta`);

--
-- Filtros para la tabla `tinventario`
--
ALTER TABLE `tinventario`
  ADD CONSTRAINT `tinventario_ibfk_1` FOREIGN KEY (`Cod_Articulo`) REFERENCES `tarticulos` (`Cod_Articulo`),
  ADD CONSTRAINT `tinventario_ibfk_2` FOREIGN KEY (`Cod_Producto`) REFERENCES `tproducto` (`Cod_Producto`);

--
-- Filtros para la tabla `tnomina_pago`
--
ALTER TABLE `tnomina_pago`
  ADD CONSTRAINT `tnomina_pago_ibfk_1` FOREIGN KEY (`Cod_Nomina`) REFERENCES `templeados` (`ID_Empleado`);

--
-- Filtros para la tabla `tpedidos`
--
ALTER TABLE `tpedidos`
  ADD CONSTRAINT `tpedidos_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `tclientes` (`ID_Cliente`);

--
-- Filtros para la tabla `tproducto`
--
ALTER TABLE `tproducto`
  ADD CONSTRAINT `tproducto_ibfk_1` FOREIGN KEY (`Cod_Ingrediente`) REFERENCES `tingredientes` (`Cod_Ingrediente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
