-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 22:56:12
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2023-05-24 11:18:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'Quiero este paquete.', '2020-07-08 06:38:36', 2, 'u', '2023-09-26 19:51:46'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'Hay algun descuento.', '2020-07-08 06:43:25', 1, NULL, '2023-09-26 19:52:03'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'Cuando obtengo la confirmación.', '2020-07-08 06:44:39', 2, 'a', '2023-09-26 19:52:21'),
(4, 5, 'USER@MAIL.COM', '2023-09-26', '2023-09-30', 'Me gustaría conocer mas detalles de este paquete turístico, gracias.', '2023-09-26 20:26:39', 1, NULL, '2024-11-25 21:39:08'),
(5, 5, 'USER@MAIL.COM', '2023-09-26', '2023-09-30', 'Me gustaría conocer mas detalles de este paquete turístico, gracias.', '2023-09-26 20:28:10', 2, 'a', '2024-11-25 21:39:13'),
(6, 5, 'USER@MAIL.COM', '2023-09-26', '2023-09-30', 'Me gustaría conocer mas detalles de este paquete turístico, gracias.', '2023-09-26 20:29:44', 1, NULL, '2024-11-24 03:39:22'),
(7, 5, 'USER@MAIL.COM', '2023-09-26', '2023-09-30', 'Me gustaría conocer mas detalles de este paquete turístico, gracias.', '2023-09-26 20:30:06', 0, NULL, NULL),
(8, 1, 'chicalay10@gmail.com', '2024-11-18', '2024-11-05', 'hhkkkkknk', '2024-11-19 03:46:05', 2, 'a', '2024-11-24 03:39:03'),
(9, 1, 'fernanda@gmail.com', '2024-11-06', '2024-11-04', 'nmmm,,m,m', '2024-11-24 03:37:21', 1, NULL, '2024-11-24 03:39:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Consulta para el viaje a Manali.', 'Por favor proporcioneme más ofertas.', '2020-07-08 06:30:32', 1),
(2, 'Dario Ozorio', 'dozor@gmail.com', '6797947987', 'Consulta', 'Cualquier oferta para viaje al norte.', '2020-07-08 06:31:38', 1),
(3, 'Dorian', 'dor@gmail.com', '1646689721', 'Alguna oferta para el norte.', 'Alguna oferta para el norte.', '2020-07-08 06:32:41', 1),
(4, 'Jose', 'jr@me.com', '3201254587', 'Consulta', 'Buenas tardes, me pueden contactar por favor.', '2023-09-26 21:02:42', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Problemas de reserva', 'No puedo reservar el paquete.', '2020-07-08 06:36:03', 'Ok, solucionaremos el problema lo antes posible.', '2023-09-26 19:55:38'),
(7, 'test@gmail.com', 'Reembolso', 'quiero mi reembolso', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2024-11-19 03:43:07', NULL, NULL),
(9, NULL, NULL, NULL, '2024-11-23 21:55:27', NULL, NULL),
(10, NULL, NULL, NULL, '2024-11-24 03:36:19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																																								<p><strong>Términos y Condiciones de ChocòExplora</strong></p><p>Los términos y condiciones de <em>ChocòExplora</em> establecen las reglas y directrices bajo las cuales los usuarios pueden acceder y utilizar nuestros servicios de turismo. Al reservar con nosotros, aceptas las siguientes condiciones:</p><ol><li><p><strong>Reservas y Pagos:</strong> Las reservas se deben hacer a través de nuestros canales oficiales, con pago previo en pesos colombianos o USD. El pago debe completarse dentro del plazo indicado para confirmar la reserva.</p></li><li><p><strong>Cancelaciones y Modificaciones:</strong> Las políticas de cancelación dependen de cada paquete o servicio, y se aplicarán cargos por cambios o cancelaciones fuera del plazo permitido.</p></li><li><p><strong>Responsabilidad del Viajero:</strong> El viajero es responsable de cumplir con las regulaciones locales de salud, seguridad y comportamiento durante su viaje, así como de tener los documentos de viaje necesarios.</p></li><li><p><strong>Precios y Ofertas:</strong> Los precios están sujetos a disponibilidad y pueden cambiar sin previo aviso. Las promociones y descuentos son aplicables según los términos específicos de cada campaña.</p></li><li><p><strong>Seguridad y Privacidad:</strong> Nos comprometemos a proteger la información personal y de pago de nuestros clientes, siguiendo estrictos protocolos de seguridad.</p></li><li><p><strong>Modificaciones de Servicios:</strong> ChocòExplora se reserva el derecho de modificar itinerarios, servicios o paquetes si es necesario por razones operativas o de fuerza mayor, sin responsabilidad adicional.</p></li></ol>\r\n<p align=\"justify\"><br></p>\r\n										\r\n										\r\n										\r\n										'),
(2, 'privacy', '										<p><strong>Política de Privacidad de ChocoExplora</strong></p><p>En <em>ChocoExplora</em> nos comprometemos a proteger tu privacidad y a garantizar la seguridad de tu información personal. Esta política explica cómo recopilamos, usamos, almacenamos y protegemos tus datos.</p><ol><li><p><strong>Información Recopilada:</strong> Recopilamos información personal que nos proporcionas al hacer una reserva, como tu nombre, dirección de correo electrónico, número de teléfono y detalles de pago. También podemos recopilar información sobre tus preferencias de viaje y uso de nuestro sitio web.</p></li><li><p><strong>Uso de la Información:</strong> Utilizamos tu información para procesar tus reservas, mejorar nuestros servicios, ofrecerte ofertas personalizadas y mantenerte informado sobre tus viajes. También podemos usarla para responder a consultas o resolver problemas.</p></li><li><p><strong>Protección de Datos:</strong> Implementamos medidas de seguridad técnicas y organizativas para proteger tu información personal contra el acceso no autorizado, pérdida o alteración.</p></li><li><p><strong>Compartir Información:</strong> No vendemos ni compartimos tu información personal con terceros, excepto en los casos en los que sea necesario para la prestación de nuestros servicios, como con proveedores de alojamiento, transporte y otros servicios turísticos.</p></li><li><p><strong>Cookies:</strong> Utilizamos cookies para mejorar la experiencia de usuario en nuestro sitio web, como recordar tus preferencias y realizar análisis sobre el uso de nuestra página.</p></li><li><p><strong>Derechos de los Usuarios:</strong> Tienes derecho a acceder, corregir o eliminar tus datos personales en cualquier momento. Si deseas ejercer estos derechos, puedes contactarnos a través de nuestros canales de atención.</p></li><li><p><strong>Cambios en la Política de Privacidad:</strong> Nos reservamos el derecho de modificar esta política en cualquier momento. Cualquier cambio será comunicado a través de nuestro sitio web.</p></li></ol>\r\n										'),
(3, 'aboutus', '																				<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\">¡¡¡Bienvenidos!!!</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\"><br></span></div><div style=\"text-align: justify;\"><p><strong>Sobre Nosotros - ChocoExplora</strong></p><p>En <em>ChocoExplora</em> somos un equipo apasionado por el turismo y la riqueza cultural de la región del Chocó. Nuestra misión es ofrecer experiencias auténticas y sostenibles que conecten a los viajeros con la naturaleza, las tradiciones y las comunidades locales, mientras fomentamos el desarrollo turístico en el corazón de Colombia.</p><p>Nos especializamos en crear itinerarios personalizados que combinan aventura, ecoturismo y un profundo respeto por el medio ambiente. Creemos en el poder del turismo para impulsar la economía local, al tiempo que promovemos la conservación de la biodiversidad única de nuestra región.</p><p>Con <em>ChocoExplora</em>, no solo organizamos viajes; te invitamos a vivir una experiencia transformadora, descubriendo los secretos mejor guardados del Chocó y otros destinos selectos en Colombia y el mundo. Cada uno de nuestros paquetes está diseñado para ofrecer comodidad, seguridad y, sobre todo, una conexión profunda con el entorno y las culturas que visitamos.</p><p>Te invitamos a explorar, a aprender y a vivir el turismo de una manera responsable y enriquecedora. ¡Únete a nosotros en un viaje único, lleno de sorpresas y descubrimientos!</p></div>										<div></div>\r\n										\r\n										'),
(11, 'contact', '<p><strong>Correo Electrónico:</strong><br><a rel=\"noopener\">chocoexplora@gmail.com</a></p><p><strong>Teléfono:</strong><br>(+57) 3115865714</p><p><strong>Dirección:</strong><br>Calle Principal # 123, Quibdó, Chocó, Colombia</p><p><strong>Redes Sociales:</strong><br>Síguenos en nuestras redes sociales para obtener las últimas noticias, promociones y recomendaciones de viaje:</p><ul><li><strong>Facebook:</strong> @ChocoExplora</li><li><strong>Instagram:</strong> @ChocoExplora</li><li><strong>Twitter:</strong> @ChocoExplora</li></ul><p>Estamos disponibles de lunes a viernes, de 8:00 a.m. a 6:00 p.m., y los fines de semana, de 9:00 a.m. a 2:00 p.m.</p><p>¡Esperamos tu mensaje y estamos emocionados de ayudarte a descubrir el Chocó y más!</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Tutunendo', 'Paquete Individual', 'CHOCÒ', 300, 'Un paquete turístico a Tutunendo incluye transporte ida y vuelta desde Quibdó, alojamiento en cabañas o ecohoteles, alimentación típica completa, recorridos por el río, baños en pozos naturales, visita a cascadas como La Sardina, y un guía experto que res', 'El paquete turístico a Tutunendo incluye transporte desde Quibdó, alojamiento en cabañas ecológicas, alimentación típica, recorridos por el río, baños en pozos naturales y cascadas, senderismo guiado, y un guía local experto. También incluye seguro de viaje, fotos profesionales y souvenirs locales.', '2.jpg', '2023-07-19 05:21:58', '2024-11-24 03:58:36'),
(2, 'Vacaciones en NUQUI', 'Paquete Familiar', 'NUQUI', 600, 'Wi-Fi gratuito, desayuno gratuito, servicio gratuito de recogida y entrega', 'El paquete turístico a Nuquí incluye transporte desde Quibdó o Bogotá, alojamiento en cabañas ecológicas junto al mar, alimentación típica del Pacífico, actividades como el avistamiento de ballenas jorobadas (en temporada), recorridos por playas y manglares, senderismo en la selva, y un guía local experto en fauna y cultura. También se ofrece seguro de viaje, fotografías del recorrido y souvenirs artesanales de la región.', '4.jpg', '2023-07-26 05:37:40', '2024-11-24 03:09:34'),
(3, 'Especial Alma Gemela Bali - 7 Noches', 'Paquete Pareja', 'NUQUI', 1000, 'Servicio gratuito de recogida y entrega, Wi-Fi gratuito, Guía profesional gratuito', 'Los paquetes turísticos en el Chocó incluyen transporte a destinos remotos, alojamiento en ecoalojamientos, actividades como avistamiento de ballenas, paseos en bote, senderismo y visitas a cascadas, así como recorridos por comunidades locales para conocer su cultura. Además, ofrecen seguros de viaje, fotografías profesionales y souvenirs artesanales.', '5.jpg', '2023-07-19 05:41:07', '2024-11-24 03:12:17'),
(4, 'Parque Nacional Natural Utría.', 'Paquete Familiar', 'CHOCÒ', 1000, 'Wi-Fi gratuito, servicio gratuito de recogida y entrega,', 'Visita la presa Matupetty, la plantación de té y un jardín de especias | Ver la puesta de sol en Kanyakumari | Coche con aire acondicionado a disposición durante 2 horas adicionales (una vez por ciudad)', 'w.jpg', '2023-07-28 05:45:58', '2024-11-24 03:19:06'),
(5, 'Catedral San Francisco De Asis', 'Familia', 'Quibdò', 4500, 'Servicio gratuito de recogida y entrega, Wi-Fi gratuito, Desayuno gratuito', 'Un paquete de vacaciones para toda la familia.', 'q.jpg', '2023-07-31 05:49:13', '2024-11-24 03:17:03'),
(10, 'Playa El Almejal', 'Paquete Individual', 'CHOCÒ', 300, 'wifi, alojamiento y transporte.', 'Es una impresionante playa de 2 kilómetros, a la largo de la cual se fusiona la selva húmeda tropical. Siendo clasificada como una de las más bellas del Pacífico Colombiano.\r\n\r\nNuestro Lodge toma su nombre por estar situado en esta impresionante playa de 2 kilómetros, a la largo de la cual se fusiona la selva húmeda tropical. Ha sido clasificada como una de las más bellas del Pacífico Colombiano, allí llegan las tortugas golfinas y se ven aves posadas en las impresionantes rocas volcánicas que todavía conservan las huellas ígneas de la lava fluyendo por sus costados.', '5.jpg', '2024-11-24 03:21:41', NULL),
(11, 'Bahía el Aguacate', 'Paquete grupal', 'CHOCÒ', 1000, 'wifi, alojamiento y transporte.', 'Hotel Bahía Aguacate dispone de jardín, zona de playa privada, terraza y restaurante en Capurganá. El alojamiento ofrece recepción 24 horas, traslado para ir o volver del aeropuerto, servicio de habitaciones y wifi gratis.\r\n\r\nEn el hotel, cada habitación está equipada con armario, ropa de cama y un balcón con vistas al jardín. Las habitaciones del alojamiento tienen baño privado con ducha y artículos de aseo gratuitos, y también ofrecen vistas al mar.\r\n', '0.jpg', '2024-11-24 03:24:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(2, 'User Rec', '9871987979', 'user@mail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '2020-07-08 06:33:56', NULL),
(8, 'luisa', '443442', 'chicalay10@gmail.com', 'd06d2926ce162cdbd469051a03878caf', '2024-11-19 03:43:07', NULL),
(9, 'fidel', '3213455', 'fidel@gmail.com', 'e7981b7a2203a497b5b6e749e0c24df9', '2024-11-23 21:55:27', NULL),
(10, 'fernanda', '4353567', 'fernanda@gmail.com', '327229a1f11cc3c7ce66ee5d1341ae51', '2024-11-24 03:36:19', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indices de la tabla `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indices de la tabla `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
