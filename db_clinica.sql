
--
-- Base de datos: `db_clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendas`
--

CREATE TABLE IF NOT EXISTS `agendas` (
  `id` int(10) unsigned NOT NULL,
  `espec_id` int(10) unsigned NOT NULL,
  `agen_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agen_f_inicio` date NOT NULL,
  `agen_f_fin` date NOT NULL,
  `usu_registro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agen_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviso`
--

CREATE TABLE IF NOT EXISTS `aviso` (
  `aviso_id` int(10) unsigned NOT NULL,
  `pac_id` int(10) unsigned NOT NULL,
  `aviso_nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aviso_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aviso_observacion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aviso_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajachica`
--

CREATE TABLE IF NOT EXISTS `cajachica` (
  `cjachic_id` int(10) unsigned NOT NULL,
  `sede_id` int(10) unsigned NOT NULL,
  `cjachic_fondo` decimal(10,2) NOT NULL,
  `cjachic_f_inicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cjachic_f_fin` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cjachic_estado` int(11) NOT NULL,
  `cjachic_f_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cjachic_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cajachica`
--

INSERT INTO `cajachica` (`cjachic_id`, `sede_id`, `cjachic_fondo`, `cjachic_f_inicio`, `cjachic_f_fin`, `cjachic_estado`, `cjachic_f_registro`, `cjachic_usu_registro`, `created_at`, `updated_at`) VALUES
(1, 1, '2000.00', '2020-05-01 22:54:12', '2020-12-31 22:53:50', 1, '2020-05-01 22:53:50', 'GONZALO RAMIREZ', '2020-04-15 15:07:41', '2020-05-01 22:54:12'),
(2, 2, '800.00', '2020-05-01 22:54:26', '2020-12-31 22:54:26', 1, '2020-05-01 22:54:26', 'GONZALO RAMIREZ', '2020-04-15 15:10:18', '2020-05-01 22:54:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE IF NOT EXISTS `cajas` (
  `caja_id` int(10) unsigned NOT NULL,
  `caja_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_id` int(10) unsigned NOT NULL,
  `caja_estado` int(11) NOT NULL,
  `caja_f_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `caja_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_diaria`
--

CREATE TABLE IF NOT EXISTS `caja_diaria` (
  `cj_dia_id` int(10) unsigned NOT NULL,
  `cj_dia_nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cj_dia_fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cj_dia_estado` int(11) NOT NULL,
  `cj_dia_simboleta` decimal(10,2) NOT NULL,
  `cj_dia_boleta` decimal(10,2) NOT NULL,
  `cj_dia_banco` decimal(10,2) NOT NULL,
  `cj_dia_isipay` decimal(10,2) NOT NULL,
  `cj_saldo_dia` decimal(10,2) NOT NULL,
  `cj_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caja_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_turno`
--

CREATE TABLE IF NOT EXISTS `caja_turno` (
  `cj_trn_id` int(10) unsigned NOT NULL,
  `tur_id` int(10) unsigned NOT NULL,
  `colab_id` int(10) unsigned NOT NULL,
  `cj_dia_id` int(10) unsigned NOT NULL,
  `cj_trn_sencillera` decimal(10,2) NOT NULL,
  `cj_trn_d_simboleta` decimal(10,2) NOT NULL,
  `cj_trn_d_boleta` decimal(10,2) NOT NULL,
  `cj_trn_d_banco` decimal(10,2) NOT NULL,
  `cj_trn_d_isypay` decimal(10,2) NOT NULL,
  `cj_trn_saldo_turno` decimal(10,2) NOT NULL,
  `cj_trn_estado` int(11) NOT NULL,
  `caja_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) unsigned NOT NULL,
  `cjachic_id` int(10) unsigned NOT NULL,
  `ctg_cja_categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctg_cja_monto_max` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `cjachic_id`, `ctg_cja_categoria`, `ctg_cja_monto_max`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mantenimiento edificio', '140.00', '2020-04-15 15:08:02', '2020-05-10 01:24:03'),
(2, 1, 'Cuotas de prestamo', '500.00', '2020-05-10 01:24:59', '2020-05-10 01:24:59'),
(3, 1, 'Movilidades', '200.00', '2020-05-10 01:25:15', '2020-05-10 01:25:15'),
(4, 1, 'útiles de oficina', '350.00', '2020-05-10 01:28:14', '2020-05-10 01:28:14'),
(5, 1, 'Suministros de limpieza', '500.00', '2020-05-10 01:28:36', '2020-05-10 01:28:36'),
(6, 1, 'Comidas', '200.00', '2020-05-10 01:29:25', '2020-05-10 01:29:25'),
(7, 1, 'Copias, impresiones', '100.00', '2020-05-10 01:29:46', '2020-05-10 01:29:46'),
(8, 1, 'Otros', '10.00', '2020-05-10 01:36:52', '2020-05-10 01:36:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE IF NOT EXISTS `citas` (
  `id` int(10) unsigned NOT NULL,
  `pac_id` int(11) NOT NULL,
  `dt_sv_id` int(11) NOT NULL,
  `cita_total` decimal(10,2) NOT NULL,
  `cita_repro` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cita_usr_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_flags`
--

CREATE TABLE IF NOT EXISTS `citas_flags` (
  `id` int(10) unsigned NOT NULL,
  `fecha` date DEFAULT NULL,
  `horainicio` time DEFAULT NULL,
  `horafin` time DEFAULT NULL,
  `citaflag_estado` int(11) DEFAULT NULL,
  `ag_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colaboradors`
--

CREATE TABLE IF NOT EXISTS `colaboradors` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_paterno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido_materno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `t_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `n_documento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_nacimiento` date NOT NULL,
  `depa_nacimiento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito_id` int(10) unsigned NOT NULL,
  `direccion_act` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usu_registro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colaboradors`
--

INSERT INTO `colaboradors` (`id`, `user_id`, `nombres`, `apellido_paterno`, `apellido_materno`, `t_documento`, `n_documento`, `sexo`, `f_nacimiento`, `depa_nacimiento`, `distrito_id`, `direccion_act`, `celular`, `telefono`, `correo`, `foto`, `usu_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 'ESTEFY', 'CAMARENA', '', 'DNI', '87654321', 'FEMENINO', '1998-07-12', 'LIMA', 14, 'Los Postes', '987654321', '1234567', 'estefy@example.com', 'default_user.png', '-', NULL, '2020-04-07 18:59:23');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(10) unsigned NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento`, `created_at`, `updated_at`) VALUES
(1, 'AMAZONAS', NULL, NULL),
(2, 'ANCASH', NULL, NULL),
(3, 'APURIMAC', NULL, NULL),
(4, 'AREQUIPA', NULL, NULL),
(5, 'AYACUCHO', NULL, NULL),
(6, 'CAJAMARCA', NULL, NULL),
(7, 'CALLAO', NULL, NULL),
(8, 'CUSCO', NULL, NULL),
(9, 'HUANCAVELICA', NULL, NULL),
(10, 'HUANUCO', NULL, NULL),
(11, 'ICA', NULL, NULL),
(12, 'JUNIN', NULL, NULL),
(13, 'LA LIBERTAD', NULL, NULL),
(14, 'LAMBAYEQUE', NULL, NULL),
(15, 'LIMA', NULL, NULL),
(16, 'LORETO', NULL, NULL),
(17, 'MADRE DE DIOS', NULL, NULL),
(18, 'MOQUEGUA', NULL, NULL),
(19, 'PASCO', NULL, NULL),
(20, 'PIURA', NULL, NULL),
(21, 'PUNO', NULL, NULL),
(22, 'SAN MARTIN', NULL, NULL),
(23, 'TACNA', NULL, NULL),
(24, 'TUMBES', NULL, NULL),
(25, 'UCAYALI', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_agendas`
--

CREATE TABLE IF NOT EXISTS `det_agendas` (
  `id` int(10) unsigned NOT NULL,
  `agen_id` int(10) unsigned NOT NULL,
  `turn_id` int(10) unsigned NOT NULL,
  `dt_agen_dia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_cajachica`
--

CREATE TABLE IF NOT EXISTS `det_cajachica` (
  `dt_cja_id` int(10) unsigned NOT NULL,
  `cjachic_id` int(10) unsigned NOT NULL,
  `dt_cja_fondo` decimal(10,2) NOT NULL,
  `dt_cja_mes` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctg_cja_total` decimal(10,2) NOT NULL,
  `dt_cja_saldo` decimal(10,2) NOT NULL,
  `dt_cja_reembolso` decimal(10,2) NOT NULL,
  `dt_cja_devoluc` decimal(10,2) NOT NULL,
  `dt_cja_estado` int(11) NOT NULL,
  `dt_cja_usu_regist` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt_cja_f_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_citas`
--

CREATE TABLE IF NOT EXISTS `det_citas` (
  `id` int(10) unsigned NOT NULL,
  `cita_id` int(11) NOT NULL,
  `espec_id` int(11) NOT NULL,
  `dt_cita_n_cita` int(11) NOT NULL,
  `dt_cita_fecha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt_cita_h_inicio` time NOT NULL,
  `dt_cita_h_fin` time NOT NULL,
  `dt_cita_observacion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_agen_id` int(11) NOT NULL,
  `dt_cita_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_servicios`
--

CREATE TABLE IF NOT EXISTS `det_servicios` (
  `id` int(10) unsigned NOT NULL,
  `serv_id` int(11) NOT NULL,
  `tur_id` int(11) NOT NULL,
  `dt_sv_tipo_serv` int(11) NOT NULL,
  `dt_sv_n_sesion` int(11) NOT NULL,
  `dt_sv_precio_uni` double(10,2) NOT NULL,
  `dt_sv_precio_total` double(10,2) NOT NULL,
  `dt_sv_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_vacas`
--

CREATE TABLE IF NOT EXISTS `det_vacas` (
  `id` int(10) unsigned NOT NULL,
  `vac_id` int(11) NOT NULL,
  `det_vac_f_inicio` date NOT NULL,
  `det_vac_f_fin` date NOT NULL,
  `det_vac_estado` int(11) NOT NULL,
  `det_usu_reg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Estructura de tabla para la tabla `dias_vacaciones`
--

CREATE TABLE IF NOT EXISTS `dias_vacaciones` (
  `id` int(10) unsigned NOT NULL,
  `detvac_id` int(11) NOT NULL,
  `d_vac_dia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distritos`
--

CREATE TABLE IF NOT EXISTS `distritos` (
  `id` int(10) unsigned NOT NULL,
  `distrito` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1833 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `distritos`
--

INSERT INTO `distritos` (`id`, `distrito`, `provincia_id`, `created_at`, `updated_at`) VALUES
(1, 'CHACHAPOYAS', 1, NULL, NULL),
(2, 'ASUNCION', 1, NULL, NULL),
(3, 'BALSAS', 1, NULL, NULL),
(4, 'CHETO', 1, NULL, NULL),
(5, 'CHILIQUIN', 1, NULL, NULL),
(6, 'CHUQUIBAMBA', 1, NULL, NULL),
(7, 'GRANADA', 1, NULL, NULL),
(8, 'HUANCAS', 1, NULL, NULL),
(9, 'LA JALCA', 1, NULL, NULL),
(10, 'LEIMEBAMBA', 1, NULL, NULL),
(11, 'LEVANTO', 1, NULL, NULL),
(12, 'MAGDALENA', 1, NULL, NULL),
(13, 'MARISCAL CASTILLA', 1, NULL, NULL),
(14, 'MOLINOPAMPA', 1, NULL, NULL),
(15, 'MONTEVIDEO', 1, NULL, NULL),
(16, 'OLLEROS', 1, NULL, NULL),
(17, 'QUINJALCA', 1, NULL, NULL),
(18, 'SAN FRANCISCO DE DAGUAS', 1, NULL, NULL),
(19, 'SAN ISIDRO DE MAINO', 1, NULL, NULL),
(20, 'SOLOCO', 1, NULL, NULL),
(21, 'SONCHE', 1, NULL, NULL),
(22, 'LA PECA', 2, NULL, NULL),
(23, 'ARAMANGO', 2, NULL, NULL),
(24, 'COPALLIN', 2, NULL, NULL),
(25, 'EL PARCO', 2, NULL, NULL),
(26, 'IMAZA', 2, NULL, NULL),
(27, 'JUMBILLA', 3, NULL, NULL),
(28, 'CHISQUILLA', 3, NULL, NULL),
(29, 'CHURUJA', 3, NULL, NULL),
(30, 'COROSHA', 3, NULL, NULL),
(31, 'CUISPES', 3, NULL, NULL),
(32, 'FLORIDA', 3, NULL, NULL),
(33, 'JAZAN', 3, NULL, NULL),
(34, 'RECTA', 3, NULL, NULL),
(35, 'SAN CARLOS', 3, NULL, NULL),
(36, 'SHIPASBAMBA', 3, NULL, NULL),
(37, 'VALERA', 3, NULL, NULL),
(38, 'YAMBRASBAMBA', 3, NULL, NULL),
(39, 'NIEVA', 4, NULL, NULL),
(40, 'EL CENEPA', 4, NULL, NULL),
(41, 'RIO SANTIAGO', 4, NULL, NULL),
(42, 'LAMUD', 5, NULL, NULL),
(43, 'CAMPORREDONDO', 5, NULL, NULL),
(44, 'COCABAMBA', 5, NULL, NULL),
(45, 'COLCAMAR', 5, NULL, NULL),
(46, 'CONILA', 5, NULL, NULL),
(47, 'INGUILPATA', 5, NULL, NULL),
(48, 'LONGUITA', 5, NULL, NULL),
(49, 'LONYA CHICO', 5, NULL, NULL),
(50, 'LUYA', 5, NULL, NULL),
(51, 'LUYA VIEJO', 5, NULL, NULL),
(52, 'MARIA', 5, NULL, NULL),
(53, 'OCALLI', 5, NULL, NULL),
(54, 'OCUMAL', 5, NULL, NULL),
(55, 'PISUQUIA', 5, NULL, NULL),
(56, 'PROVIDENCIA', 5, NULL, NULL),
(57, 'SAN CRISTOBAL', 5, NULL, NULL),
(58, 'SAN FRANCISCO DEL YESO', 5, NULL, NULL),
(59, 'SAN JERONIMO', 5, NULL, NULL),
(60, 'SAN JUAN DE LOPECANCHA', 5, NULL, NULL),
(61, 'SANTA CATALINA', 5, NULL, NULL),
(62, 'SANTO TOMAS', 5, NULL, NULL),
(63, 'TINGO', 5, NULL, NULL),
(64, 'TRITA', 5, NULL, NULL),
(65, 'SAN NICOLAS', 6, NULL, NULL),
(66, 'CHIRIMOTO', 6, NULL, NULL),
(67, 'COCHAMAL', 6, NULL, NULL),
(68, 'HUAMBO', 6, NULL, NULL),
(69, 'LIMABAMBA', 6, NULL, NULL),
(70, 'LONGAR', 6, NULL, NULL),
(71, 'MARISCAL BENAVIDES', 6, NULL, NULL),
(72, 'MILPUC', 6, NULL, NULL),
(73, 'OMIA', 6, NULL, NULL),
(74, 'SANTA ROSA', 6, NULL, NULL),
(75, 'TOTORA', 6, NULL, NULL),
(76, 'VISTA ALEGRE', 6, NULL, NULL),
(77, 'BAGUA GRANDE', 7, NULL, NULL),
(78, 'CAJARURO', 7, NULL, NULL),
(79, 'CUMBA', 7, NULL, NULL),
(80, 'EL MILAGRO', 7, NULL, NULL),
(81, 'JAMALCA', 7, NULL, NULL),
(82, 'LONYA GRANDE', 7, NULL, NULL),
(83, 'YAMON', 7, NULL, NULL),
(84, 'HUARAZ', 8, NULL, NULL),
(85, 'COCHABAMBA', 8, NULL, NULL),
(86, 'COLCABAMBA', 8, NULL, NULL),
(87, 'HUANCHAY', 8, NULL, NULL),
(88, 'INDEPENDENCIA', 8, NULL, NULL),
(89, 'JANGAS', 8, NULL, NULL),
(90, 'LA LIBERTAD', 8, NULL, NULL),
(91, 'OLLEROS', 8, NULL, NULL),
(92, 'PAMPAS', 8, NULL, NULL),
(93, 'PARIACOTO', 8, NULL, NULL),
(94, 'PIRA', 8, NULL, NULL),
(95, 'TARICA', 8, NULL, NULL),
(96, 'AIJA', 9, NULL, NULL),
(97, 'CORIS', 9, NULL, NULL),
(98, 'HUACLLAN', 9, NULL, NULL),
(99, 'LA MERCED', 9, NULL, NULL),
(100, 'SUCCHA', 9, NULL, NULL),
(101, 'LLAMELLIN', 10, NULL, NULL),
(102, 'ACZO', 10, NULL, NULL),
(103, 'CHACCHO', 10, NULL, NULL),
(104, 'CHINGAS', 10, NULL, NULL),
(105, 'MIRGAS', 10, NULL, NULL),
(106, 'SAN JUAN DE RONTOY', 10, NULL, NULL),
(107, 'CHACAS', 11, NULL, NULL),
(108, 'ACOCHACA', 11, NULL, NULL),
(109, 'CHIQUIAN', 12, NULL, NULL),
(110, 'ABELARDO PARDO LEZAMETA', 12, NULL, NULL),
(111, 'ANTONIO RAYMONDI', 12, NULL, NULL),
(112, 'AQUIA', 12, NULL, NULL),
(113, 'CAJACAY', 12, NULL, NULL),
(114, 'CANIS', 12, NULL, NULL),
(115, 'COLQUIOC', 12, NULL, NULL),
(116, 'HUALLANCA', 12, NULL, NULL),
(117, 'HUASTA', 12, NULL, NULL),
(118, 'HUAYLLACAYAN', 12, NULL, NULL),
(119, 'LA PRIMAVERA', 12, NULL, NULL),
(120, 'MANGAS', 12, NULL, NULL),
(121, 'PACLLON', 12, NULL, NULL),
(122, 'SAN MIGUEL DE CORPANQUI', 12, NULL, NULL),
(123, 'TICLLOS', 12, NULL, NULL),
(124, 'CARHUAZ', 13, NULL, NULL),
(125, 'ACOPAMPA', 13, NULL, NULL),
(126, 'AMASHCA', 13, NULL, NULL),
(127, 'ANTA', 13, NULL, NULL),
(128, 'ATAQUERO', 13, NULL, NULL),
(129, 'MARCARA', 13, NULL, NULL),
(130, 'PARIAHUANCA', 13, NULL, NULL),
(131, 'SAN MIGUEL DE ACO', 13, NULL, NULL),
(132, 'SHILLA', 13, NULL, NULL),
(133, 'TINCO', 13, NULL, NULL),
(134, 'YUNGAR', 13, NULL, NULL),
(135, 'SAN LUIS', 14, NULL, NULL),
(136, 'SAN NICOLAS', 14, NULL, NULL),
(137, 'YAUYA', 14, NULL, NULL),
(138, 'CASMA', 15, NULL, NULL),
(139, 'BUENA VISTA ALTA', 15, NULL, NULL),
(140, 'COMANDANTE NOEL', 15, NULL, NULL),
(141, 'YAUTAN', 15, NULL, NULL),
(142, 'CORONGO', 16, NULL, NULL),
(143, 'ACO', 16, NULL, NULL),
(144, 'BAMBAS', 16, NULL, NULL),
(145, 'CUSCA', 16, NULL, NULL),
(146, 'LA PAMPA', 16, NULL, NULL),
(147, 'YANAC', 16, NULL, NULL),
(148, 'YUPAN', 16, NULL, NULL),
(149, 'HUARI', 17, NULL, NULL),
(150, 'ANRA', 17, NULL, NULL),
(151, 'CAJAY', 17, NULL, NULL),
(152, 'CHAVIN DE HUANTAR', 17, NULL, NULL),
(153, 'HUACACHI', 17, NULL, NULL),
(154, 'HUACCHIS', 17, NULL, NULL),
(155, 'HUACHIS', 17, NULL, NULL),
(156, 'HUANTAR', 17, NULL, NULL),
(157, 'MASIN', 17, NULL, NULL),
(158, 'PAUCAS', 17, NULL, NULL),
(159, 'PONTO', 17, NULL, NULL),
(160, 'RAHUAPAMPA', 17, NULL, NULL),
(161, 'RAPAYAN', 17, NULL, NULL),
(162, 'SAN MARCOS', 17, NULL, NULL),
(163, 'SAN PEDRO DE CHANA', 17, NULL, NULL),
(164, 'UCO', 17, NULL, NULL),
(165, 'HUARMEY', 18, NULL, NULL),
(166, 'COCHAPETI', 18, NULL, NULL),
(167, 'CULEBRAS', 18, NULL, NULL),
(168, 'HUAYAN', 18, NULL, NULL),
(169, 'MALVAS', 18, NULL, NULL),
(170, 'CARAZ', 26, NULL, NULL),
(171, 'HUALLANCA', 26, NULL, NULL),
(172, 'HUATA', 26, NULL, NULL),
(173, 'HUAYLAS', 26, NULL, NULL),
(174, 'MATO', 26, NULL, NULL),
(175, 'PAMPAROMAS', 26, NULL, NULL),
(176, 'PUEBLO LIBRE', 26, NULL, NULL),
(177, 'SANTA CRUZ', 26, NULL, NULL),
(178, 'SANTO TORIBIO', 26, NULL, NULL),
(179, 'YURACMARCA', 26, NULL, NULL),
(180, 'PISCOBAMBA', 27, NULL, NULL),
(181, 'CASCA', 27, NULL, NULL),
(182, 'ELEAZAR GUZMAN BARRON', 27, NULL, NULL),
(183, 'FIDEL OLIVAS ESCUDERO', 27, NULL, NULL),
(184, 'LLAMA', 27, NULL, NULL),
(185, 'LLUMPA', 27, NULL, NULL),
(186, 'LUCMA', 27, NULL, NULL),
(187, 'MUSGA', 27, NULL, NULL),
(188, 'OCROS', 21, NULL, NULL),
(189, 'ACAS', 21, NULL, NULL),
(190, 'CAJAMARQUILLA', 21, NULL, NULL),
(191, 'CARHUAPAMPA', 21, NULL, NULL),
(192, 'COCHAS', 21, NULL, NULL),
(193, 'CONGAS', 21, NULL, NULL),
(194, 'LLIPA', 21, NULL, NULL),
(195, 'SAN CRISTOBAL DE RAJAN', 21, NULL, NULL),
(196, 'SAN PEDRO', 21, NULL, NULL),
(197, 'SANTIAGO DE CHILCAS', 21, NULL, NULL),
(198, 'CABANA', 22, NULL, NULL),
(199, 'BOLOGNESI', 22, NULL, NULL),
(200, 'CONCHUCOS', 22, NULL, NULL),
(201, 'HUACASCHUQUE', 22, NULL, NULL),
(202, 'HUANDOVAL', 22, NULL, NULL),
(203, 'LACABAMBA', 22, NULL, NULL),
(204, 'LLAPO', 22, NULL, NULL),
(205, 'PALLASCA', 22, NULL, NULL),
(206, 'PAMPAS', 22, NULL, NULL),
(207, 'SANTA ROSA', 22, NULL, NULL),
(208, 'TAUCA', 22, NULL, NULL),
(209, 'POMABAMBA', 23, NULL, NULL),
(210, 'HUAYLLAN', 23, NULL, NULL),
(211, 'PAROBAMBA', 23, NULL, NULL),
(212, 'QUINUABAMBA', 23, NULL, NULL),
(213, 'RECUAY', 24, NULL, NULL),
(214, 'CATAC', 24, NULL, NULL),
(215, 'COTAPARACO', 24, NULL, NULL),
(216, 'HUAYLLAPAMPA', 24, NULL, NULL),
(217, 'LLACLLIN', 24, NULL, NULL),
(218, 'MARCA', 24, NULL, NULL),
(219, 'PAMPAS CHICO', 24, NULL, NULL),
(220, 'PARARIN', 24, NULL, NULL),
(221, 'TAPACOCHA', 24, NULL, NULL),
(222, 'TICAPAMPA', 24, NULL, NULL),
(223, 'CHIMBOTE', 25, NULL, NULL),
(224, 'CACERES DEL PERU', 25, NULL, NULL),
(225, 'COISHCO', 25, NULL, NULL),
(226, 'MACATE', 25, NULL, NULL),
(227, 'MORO', 25, NULL, NULL),
(228, 'NEPE&Ntilde;A', 25, NULL, NULL),
(229, 'SAMANCO', 25, NULL, NULL),
(230, 'SANTA', 25, NULL, NULL),
(231, 'NUEVO CHIMBOTE', 25, NULL, NULL),
(232, 'SIHUAS', 26, NULL, NULL),
(233, 'ACOBAMBA', 26, NULL, NULL),
(234, 'ALFONSO UGARTE', 26, NULL, NULL),
(235, 'CASHAPAMPA', 26, NULL, NULL),
(236, 'CHINGALPO', 26, NULL, NULL),
(237, 'HUAYLLABAMBA', 26, NULL, NULL),
(238, 'QUICHES', 26, NULL, NULL),
(239, 'RAGASH', 26, NULL, NULL),
(240, 'SAN JUAN', 26, NULL, NULL),
(241, 'SICSIBAMBA', 26, NULL, NULL),
(242, 'YUNGAY', 27, NULL, NULL),
(243, 'CASCAPARA', 27, NULL, NULL),
(244, 'MANCOS', 27, NULL, NULL),
(245, 'MATACOTO', 27, NULL, NULL),
(246, 'QUILLO', 27, NULL, NULL),
(247, 'RANRAHIRCA', 27, NULL, NULL),
(248, 'SHUPLUY', 27, NULL, NULL),
(249, 'YANAMA', 27, NULL, NULL),
(250, 'ABANCAY', 28, NULL, NULL),
(251, 'CHACOCHE', 28, NULL, NULL),
(252, 'CIRCA', 28, NULL, NULL),
(253, 'CURAHUASI', 28, NULL, NULL),
(254, 'HUANIPACA', 28, NULL, NULL),
(255, 'LAMBRAMA', 28, NULL, NULL),
(256, 'PICHIRHUA', 28, NULL, NULL),
(257, 'SAN PEDRO DE CACHORA', 28, NULL, NULL),
(258, 'TAMBURCO', 28, NULL, NULL),
(259, 'ANDAHUAYLAS', 29, NULL, NULL),
(260, 'ANDARAPA', 29, NULL, NULL),
(261, 'CHIARA', 29, NULL, NULL),
(262, 'HUANCARAMA', 29, NULL, NULL),
(263, 'HUANCARAY', 29, NULL, NULL),
(264, 'HUAYANA', 29, NULL, NULL),
(265, 'KISHUARA', 29, NULL, NULL),
(266, 'PACOBAMBA', 29, NULL, NULL),
(267, 'PACUCHA', 29, NULL, NULL),
(268, 'PAMPACHIRI', 29, NULL, NULL),
(269, 'POMACOCHA', 29, NULL, NULL),
(270, 'SAN ANTONIO DE CACHI', 29, NULL, NULL),
(271, 'SAN JERONIMO', 29, NULL, NULL),
(272, 'SAN MIGUEL DE CHACCRAMPA', 29, NULL, NULL),
(273, 'SANTA MARIA DE CHICMO', 29, NULL, NULL),
(274, 'TALAVERA', 29, NULL, NULL),
(275, 'TUMAY HUARACA', 29, NULL, NULL),
(276, 'TURPO', 29, NULL, NULL),
(277, 'KAQUIABAMBA', 29, NULL, NULL),
(278, 'ANTABAMBA', 30, NULL, NULL),
(279, 'EL ORO', 30, NULL, NULL),
(280, 'HUAQUIRCA', 30, NULL, NULL),
(281, 'JUAN ESPINOZA MEDRANO', 30, NULL, NULL),
(282, 'OROPESA', 30, NULL, NULL),
(283, 'PACHACONAS', 30, NULL, NULL),
(284, 'SABAINO', 30, NULL, NULL),
(285, 'CHALHUANCA', 31, NULL, NULL),
(286, 'CAPAYA', 31, NULL, NULL),
(287, 'CARAYBAMBA', 31, NULL, NULL),
(288, 'CHAPIMARCA', 31, NULL, NULL),
(289, 'COLCABAMBA', 31, NULL, NULL),
(290, 'COTARUSE', 31, NULL, NULL),
(291, 'HUAYLLO', 31, NULL, NULL),
(292, 'JUSTO APU SAHUARAURA', 31, NULL, NULL),
(293, 'LUCRE', 31, NULL, NULL),
(294, 'POCOHUANCA', 31, NULL, NULL),
(295, 'SAN JUAN DE CHAC&Ntilde;A', 31, NULL, NULL),
(296, 'SA&Ntilde;AYCA', 31, NULL, NULL),
(297, 'SORAYA', 31, NULL, NULL),
(298, 'TAPAIRIHUA', 31, NULL, NULL),
(299, 'TINTAY', 31, NULL, NULL),
(300, 'TORAYA', 31, NULL, NULL),
(301, 'YANACA', 31, NULL, NULL),
(302, 'TAMBOBAMBA', 32, NULL, NULL),
(303, 'COTABAMBAS', 32, NULL, NULL),
(304, 'COYLLURQUI', 32, NULL, NULL),
(305, 'HAQUIRA', 32, NULL, NULL),
(306, 'MARA', 32, NULL, NULL),
(307, 'CHALLHUAHUACHO', 32, NULL, NULL),
(308, 'CHINCHEROS', 33, NULL, NULL),
(309, 'ANCO-HUALLO', 33, NULL, NULL),
(310, 'COCHARCAS', 33, NULL, NULL),
(311, 'HUACCANA', 33, NULL, NULL),
(312, 'OCOBAMBA', 33, NULL, NULL),
(313, 'ONGOY', 33, NULL, NULL),
(314, 'URANMARCA', 33, NULL, NULL),
(315, 'RANRACANCHA', 33, NULL, NULL),
(316, 'CHUQUIBAMBILLA', 34, NULL, NULL),
(317, 'CURPAHUASI', 34, NULL, NULL),
(318, 'GAMARRA', 34, NULL, NULL),
(319, 'HUAYLLATI', 34, NULL, NULL),
(320, 'MAMARA', 34, NULL, NULL),
(321, 'MICAELA BASTIDAS', 34, NULL, NULL),
(322, 'PATAYPAMPA', 34, NULL, NULL),
(323, 'PROGRESO', 34, NULL, NULL),
(324, 'SAN ANTONIO', 34, NULL, NULL),
(325, 'SANTA ROSA', 34, NULL, NULL),
(326, 'TURPAY', 34, NULL, NULL),
(327, 'VILCABAMBA', 34, NULL, NULL),
(328, 'VIRUNDO', 34, NULL, NULL),
(329, 'CURASCO', 34, NULL, NULL),
(330, 'AREQUIPA', 35, NULL, NULL),
(331, 'ALTO SELVA ALEGRE', 35, NULL, NULL),
(332, 'CAYMA', 35, NULL, NULL),
(333, 'CERRO COLORADO', 35, NULL, NULL),
(334, 'CHARACATO', 35, NULL, NULL),
(335, 'CHIGUATA', 35, NULL, NULL),
(336, 'JACOBO HUNTER', 35, NULL, NULL),
(337, 'LA JOYA', 35, NULL, NULL),
(338, 'MARIANO MELGAR', 35, NULL, NULL),
(339, 'MIRAFLORES', 35, NULL, NULL),
(340, 'MOLLEBAYA', 35, NULL, NULL),
(341, 'PAUCARPATA', 35, NULL, NULL),
(342, 'POCSI', 35, NULL, NULL),
(343, 'POLOBAYA', 35, NULL, NULL),
(344, 'QUEQUE&Ntilde;A', 35, NULL, NULL),
(345, 'SABANDIA', 35, NULL, NULL),
(346, 'SACHACA', 35, NULL, NULL),
(347, 'SAN JUAN DE SIGUAS', 35, NULL, NULL),
(348, 'SAN JUAN DE TARUCANI', 35, NULL, NULL),
(349, 'SANTA ISABEL DE SIGUAS', 35, NULL, NULL),
(350, 'SANTA RITA DE SIGUAS', 35, NULL, NULL),
(351, 'SOCABAYA', 35, NULL, NULL),
(352, 'TIABAYA', 35, NULL, NULL),
(353, 'UCHUMAYO', 35, NULL, NULL),
(354, 'VITOR', 35, NULL, NULL),
(355, 'YANAHUARA', 35, NULL, NULL),
(356, 'YARABAMBA', 35, NULL, NULL),
(357, 'YURA', 35, NULL, NULL),
(358, 'JOSE LUIS BUSTAMANTE Y RIVERO', 35, NULL, NULL),
(359, 'CAMANA', 36, NULL, NULL),
(360, 'JOSE MARIA QUIMPER', 36, NULL, NULL),
(361, 'MARIANO NICOLAS VALCARCEL', 36, NULL, NULL),
(362, 'MARISCAL CACERES', 36, NULL, NULL),
(363, 'NICOLAS DE PIEROLA', 36, NULL, NULL),
(364, 'OCO&Ntilde;A', 36, NULL, NULL),
(365, 'QUILCA', 36, NULL, NULL),
(366, 'SAMUEL PASTOR', 36, NULL, NULL),
(367, 'CARAVELI', 37, NULL, NULL),
(368, 'ACARI', 37, NULL, NULL),
(369, 'ATICO', 37, NULL, NULL),
(370, 'ATIQUIPA', 37, NULL, NULL),
(371, 'BELLA UNION', 37, NULL, NULL),
(372, 'CAHUACHO', 37, NULL, NULL),
(373, 'CHALA', 37, NULL, NULL),
(374, 'CHAPARRA', 37, NULL, NULL),
(375, 'HUANUHUANU', 37, NULL, NULL),
(376, 'JAQUI', 37, NULL, NULL),
(377, 'LOMAS', 37, NULL, NULL),
(378, 'QUICACHA', 37, NULL, NULL),
(379, 'YAUCA', 37, NULL, NULL),
(380, 'APLAO', 38, NULL, NULL),
(381, 'ANDAGUA', 38, NULL, NULL),
(382, 'AYO', 38, NULL, NULL),
(383, 'CHACHAS', 38, NULL, NULL),
(384, 'CHILCAYMARCA', 38, NULL, NULL),
(385, 'CHOCO', 38, NULL, NULL),
(386, 'HUANCARQUI', 38, NULL, NULL),
(387, 'MACHAGUAY', 38, NULL, NULL),
(388, 'ORCOPAMPA', 38, NULL, NULL),
(389, 'PAMPACOLCA', 38, NULL, NULL),
(390, 'TIPAN', 38, NULL, NULL),
(391, 'U&Ntilde;ON', 38, NULL, NULL),
(392, 'URACA', 38, NULL, NULL),
(393, 'VIRACO', 38, NULL, NULL),
(394, 'CHIVAY', 39, NULL, NULL),
(395, 'ACHOMA', 39, NULL, NULL),
(396, 'CABANACONDE', 39, NULL, NULL),
(397, 'CALLALLI', 39, NULL, NULL),
(398, 'CAYLLOMA', 39, NULL, NULL),
(399, 'COPORAQUE', 39, NULL, NULL),
(400, 'HUAMBO', 39, NULL, NULL),
(401, 'HUANCA', 39, NULL, NULL),
(402, 'ICHUPAMPA', 39, NULL, NULL),
(403, 'LARI', 39, NULL, NULL),
(404, 'LLUTA', 39, NULL, NULL),
(405, 'MACA', 39, NULL, NULL),
(406, 'MADRIGAL', 39, NULL, NULL),
(407, 'SAN ANTONIO DE CHUCA', 39, NULL, NULL),
(408, 'SIBAYO', 39, NULL, NULL),
(409, 'TAPAY', 39, NULL, NULL),
(410, 'TISCO', 39, NULL, NULL),
(411, 'TUTI', 39, NULL, NULL),
(412, 'YANQUE', 39, NULL, NULL),
(413, 'MAJES', 39, NULL, NULL),
(414, 'CHUQUIBAMBA', 40, NULL, NULL),
(415, 'ANDARAY', 40, NULL, NULL),
(416, 'CAYARANI', 40, NULL, NULL),
(417, 'CHICHAS', 40, NULL, NULL),
(418, 'IRAY', 40, NULL, NULL),
(419, 'RIO GRANDE', 40, NULL, NULL),
(420, 'SALAMANCA', 40, NULL, NULL),
(421, 'YANAQUIHUA', 40, NULL, NULL),
(422, 'MOLLENDO', 41, NULL, NULL),
(423, 'COCACHACRA', 41, NULL, NULL),
(424, 'DEAN VALDIVIA', 41, NULL, NULL),
(425, 'ISLAY', 41, NULL, NULL),
(426, 'MEJIA', 41, NULL, NULL),
(427, 'PUNTA DE BOMBON', 41, NULL, NULL),
(428, 'COTAHUASI', 42, NULL, NULL),
(429, 'ALCA', 42, NULL, NULL),
(430, 'CHARCANA', 42, NULL, NULL),
(431, 'HUAYNACOTAS', 42, NULL, NULL),
(432, 'PAMPAMARCA', 42, NULL, NULL),
(433, 'PUYCA', 42, NULL, NULL),
(434, 'QUECHUALLA', 42, NULL, NULL),
(435, 'SAYLA', 42, NULL, NULL),
(436, 'TAURIA', 42, NULL, NULL),
(437, 'TOMEPAMPA', 42, NULL, NULL),
(438, 'TORO', 42, NULL, NULL),
(439, 'AYACUCHO', 43, NULL, NULL),
(440, 'ACOCRO', 43, NULL, NULL),
(441, 'ACOS VINCHOS', 43, NULL, NULL),
(442, 'CARMEN ALTO', 43, NULL, NULL),
(443, 'CHIARA', 43, NULL, NULL),
(444, 'OCROS', 43, NULL, NULL),
(445, 'PACAYCASA', 43, NULL, NULL),
(446, 'QUINUA', 43, NULL, NULL),
(447, 'SAN JOSE DE TICLLAS', 43, NULL, NULL),
(448, 'SAN JUAN BAUTISTA', 43, NULL, NULL),
(449, 'SANTIAGO DE PISCHA', 43, NULL, NULL),
(450, 'SOCOS', 43, NULL, NULL),
(451, 'TAMBILLO', 43, NULL, NULL),
(452, 'VINCHOS', 43, NULL, NULL),
(453, 'JESUS NAZARENO', 43, NULL, NULL),
(454, 'CANGALLO', 44, NULL, NULL),
(455, 'CHUSCHI', 44, NULL, NULL),
(456, 'LOS MOROCHUCOS', 44, NULL, NULL),
(457, 'MARIA PARADO DE BELLIDO', 44, NULL, NULL),
(458, 'PARAS', 44, NULL, NULL),
(459, 'TOTOS', 44, NULL, NULL),
(460, 'SANCOS', 45, NULL, NULL),
(461, 'CARAPO', 45, NULL, NULL),
(462, 'SACSAMARCA', 45, NULL, NULL),
(463, 'SANTIAGO DE LUCANAMARCA', 45, NULL, NULL),
(464, 'HUANTA', 46, NULL, NULL),
(465, 'AYAHUANCO', 46, NULL, NULL),
(466, 'HUAMANGUILLA', 46, NULL, NULL),
(467, 'IGUAIN', 46, NULL, NULL),
(468, 'LURICOCHA', 46, NULL, NULL),
(469, 'SANTILLANA', 46, NULL, NULL),
(470, 'SIVIA', 46, NULL, NULL),
(471, 'LLOCHEGUA', 46, NULL, NULL),
(472, 'SAN MIGUEL', 47, NULL, NULL),
(473, 'ANCO', 47, NULL, NULL),
(474, 'AYNA', 47, NULL, NULL),
(475, 'CHILCAS', 47, NULL, NULL),
(476, 'CHUNGUI', 47, NULL, NULL),
(477, 'LUIS CARRANZA', 47, NULL, NULL),
(478, 'SANTA ROSA', 47, NULL, NULL),
(479, 'TAMBO', 47, NULL, NULL),
(480, 'PUQUIO', 48, NULL, NULL),
(481, 'AUCARA', 48, NULL, NULL),
(482, 'CABANA', 48, NULL, NULL),
(483, 'CARMEN SALCEDO', 48, NULL, NULL),
(484, 'CHAVI&Ntilde;A', 48, NULL, NULL),
(485, 'CHIPAO', 48, NULL, NULL),
(486, 'HUAC-HUAS', 48, NULL, NULL),
(487, 'LARAMATE', 48, NULL, NULL),
(488, 'LEONCIO PRADO', 48, NULL, NULL),
(489, 'LLAUTA', 48, NULL, NULL),
(490, 'LUCANAS', 48, NULL, NULL),
(491, 'OCA&Ntilde;A', 48, NULL, NULL),
(492, 'OTOCA', 48, NULL, NULL),
(493, 'SAISA', 48, NULL, NULL),
(494, 'SAN CRISTOBAL', 48, NULL, NULL),
(495, 'SAN JUAN', 48, NULL, NULL),
(496, 'SAN PEDRO', 48, NULL, NULL),
(497, 'SAN PEDRO DE PALCO', 48, NULL, NULL),
(498, 'SANCOS', 48, NULL, NULL),
(499, 'SANTA ANA DE HUAYCAHUACHO', 48, NULL, NULL),
(500, 'SANTA LUCIA', 48, NULL, NULL),
(501, 'CORACORA', 49, NULL, NULL),
(502, 'CHUMPI', 49, NULL, NULL),
(503, 'CORONEL CASTA&Ntilde;EDA', 49, NULL, NULL),
(504, 'PACAPAUSA', 49, NULL, NULL),
(505, 'PULLO', 49, NULL, NULL),
(506, 'PUYUSCA', 49, NULL, NULL),
(507, 'SAN FRANCISCO DE RAVACAYCO', 49, NULL, NULL),
(508, 'UPAHUACHO', 49, NULL, NULL),
(509, 'PAUSA', 50, NULL, NULL),
(510, 'COLTA', 50, NULL, NULL),
(511, 'CORCULLA', 50, NULL, NULL),
(512, 'LAMPA', 50, NULL, NULL),
(513, 'MARCABAMBA', 50, NULL, NULL),
(514, 'OYOLO', 50, NULL, NULL),
(515, 'PARARCA', 50, NULL, NULL),
(516, 'SAN JAVIER DE ALPABAMBA', 50, NULL, NULL),
(517, 'SAN JOSE DE USHUA', 50, NULL, NULL),
(518, 'SARA SARA', 50, NULL, NULL),
(519, 'QUEROBAMBA', 51, NULL, NULL),
(520, 'BELEN', 51, NULL, NULL),
(521, 'CHALCOS', 51, NULL, NULL),
(522, 'CHILCAYOC', 51, NULL, NULL),
(523, 'HUACA&Ntilde;A', 51, NULL, NULL),
(524, 'MORCOLLA', 51, NULL, NULL),
(525, 'PAICO', 51, NULL, NULL),
(526, 'SAN PEDRO DE LARCAY', 51, NULL, NULL),
(527, 'SAN SALVADOR DE QUIJE', 51, NULL, NULL),
(528, 'SANTIAGO DE PAUCARAY', 51, NULL, NULL),
(529, 'SORAS', 51, NULL, NULL),
(530, 'HUANCAPI', 52, NULL, NULL),
(531, 'ALCAMENCA', 52, NULL, NULL),
(532, 'APONGO', 52, NULL, NULL),
(533, 'ASQUIPATA', 52, NULL, NULL),
(534, 'CANARIA', 52, NULL, NULL),
(535, 'CAYARA', 52, NULL, NULL),
(536, 'COLCA', 52, NULL, NULL),
(537, 'HUAMANQUIQUIA', 52, NULL, NULL),
(538, 'HUANCARAYLLA', 52, NULL, NULL),
(539, 'HUAYA', 52, NULL, NULL),
(540, 'SARHUA', 52, NULL, NULL),
(541, 'VILCANCHOS', 52, NULL, NULL),
(542, 'VILCAS HUAMAN', 53, NULL, NULL),
(543, 'ACCOMARCA', 53, NULL, NULL),
(544, 'CARHUANCA', 53, NULL, NULL),
(545, 'CONCEPCION', 53, NULL, NULL),
(546, 'HUAMBALPA', 53, NULL, NULL),
(547, 'INDEPENDENCIA', 53, NULL, NULL),
(548, 'SAURAMA', 53, NULL, NULL),
(549, 'VISCHONGO', 53, NULL, NULL),
(550, 'CAJAMARCA', 54, NULL, NULL),
(551, 'CAJAMARCA', 54, NULL, NULL),
(552, 'ASUNCION', 54, NULL, NULL),
(553, 'CHETILLA', 54, NULL, NULL),
(554, 'COSPAN', 54, NULL, NULL),
(555, 'ENCA&Ntilde;ADA', 54, NULL, NULL),
(556, 'JESUS', 54, NULL, NULL),
(557, 'LLACANORA', 54, NULL, NULL),
(558, 'LOS BA&Ntilde;OS DEL INCA', 54, NULL, NULL),
(559, 'MAGDALENA', 54, NULL, NULL),
(560, 'MATARA', 54, NULL, NULL),
(561, 'NAMORA', 54, NULL, NULL),
(562, 'SAN JUAN', 54, NULL, NULL),
(563, 'CAJABAMBA', 55, NULL, NULL),
(564, 'CACHACHI', 55, NULL, NULL),
(565, 'CONDEBAMBA', 55, NULL, NULL),
(566, 'SITACOCHA', 55, NULL, NULL),
(567, 'CELENDIN', 56, NULL, NULL),
(568, 'CHUMUCH', 56, NULL, NULL),
(569, 'CORTEGANA', 56, NULL, NULL),
(570, 'HUASMIN', 56, NULL, NULL),
(571, 'JORGE CHAVEZ', 56, NULL, NULL),
(572, 'JOSE GALVEZ', 56, NULL, NULL),
(573, 'MIGUEL IGLESIAS', 56, NULL, NULL),
(574, 'OXAMARCA', 56, NULL, NULL),
(575, 'SOROCHUCO', 56, NULL, NULL),
(576, 'SUCRE', 56, NULL, NULL),
(577, 'UTCO', 56, NULL, NULL),
(578, 'LA LIBERTAD DE PALLAN', 56, NULL, NULL),
(579, 'CHOTA', 57, NULL, NULL),
(580, 'ANGUIA', 57, NULL, NULL),
(581, 'CHADIN', 57, NULL, NULL),
(582, 'CHIGUIRIP', 57, NULL, NULL),
(583, 'CHIMBAN', 57, NULL, NULL),
(584, 'CHOROPAMPA', 57, NULL, NULL),
(585, 'COCHABAMBA', 57, NULL, NULL),
(586, 'CONCHAN', 57, NULL, NULL),
(587, 'HUAMBOS', 57, NULL, NULL),
(588, 'LAJAS', 57, NULL, NULL),
(589, 'LLAMA', 57, NULL, NULL),
(590, 'MIRACOSTA', 57, NULL, NULL),
(591, 'PACCHA', 57, NULL, NULL),
(592, 'PION', 57, NULL, NULL),
(593, 'QUEROCOTO', 57, NULL, NULL),
(594, 'SAN JUAN DE LICUPIS', 57, NULL, NULL),
(595, 'TACABAMBA', 57, NULL, NULL),
(596, 'TOCMOCHE', 57, NULL, NULL),
(597, 'CHALAMARCA', 57, NULL, NULL),
(598, 'CONTUMAZA', 58, NULL, NULL),
(599, 'CHILETE', 58, NULL, NULL),
(600, 'CUPISNIQUE', 58, NULL, NULL),
(601, 'GUZMANGO', 58, NULL, NULL),
(602, 'SAN BENITO', 58, NULL, NULL),
(603, 'SANTA CRUZ DE TOLED', 58, NULL, NULL),
(604, 'TANTARICA', 58, NULL, NULL),
(605, 'YONAN', 58, NULL, NULL),
(606, 'CUTERVO', 59, NULL, NULL),
(607, 'CALLAYUC', 59, NULL, NULL),
(608, 'CHOROS', 59, NULL, NULL),
(609, 'CUJILLO', 59, NULL, NULL),
(610, 'LA RAMADA', 59, NULL, NULL),
(611, 'PIMPINGOS', 59, NULL, NULL),
(612, 'QUEROCOTILLO', 59, NULL, NULL),
(613, 'SAN ANDRES DE CUTERVO', 59, NULL, NULL),
(614, 'SAN JUAN DE CUTERVO', 59, NULL, NULL),
(615, 'SAN LUIS DE LUCMA', 59, NULL, NULL),
(616, 'SANTA CRUZ', 59, NULL, NULL),
(617, 'SANTO DOMINGO DE LA CAPILLA', 59, NULL, NULL),
(618, 'SANTO TOMAS', 59, NULL, NULL),
(619, 'SOCOTA', 59, NULL, NULL),
(620, 'TORIBIO CASANOVA', 59, NULL, NULL),
(621, 'BAMBAMARCA', 60, NULL, NULL),
(622, 'CHUGUR', 60, NULL, NULL),
(623, 'HUALGAYOC', 60, NULL, NULL),
(624, 'JAEN', 61, NULL, NULL),
(625, 'BELLAVISTA', 61, NULL, NULL),
(626, 'CHONTALI', 61, NULL, NULL),
(627, 'COLASAY', 61, NULL, NULL),
(628, 'HUABAL', 61, NULL, NULL),
(629, 'LAS PIRIAS', 61, NULL, NULL),
(630, 'POMAHUACA', 61, NULL, NULL),
(631, 'PUCARA', 61, NULL, NULL),
(632, 'SALLIQUE', 61, NULL, NULL),
(633, 'SAN FELIPE', 61, NULL, NULL),
(634, 'SAN JOSE DEL ALTO', 61, NULL, NULL),
(635, 'SANTA ROSA', 61, NULL, NULL),
(636, 'SAN IGNACIO', 62, NULL, NULL),
(637, 'CHIRINOS', 62, NULL, NULL),
(638, 'HUARANGO', 62, NULL, NULL),
(639, 'LA COIPA', 62, NULL, NULL),
(640, 'NAMBALLE', 62, NULL, NULL),
(641, 'SAN JOSE DE LOURDES', 62, NULL, NULL),
(642, 'TABACONAS', 62, NULL, NULL),
(643, 'PEDRO GALVEZ', 63, NULL, NULL),
(644, 'CHANCAY', 63, NULL, NULL),
(645, 'EDUARDO VILLANUEVA', 63, NULL, NULL),
(646, 'GREGORIO PITA', 63, NULL, NULL),
(647, 'ICHOCAN', 63, NULL, NULL),
(648, 'JOSE MANUEL QUIROZ', 63, NULL, NULL),
(649, 'JOSE SABOGAL', 63, NULL, NULL),
(650, 'SAN MIGUEL', 64, NULL, NULL),
(651, 'SAN MIGUEL', 64, NULL, NULL),
(652, 'BOLIVAR', 64, NULL, NULL),
(653, 'CALQUIS', 64, NULL, NULL),
(654, 'CATILLUC', 64, NULL, NULL),
(655, 'EL PRADO', 64, NULL, NULL),
(656, 'LA FLORIDA', 64, NULL, NULL),
(657, 'LLAPA', 64, NULL, NULL),
(658, 'NANCHOC', 64, NULL, NULL),
(659, 'NIEPOS', 64, NULL, NULL),
(660, 'SAN GREGORIO', 64, NULL, NULL),
(661, 'SAN SILVESTRE DE COCHAN', 64, NULL, NULL),
(662, 'TONGOD', 64, NULL, NULL),
(663, 'UNION AGUA BLANCA', 64, NULL, NULL),
(664, 'SAN PABLO', 65, NULL, NULL),
(665, 'SAN BERNARDINO', 65, NULL, NULL),
(666, 'SAN LUIS', 65, NULL, NULL),
(667, 'TUMBADEN', 65, NULL, NULL),
(668, 'SANTA CRUZ', 66, NULL, NULL),
(669, 'ANDABAMBA', 66, NULL, NULL),
(670, 'CATACHE', 66, NULL, NULL),
(671, 'CHANCAYBA&Ntilde;OS', 66, NULL, NULL),
(672, 'LA ESPERANZA', 66, NULL, NULL),
(673, 'NINABAMBA', 66, NULL, NULL),
(674, 'PULAN', 66, NULL, NULL),
(675, 'SAUCEPAMPA', 66, NULL, NULL),
(676, 'SEXI', 66, NULL, NULL),
(677, 'UTICYACU', 66, NULL, NULL),
(678, 'YAUYUCAN', 66, NULL, NULL),
(679, 'CALLAO', 67, NULL, NULL),
(680, 'BELLAVISTA', 67, NULL, NULL),
(681, 'CARMEN DE LA LEGUA REYNOSO', 67, NULL, NULL),
(682, 'LA PERLA', 67, NULL, NULL),
(683, 'LA PUNTA', 67, NULL, NULL),
(684, 'VENTANILLA', 67, NULL, NULL),
(685, 'CUSCO', 67, NULL, NULL),
(686, 'CCORCA', 67, NULL, NULL),
(687, 'POROY', 67, NULL, NULL),
(688, 'SAN JERONIMO', 67, NULL, NULL),
(689, 'SAN SEBASTIAN', 67, NULL, NULL),
(690, 'SANTIAGO', 67, NULL, NULL),
(691, 'SAYLLA', 67, NULL, NULL),
(692, 'WANCHAQ', 67, NULL, NULL),
(693, 'ACOMAYO', 68, NULL, NULL),
(694, 'ACOPIA', 68, NULL, NULL),
(695, 'ACOS', 68, NULL, NULL),
(696, 'MOSOC LLACTA', 68, NULL, NULL),
(697, 'POMACANCHI', 68, NULL, NULL),
(698, 'RONDOCAN', 68, NULL, NULL),
(699, 'SANGARARA', 68, NULL, NULL),
(700, 'ANTA', 69, NULL, NULL),
(701, 'ANCAHUASI', 69, NULL, NULL),
(702, 'CACHIMAYO', 69, NULL, NULL),
(703, 'CHINCHAYPUJIO', 69, NULL, NULL),
(704, 'HUAROCONDO', 69, NULL, NULL),
(705, 'LIMATAMBO', 69, NULL, NULL),
(706, 'MOLLEPATA', 69, NULL, NULL),
(707, 'PUCYURA', 69, NULL, NULL),
(708, 'ZURITE', 69, NULL, NULL),
(709, 'CALCA', 70, NULL, NULL),
(710, 'COYA', 70, NULL, NULL),
(711, 'LAMAY', 70, NULL, NULL),
(712, 'LARES', 70, NULL, NULL),
(713, 'PISAC', 70, NULL, NULL),
(714, 'SAN SALVADOR', 70, NULL, NULL),
(715, 'TARAY', 70, NULL, NULL),
(716, 'YANATILE', 70, NULL, NULL),
(717, 'YANAOCA', 71, NULL, NULL),
(718, 'CHECCA', 71, NULL, NULL),
(719, 'KUNTURKANKI', 71, NULL, NULL),
(720, 'LANGUI', 71, NULL, NULL),
(721, 'LAYO', 71, NULL, NULL),
(722, 'PAMPAMARCA', 71, NULL, NULL),
(723, 'QUEHUE', 71, NULL, NULL),
(724, 'TUPAC AMARU', 71, NULL, NULL),
(725, 'SICUANI', 72, NULL, NULL),
(726, 'CHECACUPE', 72, NULL, NULL),
(727, 'COMBAPATA', 72, NULL, NULL),
(728, 'MARANGANI', 72, NULL, NULL),
(729, 'PITUMARCA', 72, NULL, NULL),
(730, 'SAN PABLO', 72, NULL, NULL),
(731, 'SAN PEDRO', 72, NULL, NULL),
(732, 'TINTA', 72, NULL, NULL),
(733, 'SANTO TOMAS', 73, NULL, NULL),
(734, 'CAPACMARCA', 73, NULL, NULL),
(735, 'CHAMACA', 73, NULL, NULL),
(736, 'COLQUEMARCA', 73, NULL, NULL),
(737, 'LIVITACA', 73, NULL, NULL),
(738, 'LLUSCO', 73, NULL, NULL),
(739, 'QUI&Ntilde;OTA', 73, NULL, NULL),
(740, 'VELILLE', 73, NULL, NULL),
(741, 'ESPINAR', 74, NULL, NULL),
(742, 'CONDOROMA', 74, NULL, NULL),
(743, 'COPORAQUE', 74, NULL, NULL),
(744, 'OCORURO', 74, NULL, NULL),
(745, 'PALLPATA', 74, NULL, NULL),
(746, 'PICHIGUA', 74, NULL, NULL),
(747, 'SUYCKUTAMBO', 74, NULL, NULL),
(748, 'ALTO PICHIGUA', 74, NULL, NULL),
(749, 'SANTA ANA', 75, NULL, NULL),
(750, 'ECHARATE', 75, NULL, NULL),
(751, 'HUAYOPATA', 75, NULL, NULL),
(752, 'MARANURA', 75, NULL, NULL),
(753, 'OCOBAMBA', 75, NULL, NULL),
(754, 'QUELLOUNO', 75, NULL, NULL),
(755, 'KIMBIRI', 75, NULL, NULL),
(756, 'SANTA TERESA', 75, NULL, NULL),
(757, 'VILCABAMBA', 75, NULL, NULL),
(758, 'PICHARI', 75, NULL, NULL),
(759, 'PARURO', 76, NULL, NULL),
(760, 'ACCHA', 76, NULL, NULL),
(761, 'CCAPI', 76, NULL, NULL),
(762, 'COLCHA', 76, NULL, NULL),
(763, 'HUANOQUITE', 76, NULL, NULL),
(764, 'OMACHA', 76, NULL, NULL),
(765, 'PACCARITAMBO', 76, NULL, NULL),
(766, 'PILLPINTO', 76, NULL, NULL),
(767, 'YAURISQUE', 76, NULL, NULL),
(768, 'PAUCARTAMBO', 77, NULL, NULL),
(769, 'CAICAY', 77, NULL, NULL),
(770, 'CHALLABAMBA', 77, NULL, NULL),
(771, 'COLQUEPATA', 77, NULL, NULL),
(772, 'HUANCARANI', 77, NULL, NULL),
(773, 'KOS&Ntilde;IPATA', 77, NULL, NULL),
(774, 'URCOS', 78, NULL, NULL),
(775, 'ANDAHUAYLILLAS', 78, NULL, NULL),
(776, 'CAMANTI', 78, NULL, NULL),
(777, 'CCARHUAYO', 78, NULL, NULL),
(778, 'CCATCA', 78, NULL, NULL),
(779, 'CUSIPATA', 78, NULL, NULL),
(780, 'HUARO', 78, NULL, NULL),
(781, 'LUCRE', 78, NULL, NULL),
(782, 'MARCAPATA', 78, NULL, NULL),
(783, 'OCONGATE', 78, NULL, NULL),
(784, 'OROPESA', 78, NULL, NULL),
(785, 'QUIQUIJANA', 78, NULL, NULL),
(786, 'URUBAMBA', 79, NULL, NULL),
(787, 'CHINCHERO', 79, NULL, NULL),
(788, 'HUAYLLABAMBA', 79, NULL, NULL),
(789, 'MACHUPICCHU', 79, NULL, NULL),
(790, 'MARAS', 79, NULL, NULL),
(791, 'OLLANTAYTAMBO', 79, NULL, NULL),
(792, 'YUCAY', 79, NULL, NULL),
(793, 'HUANCAVELICA', 80, NULL, NULL),
(794, 'ACOBAMBILLA', 80, NULL, NULL),
(795, 'ACORIA', 80, NULL, NULL),
(796, 'CONAYCA', 80, NULL, NULL),
(797, 'CUENCA', 80, NULL, NULL),
(798, 'HUACHOCOLPA', 80, NULL, NULL),
(799, 'HUAYLLAHUARA', 80, NULL, NULL),
(800, 'IZCUCHACA', 80, NULL, NULL),
(801, 'LARIA', 80, NULL, NULL),
(802, 'MANTA', 80, NULL, NULL),
(803, 'MARISCAL CACERES', 80, NULL, NULL),
(804, 'MOYA', 80, NULL, NULL),
(805, 'NUEVO OCCORO', 80, NULL, NULL),
(806, 'PALCA', 80, NULL, NULL),
(807, 'PILCHACA', 80, NULL, NULL),
(808, 'VILCA', 80, NULL, NULL),
(809, 'YAULI', 80, NULL, NULL),
(810, 'ASCENSION', 80, NULL, NULL),
(811, 'HUANDO', 80, NULL, NULL),
(812, 'ACOBAMBA', 81, NULL, NULL),
(813, 'ANDABAMBA', 81, NULL, NULL),
(814, 'ANTA', 81, NULL, NULL),
(815, 'CAJA', 81, NULL, NULL),
(816, 'MARCAS', 81, NULL, NULL),
(817, 'PAUCARA', 81, NULL, NULL),
(818, 'POMACOCHA', 81, NULL, NULL),
(819, 'ROSARIO', 81, NULL, NULL),
(820, 'LIRCAY', 82, NULL, NULL),
(821, 'ANCHONGA', 82, NULL, NULL),
(822, 'CALLANMARCA', 82, NULL, NULL),
(823, 'CCOCHACCASA', 82, NULL, NULL),
(824, 'CHINCHO', 82, NULL, NULL),
(825, 'CONGALLA', 82, NULL, NULL),
(826, 'HUANCA-HUANCA', 82, NULL, NULL),
(827, 'HUAYLLAY GRANDE', 82, NULL, NULL),
(828, 'JULCAMARCA', 82, NULL, NULL),
(829, 'SAN ANTONIO DE ANTAPARCO', 82, NULL, NULL),
(830, 'SANTO TOMAS DE PATA', 82, NULL, NULL),
(831, 'SECCLLA', 82, NULL, NULL),
(832, 'CASTROVIRREYNA', 83, NULL, NULL),
(833, 'ARMA', 83, NULL, NULL),
(834, 'AURAHUA', 83, NULL, NULL),
(835, 'CAPILLAS', 83, NULL, NULL),
(836, 'CHUPAMARCA', 83, NULL, NULL),
(837, 'COCAS', 83, NULL, NULL),
(838, 'HUACHOS', 83, NULL, NULL),
(839, 'HUAMATAMBO', 83, NULL, NULL),
(840, 'MOLLEPAMPA', 83, NULL, NULL),
(841, 'SAN JUAN', 83, NULL, NULL),
(842, 'SANTA ANA', 83, NULL, NULL),
(843, 'TANTARA', 83, NULL, NULL),
(844, 'TICRAPO', 83, NULL, NULL),
(845, 'CHURCAMPA', 84, NULL, NULL),
(846, 'ANCO', 84, NULL, NULL),
(847, 'CHINCHIHUASI', 84, NULL, NULL),
(848, 'EL CARMEN', 84, NULL, NULL),
(849, 'LA MERCED', 84, NULL, NULL),
(850, 'LOCROJA', 84, NULL, NULL),
(851, 'PAUCARBAMBA', 84, NULL, NULL),
(852, 'SAN MIGUEL DE MAYOCC', 84, NULL, NULL),
(853, 'SAN PEDRO DE CORIS', 84, NULL, NULL),
(854, 'PACHAMARCA', 84, NULL, NULL),
(855, 'HUAYTARA', 85, NULL, NULL),
(856, 'AYAVI', 85, NULL, NULL),
(857, 'CORDOVA', 85, NULL, NULL),
(858, 'HUAYACUNDO ARMA', 85, NULL, NULL),
(859, 'LARAMARCA', 85, NULL, NULL),
(860, 'OCOYO', 85, NULL, NULL),
(861, 'PILPICHACA', 85, NULL, NULL),
(862, 'QUERCO', 85, NULL, NULL),
(863, 'QUITO-ARMA', 85, NULL, NULL),
(864, 'SAN ANTONIO DE CUSICANCHA', 85, NULL, NULL),
(865, 'SAN FRANCISCO DE SANGAYAICO', 85, NULL, NULL),
(866, 'SAN ISIDRO', 85, NULL, NULL),
(867, 'SANTIAGO DE CHOCORVOS', 85, NULL, NULL),
(868, 'SANTIAGO DE QUIRAHUARA', 85, NULL, NULL),
(869, 'SANTO DOMINGO DE CAPILLAS', 85, NULL, NULL),
(870, 'TAMBO', 85, NULL, NULL),
(871, 'PAMPAS', 86, NULL, NULL),
(872, 'ACOSTAMBO', 86, NULL, NULL),
(873, 'ACRAQUIA', 86, NULL, NULL),
(874, 'AHUAYCHA', 86, NULL, NULL),
(875, 'COLCABAMBA', 86, NULL, NULL),
(876, 'DANIEL HERNANDEZ', 86, NULL, NULL),
(877, 'HUACHOCOLPA', 86, NULL, NULL),
(878, 'HUARIBAMBA', 86, NULL, NULL),
(879, '&Ntilde;AHUIMPUQUIO', 86, NULL, NULL),
(880, 'PAZOS', 86, NULL, NULL),
(881, 'QUISHUAR', 86, NULL, NULL),
(882, 'SALCABAMBA', 86, NULL, NULL),
(883, 'SALCAHUASI', 86, NULL, NULL),
(884, 'SAN MARCOS DE ROCCHAC', 86, NULL, NULL),
(885, 'SURCUBAMBA', 86, NULL, NULL),
(886, 'TINTAY PUNCU', 86, NULL, NULL),
(887, 'HUANUCO', 87, NULL, NULL),
(888, 'AMARILIS', 87, NULL, NULL),
(889, 'CHINCHAO', 87, NULL, NULL),
(890, 'CHURUBAMBA', 87, NULL, NULL),
(891, 'MARGOS', 87, NULL, NULL),
(892, 'QUISQUI', 87, NULL, NULL),
(893, 'SAN FRANCISCO DE CAYRAN', 87, NULL, NULL),
(894, 'SAN PEDRO DE CHAULAN', 87, NULL, NULL),
(895, 'SANTA MARIA DEL VALLE', 87, NULL, NULL),
(896, 'YARUMAYO', 87, NULL, NULL),
(897, 'PILLCO MARCA', 87, NULL, NULL),
(898, 'AMBO', 88, NULL, NULL),
(899, 'CAYNA', 88, NULL, NULL),
(900, 'COLPAS', 88, NULL, NULL),
(901, 'CONCHAMARCA', 88, NULL, NULL),
(902, 'HUACAR', 88, NULL, NULL),
(903, 'SAN FRANCISCO', 88, NULL, NULL),
(904, 'SAN RAFAEL', 88, NULL, NULL),
(905, 'TOMAY KICHWA', 88, NULL, NULL),
(906, 'LA UNION', 89, NULL, NULL),
(907, 'CHUQUIS', 89, NULL, NULL),
(908, 'MARIAS', 89, NULL, NULL),
(909, 'PACHAS', 89, NULL, NULL),
(910, 'QUIVILLA', 89, NULL, NULL),
(911, 'RIPAN', 89, NULL, NULL),
(912, 'SHUNQUI', 89, NULL, NULL),
(913, 'SILLAPATA', 89, NULL, NULL),
(914, 'YANAS', 89, NULL, NULL),
(915, 'HUACAYBAMBA', 90, NULL, NULL),
(916, 'CANCHABAMBA', 90, NULL, NULL),
(917, 'COCHABAMBA', 90, NULL, NULL),
(918, 'PINRA', 90, NULL, NULL),
(919, 'LLATA', 91, NULL, NULL),
(920, 'ARANCAY', 91, NULL, NULL),
(921, 'CHAVIN DE PARIARCA', 91, NULL, NULL),
(922, 'JACAS GRANDE', 91, NULL, NULL),
(923, 'JIRCAN', 91, NULL, NULL),
(924, 'MIRAFLORES', 91, NULL, NULL),
(925, 'MONZON', 91, NULL, NULL),
(926, 'PUNCHAO', 91, NULL, NULL),
(927, 'PU&Ntilde;OS', 91, NULL, NULL),
(928, 'SINGA', 91, NULL, NULL),
(929, 'TANTAMAYO', 91, NULL, NULL),
(930, 'RUPA-RUPA', 92, NULL, NULL),
(931, 'DANIEL ALOMIA ROBLES', 92, NULL, NULL),
(932, 'HERMILIO VALDIZAN', 92, NULL, NULL),
(933, 'JOSE CRESPO Y CASTILLO', 92, NULL, NULL),
(934, 'LUYANDO', 92, NULL, NULL),
(935, 'MARIANO DAMASO BERAUN', 92, NULL, NULL),
(936, 'HUACRACHUCO', 93, NULL, NULL),
(937, 'CHOLON', 93, NULL, NULL),
(938, 'SAN BUENAVENTURA', 93, NULL, NULL),
(939, 'PANAO', 94, NULL, NULL),
(940, 'CHAGLLA', 94, NULL, NULL),
(941, 'MOLINO', 94, NULL, NULL),
(942, 'UMARI', 94, NULL, NULL),
(943, 'PUERTO INCA', 95, NULL, NULL),
(944, 'CODO DEL POZUZO', 95, NULL, NULL),
(945, 'HONORIA', 95, NULL, NULL),
(946, 'TOURNAVISTA', 95, NULL, NULL),
(947, 'YUYAPICHIS', 95, NULL, NULL),
(948, 'JESUS', 96, NULL, NULL),
(949, 'BA&Ntilde;OS', 96, NULL, NULL),
(950, 'JIVIA', 96, NULL, NULL),
(951, 'QUEROPALCA', 96, NULL, NULL),
(952, 'RONDOS', 96, NULL, NULL),
(953, 'SAN FRANCISCO DE ASIS', 96, NULL, NULL),
(954, 'SAN MIGUEL DE CAURI', 96, NULL, NULL),
(955, 'CHAVINILLO', 97, NULL, NULL),
(956, 'CAHUAC', 97, NULL, NULL),
(957, 'CHACABAMBA', 97, NULL, NULL),
(958, 'APARICIO POMARES', 97, NULL, NULL),
(959, 'JACAS CHICO', 97, NULL, NULL),
(960, 'OBAS', 97, NULL, NULL),
(961, 'PAMPAMARCA', 97, NULL, NULL),
(962, 'CHORAS', 97, NULL, NULL),
(963, 'ICA', 98, NULL, NULL),
(964, 'LA TINGUI&Ntilde;A', 98, NULL, NULL),
(965, 'LOS AQUIJES', 98, NULL, NULL),
(966, 'OCUCAJE', 98, NULL, NULL),
(967, 'PACHACUTEC', 98, NULL, NULL),
(968, 'PARCONA', 98, NULL, NULL),
(969, 'PUEBLO NUEVO', 98, NULL, NULL),
(970, 'SALAS', 98, NULL, NULL),
(971, 'SAN JOSE DE LOS MOLINOS', 98, NULL, NULL),
(972, 'SAN JUAN BAUTISTA', 98, NULL, NULL),
(973, 'SANTIAGO', 98, NULL, NULL),
(974, 'SUBTANJALLA', 98, NULL, NULL),
(975, 'TATE', 98, NULL, NULL),
(976, 'YAUCA DEL ROSARIO', 98, NULL, NULL),
(977, 'CHINCHA ALTA', 99, NULL, NULL),
(978, 'ALTO LARAN', 99, NULL, NULL),
(979, 'CHAVIN', 99, NULL, NULL),
(980, 'CHINCHA BAJA', 99, NULL, NULL),
(981, 'EL CARMEN', 99, NULL, NULL),
(982, 'GROCIO PRADO', 99, NULL, NULL),
(983, 'PUEBLO NUEVO', 99, NULL, NULL),
(984, 'SAN JUAN DE YANAC', 99, NULL, NULL),
(985, 'SAN PEDRO DE HUACARPANA', 99, NULL, NULL),
(986, 'SUNAMPE', 99, NULL, NULL),
(987, 'TAMBO DE MORA', 99, NULL, NULL),
(988, 'NAZCA', 100, NULL, NULL),
(989, 'CHANGUILLO', 100, NULL, NULL),
(990, 'EL INGENIO', 100, NULL, NULL),
(991, 'MARCONA', 100, NULL, NULL),
(992, 'VISTA ALEGRE', 100, NULL, NULL),
(993, 'PALPA', 101, NULL, NULL),
(994, 'LLIPATA', 101, NULL, NULL),
(995, 'RIO GRANDE', 101, NULL, NULL),
(996, 'SANTA CRUZ', 101, NULL, NULL),
(997, 'TIBILLO', 101, NULL, NULL),
(998, 'PISCO', 102, NULL, NULL),
(999, 'HUANCANO', 102, NULL, NULL),
(1000, 'HUMAY', 102, NULL, NULL),
(1001, 'INDEPENDENCIA', 102, NULL, NULL),
(1002, 'PARACAS', 102, NULL, NULL),
(1003, 'SAN ANDRES', 102, NULL, NULL),
(1004, 'SAN CLEMENTE', 102, NULL, NULL),
(1005, 'TUPAC AMARU INCA', 102, NULL, NULL),
(1006, 'HUANCAYO', 103, NULL, NULL),
(1007, 'CARHUACALLANGA', 103, NULL, NULL),
(1008, 'CHACAPAMPA', 103, NULL, NULL),
(1009, 'CHICCHE', 103, NULL, NULL),
(1010, 'CHILCA', 103, NULL, NULL),
(1011, 'CHONGOS ALTO', 103, NULL, NULL),
(1012, 'CHUPURO', 103, NULL, NULL),
(1013, 'COLCA', 103, NULL, NULL),
(1014, 'CULLHUAS', 103, NULL, NULL),
(1015, 'EL TAMBO', 103, NULL, NULL),
(1016, 'HUACRAPUQUIO', 103, NULL, NULL),
(1017, 'HUALHUAS', 103, NULL, NULL),
(1018, 'HUANCAN', 103, NULL, NULL),
(1019, 'HUASICANCHA', 103, NULL, NULL),
(1020, 'HUAYUCACHI', 103, NULL, NULL),
(1021, 'INGENIO', 103, NULL, NULL),
(1022, 'PARIAHUANCA', 103, NULL, NULL),
(1023, 'PILCOMAYO', 103, NULL, NULL),
(1024, 'PUCARA', 103, NULL, NULL),
(1025, 'QUICHUAY', 103, NULL, NULL),
(1026, 'QUILCAS', 103, NULL, NULL),
(1027, 'SAN AGUSTIN', 103, NULL, NULL),
(1028, 'SAN JERONIMO DE TUNAN', 103, NULL, NULL),
(1029, 'SA&Ntilde;O', 103, NULL, NULL),
(1030, 'SAPALLANGA', 103, NULL, NULL),
(1031, 'SICAYA', 103, NULL, NULL),
(1032, 'SANTO DOMINGO DE ACOBAMBA', 103, NULL, NULL),
(1033, 'VIQUES', 103, NULL, NULL),
(1034, 'CONCEPCION', 104, NULL, NULL),
(1035, 'ACO', 104, NULL, NULL),
(1036, 'ANDAMARCA', 104, NULL, NULL),
(1037, 'CHAMBARA', 104, NULL, NULL),
(1038, 'COCHAS', 104, NULL, NULL),
(1039, 'COMAS', 104, NULL, NULL),
(1040, 'HEROINAS TOLEDO', 104, NULL, NULL),
(1041, 'MANZANARES', 104, NULL, NULL),
(1042, 'MARISCAL CASTILLA', 104, NULL, NULL),
(1043, 'MATAHUASI', 104, NULL, NULL),
(1044, 'MITO', 104, NULL, NULL),
(1045, 'NUEVE DE JULIO', 104, NULL, NULL),
(1046, 'ORCOTUNA', 104, NULL, NULL),
(1047, 'SAN JOSE DE QUERO', 104, NULL, NULL),
(1048, 'SANTA ROSA DE OCOPA', 104, NULL, NULL),
(1049, 'CHANCHAMAYO', 105, NULL, NULL),
(1050, 'PERENE', 105, NULL, NULL),
(1051, 'PICHANAQUI', 105, NULL, NULL),
(1052, 'SAN LUIS DE SHUARO', 105, NULL, NULL),
(1053, 'SAN RAMON', 105, NULL, NULL),
(1054, 'VITOC', 105, NULL, NULL),
(1055, 'JAUJA', 106, NULL, NULL),
(1056, 'ACOLLA', 106, NULL, NULL),
(1057, 'APATA', 106, NULL, NULL),
(1058, 'ATAURA', 106, NULL, NULL),
(1059, 'CANCHAYLLO', 106, NULL, NULL),
(1060, 'CURICACA', 106, NULL, NULL),
(1061, 'EL MANTARO', 106, NULL, NULL),
(1062, 'HUAMALI', 106, NULL, NULL),
(1063, 'HUARIPAMPA', 106, NULL, NULL),
(1064, 'HUERTAS', 106, NULL, NULL),
(1065, 'JANJAILLO', 106, NULL, NULL),
(1066, 'JULCAN', 106, NULL, NULL),
(1067, 'LEONOR ORDO&Ntilde;EZ', 106, NULL, NULL),
(1068, 'LLOCLLAPAMPA', 106, NULL, NULL),
(1069, 'MARCO', 106, NULL, NULL),
(1070, 'MASMA', 106, NULL, NULL),
(1071, 'MASMA CHICCHE', 106, NULL, NULL),
(1072, 'MOLINOS', 106, NULL, NULL),
(1073, 'MONOBAMBA', 106, NULL, NULL),
(1074, 'MUQUI', 106, NULL, NULL),
(1075, 'MUQUIYAUYO', 106, NULL, NULL),
(1076, 'PACA', 106, NULL, NULL),
(1077, 'PACCHA', 106, NULL, NULL),
(1078, 'PANCAN', 106, NULL, NULL),
(1079, 'PARCO', 106, NULL, NULL),
(1080, 'POMACANCHA', 106, NULL, NULL),
(1081, 'RICRAN', 106, NULL, NULL),
(1082, 'SAN LORENZO', 106, NULL, NULL),
(1083, 'SAN PEDRO DE CHUNAN', 106, NULL, NULL),
(1084, 'SAUSA', 106, NULL, NULL),
(1085, 'SINCOS', 106, NULL, NULL),
(1086, 'TUNAN MARCA', 106, NULL, NULL),
(1087, 'YAULI', 106, NULL, NULL),
(1088, 'YAUYOS', 106, NULL, NULL),
(1089, 'JUNIN', 107, NULL, NULL),
(1090, 'CARHUAMAYO', 107, NULL, NULL),
(1091, 'ONDORES', 107, NULL, NULL),
(1092, 'ULCUMAYO', 107, NULL, NULL),
(1093, 'SATIPO', 108, NULL, NULL),
(1094, 'COVIRIALI', 108, NULL, NULL),
(1095, 'LLAYLLA', 108, NULL, NULL),
(1096, 'MAZAMARI', 108, NULL, NULL),
(1097, 'PAMPA HERMOSA', 108, NULL, NULL),
(1098, 'PANGOA', 108, NULL, NULL),
(1099, 'RIO NEGRO', 108, NULL, NULL),
(1100, 'RIO TAMBO', 108, NULL, NULL),
(1101, 'TARMA', 109, NULL, NULL),
(1102, 'ACOBAMBA', 109, NULL, NULL),
(1103, 'HUARICOLCA', 109, NULL, NULL),
(1104, 'HUASAHUASI', 109, NULL, NULL),
(1105, 'LA UNION', 109, NULL, NULL),
(1106, 'PALCA', 109, NULL, NULL),
(1107, 'PALCAMAYO', 109, NULL, NULL),
(1108, 'SAN PEDRO DE CAJAS', 109, NULL, NULL),
(1109, 'TAPO', 109, NULL, NULL),
(1110, 'LA OROYA', 110, NULL, NULL),
(1111, 'CHACAPALPA', 110, NULL, NULL),
(1112, 'HUAY-HUAY', 110, NULL, NULL),
(1113, 'MARCAPOMACOCHA', 110, NULL, NULL),
(1114, 'MOROCOCHA', 110, NULL, NULL),
(1115, 'PACCHA', 110, NULL, NULL),
(1116, 'SANTA BARBARA DE CARHUACAYAN', 110, NULL, NULL),
(1117, 'SANTA ROSA DE SACCO', 110, NULL, NULL),
(1118, 'SUITUCANCHA', 110, NULL, NULL),
(1119, 'YAULI', 110, NULL, NULL),
(1120, 'CHUPACA', 111, NULL, NULL),
(1121, 'AHUAC', 111, NULL, NULL),
(1122, 'CHONGOS BAJO', 111, NULL, NULL),
(1123, 'HUACHAC', 111, NULL, NULL),
(1124, 'HUAMANCACA CHICO', 111, NULL, NULL),
(1125, 'SAN JUAN DE ISCOS', 111, NULL, NULL),
(1126, 'SAN JUAN DE JARPA', 111, NULL, NULL),
(1127, 'TRES DE DICIEMBRE', 111, NULL, NULL),
(1128, 'YANACANCHA', 111, NULL, NULL),
(1129, 'TRUJILLO', 112, NULL, NULL),
(1130, 'EL PORVENIR', 112, NULL, NULL),
(1131, 'FLORENCIA DE MORA', 112, NULL, NULL),
(1132, 'HUANCHACO', 112, NULL, NULL),
(1133, 'LA ESPERANZA', 112, NULL, NULL),
(1134, 'LAREDO', 112, NULL, NULL),
(1135, 'MOCHE', 112, NULL, NULL),
(1136, 'POROTO', 112, NULL, NULL),
(1137, 'SALAVERRY', 112, NULL, NULL),
(1138, 'SIMBAL', 112, NULL, NULL),
(1139, 'VICTOR LARCO HERRERA', 112, NULL, NULL),
(1140, 'ASCOPE', 113, NULL, NULL),
(1141, 'CHICAMA', 113, NULL, NULL),
(1142, 'CHOCOPE', 113, NULL, NULL),
(1143, 'MAGDALENA DE CAO', 113, NULL, NULL),
(1144, 'PAIJAN', 113, NULL, NULL),
(1145, 'RAZURI', 113, NULL, NULL),
(1146, 'SANTIAGO DE CAO', 113, NULL, NULL),
(1147, 'CASA GRANDE', 113, NULL, NULL),
(1148, 'BOLIVAR', 114, NULL, NULL),
(1149, 'BAMBAMARCA', 114, NULL, NULL),
(1150, 'CONDORMARCA', 114, NULL, NULL),
(1151, 'LONGOTEA', 114, NULL, NULL),
(1152, 'UCHUMARCA', 114, NULL, NULL),
(1153, 'UCUNCHA', 114, NULL, NULL),
(1154, 'CHEPEN', 115, NULL, NULL),
(1155, 'PACANGA', 115, NULL, NULL),
(1156, 'PUEBLO NUEVO', 115, NULL, NULL),
(1157, 'JULCAN', 116, NULL, NULL),
(1158, 'CALAMARCA', 116, NULL, NULL),
(1159, 'CARABAMBA', 116, NULL, NULL),
(1160, 'HUASO', 116, NULL, NULL),
(1161, 'OTUZCO', 117, NULL, NULL),
(1162, 'AGALLPAMPA', 117, NULL, NULL),
(1163, 'CHARAT', 117, NULL, NULL),
(1164, 'HUARANCHAL', 117, NULL, NULL),
(1165, 'LA CUESTA', 117, NULL, NULL),
(1166, 'MACHE', 117, NULL, NULL),
(1167, 'PARANDAY', 117, NULL, NULL),
(1168, 'SALPO', 117, NULL, NULL),
(1169, 'SINSICAP', 117, NULL, NULL),
(1170, 'USQUIL', 117, NULL, NULL),
(1171, 'SAN PEDRO DE LLOC', 118, NULL, NULL),
(1172, 'GUADALUPE', 118, NULL, NULL),
(1173, 'JEQUETEPEQUE', 118, NULL, NULL),
(1174, 'PACASMAYO', 118, NULL, NULL),
(1175, 'SAN JOSE', 118, NULL, NULL),
(1176, 'TAYABAMBA', 119, NULL, NULL),
(1177, 'BULDIBUYO', 119, NULL, NULL),
(1178, 'CHILLIA', 119, NULL, NULL),
(1179, 'HUANCASPATA', 119, NULL, NULL),
(1180, 'HUAYLILLAS', 119, NULL, NULL),
(1181, 'HUAYO', 119, NULL, NULL),
(1182, 'ONGON', 119, NULL, NULL),
(1183, 'PARCOY', 119, NULL, NULL),
(1184, 'PATAZ', 119, NULL, NULL),
(1185, 'PIAS', 119, NULL, NULL),
(1186, 'SANTIAGO DE CHALLAS', 119, NULL, NULL),
(1187, 'TAURIJA', 119, NULL, NULL),
(1188, 'URPAY', 119, NULL, NULL),
(1189, 'HUAMACHUCO', 120, NULL, NULL),
(1190, 'CHUGAY', 120, NULL, NULL),
(1191, 'COCHORCO', 120, NULL, NULL),
(1192, 'CURGOS', 120, NULL, NULL),
(1193, 'MARCABAL', 120, NULL, NULL),
(1194, 'SANAGORAN', 120, NULL, NULL),
(1195, 'SARIN', 120, NULL, NULL),
(1196, 'SARTIMBAMBA', 120, NULL, NULL),
(1197, 'SANTIAGO DE CHUCO', 121, NULL, NULL),
(1198, 'ANGASMARCA', 121, NULL, NULL),
(1199, 'CACHICADAN', 121, NULL, NULL),
(1200, 'MOLLEBAMBA', 121, NULL, NULL),
(1201, 'MOLLEPATA', 121, NULL, NULL),
(1202, 'QUIRUVILCA', 121, NULL, NULL),
(1203, 'SANTA CRUZ DE CHUCA', 121, NULL, NULL),
(1204, 'SITABAMBA', 121, NULL, NULL),
(1205, 'GRAN CHIMU', 122, NULL, NULL),
(1206, 'CASCAS', 122, NULL, NULL),
(1207, 'LUCMA', 122, NULL, NULL),
(1208, 'MARMOT', 122, NULL, NULL),
(1209, 'SAYAPULLO', 122, NULL, NULL),
(1210, 'VIRU', 123, NULL, NULL),
(1211, 'CHAO', 123, NULL, NULL),
(1212, 'GUADALUPITO', 123, NULL, NULL),
(1213, 'CHICLAYO', 124, NULL, NULL),
(1214, 'CHONGOYAPE', 124, NULL, NULL),
(1215, 'ETEN', 124, NULL, NULL),
(1216, 'ETEN PUERTO', 124, NULL, NULL),
(1217, 'JOSE LEONARDO ORTIZ', 124, NULL, NULL),
(1218, 'LA VICTORIA', 124, NULL, NULL),
(1219, 'LAGUNAS', 124, NULL, NULL),
(1220, 'MONSEFU', 124, NULL, NULL),
(1221, 'NUEVA ARICA', 124, NULL, NULL),
(1222, 'OYOTUN', 124, NULL, NULL),
(1223, 'PICSI', 124, NULL, NULL),
(1224, 'PIMENTEL', 124, NULL, NULL),
(1225, 'REQUE', 124, NULL, NULL),
(1226, 'SANTA ROSA', 124, NULL, NULL),
(1227, 'SA&Ntilde;A', 124, NULL, NULL),
(1228, 'CAYALTI', 124, NULL, NULL),
(1229, 'PATAPO', 124, NULL, NULL),
(1230, 'POMALCA', 124, NULL, NULL),
(1231, 'PUCALA', 124, NULL, NULL),
(1232, 'TUMAN', 124, NULL, NULL),
(1233, 'FERRE&Ntilde;AFE', 125, NULL, NULL),
(1234, 'CA&Ntilde;ARIS', 125, NULL, NULL),
(1235, 'INCAHUASI', 125, NULL, NULL),
(1236, 'MANUEL ANTONIO MESONES MURO', 125, NULL, NULL),
(1237, 'PITIPO', 125, NULL, NULL),
(1238, 'PUEBLO NUEVO', 125, NULL, NULL),
(1239, 'LAMBAYEQUE', 126, NULL, NULL),
(1240, 'CHOCHOPE', 126, NULL, NULL),
(1241, 'ILLIMO', 126, NULL, NULL),
(1242, 'JAYANCA', 126, NULL, NULL),
(1243, 'MOCHUMI', 126, NULL, NULL),
(1244, 'MORROPE', 126, NULL, NULL),
(1245, 'MOTUPE', 126, NULL, NULL),
(1246, 'OLMOS', 126, NULL, NULL),
(1247, 'PACORA', 126, NULL, NULL),
(1248, 'SALAS', 126, NULL, NULL),
(1249, 'SAN JOSE', 126, NULL, NULL),
(1250, 'TUCUME', 126, NULL, NULL),
(1251, 'LIMA', 127, NULL, NULL),
(1252, 'ANCON', 127, NULL, NULL),
(1253, 'ATE', 127, NULL, NULL),
(1254, 'BARRANCO', 127, NULL, NULL),
(1255, 'BRE&Ntilde;A', 127, NULL, NULL),
(1256, 'CARABAYLLO', 127, NULL, NULL),
(1257, 'CHACLACAYO', 127, NULL, NULL),
(1258, 'CHORRILLOS', 127, NULL, NULL),
(1259, 'CIENEGUILLA', 127, NULL, NULL),
(1260, 'COMAS', 127, NULL, NULL),
(1261, 'EL AGUSTINO', 127, NULL, NULL),
(1262, 'INDEPENDENCIA', 127, NULL, NULL),
(1263, 'JESUS MARIA', 127, NULL, NULL),
(1264, 'LA MOLINA', 127, NULL, NULL),
(1265, 'LA VICTORIA', 127, NULL, NULL),
(1266, 'LINCE', 127, NULL, NULL),
(1267, 'LOS OLIVOS', 127, NULL, NULL),
(1268, 'LURIGANCHO', 127, NULL, NULL),
(1269, 'LURIN', 127, NULL, NULL),
(1270, 'MAGDALENA DEL MAR', 127, NULL, NULL),
(1271, 'PUEBLO LIBRE', 127, NULL, NULL),
(1272, 'MIRAFLORES', 127, NULL, NULL),
(1273, 'PACHACAMAC', 127, NULL, NULL),
(1274, 'PUCUSANA', 127, NULL, NULL),
(1275, 'PUENTE PIEDRA', 127, NULL, NULL),
(1276, 'PUNTA HERMOSA', 127, NULL, NULL),
(1277, 'PUNTA NEGRA', 127, NULL, NULL),
(1278, 'RIMAC', 127, NULL, NULL),
(1279, 'SAN BARTOLO', 127, NULL, NULL),
(1280, 'SAN BORJA', 127, NULL, NULL),
(1281, 'SAN ISIDRO', 127, NULL, NULL),
(1282, 'SAN JUAN DE LURIGANCHO', 127, NULL, NULL),
(1283, 'SAN JUAN DE MIRAFLORES', 127, NULL, NULL),
(1284, 'SAN LUIS', 127, NULL, NULL),
(1285, 'SAN MARTIN DE PORRES', 127, NULL, NULL),
(1286, 'SAN MIGUEL', 127, NULL, NULL),
(1287, 'SANTA ANITA', 127, NULL, NULL),
(1288, 'SANTA MARIA DEL MAR', 127, NULL, NULL),
(1289, 'SANTA ROSA', 127, NULL, NULL),
(1290, 'SANTIAGO DE SURCO', 127, NULL, NULL),
(1291, 'SURQUILLO', 127, NULL, NULL),
(1292, 'VILLA EL SALVADOR', 127, NULL, NULL),
(1293, 'VILLA MARIA DEL TRIUNFO', 127, NULL, NULL),
(1294, 'BARRANCA', 128, NULL, NULL),
(1295, 'PARAMONGA', 128, NULL, NULL),
(1296, 'PATIVILCA', 128, NULL, NULL),
(1297, 'SUPE', 128, NULL, NULL),
(1298, 'SUPE PUERTO', 128, NULL, NULL),
(1299, 'CAJATAMBO', 129, NULL, NULL),
(1300, 'COPA', 129, NULL, NULL),
(1301, 'GORGOR', 129, NULL, NULL),
(1302, 'HUANCAPON', 129, NULL, NULL),
(1303, 'MANAS', 129, NULL, NULL),
(1304, 'CANTA', 130, NULL, NULL),
(1305, 'ARAHUAY', 130, NULL, NULL),
(1306, 'HUAMANTANGA', 130, NULL, NULL),
(1307, 'HUAROS', 130, NULL, NULL),
(1308, 'LACHAQUI', 130, NULL, NULL),
(1309, 'SAN BUENAVENTURA', 130, NULL, NULL),
(1310, 'SANTA ROSA DE QUIVES', 130, NULL, NULL),
(1311, 'SAN VICENTE DE CA&Ntilde;ETE', 131, NULL, NULL),
(1312, 'ASIA', 131, NULL, NULL),
(1313, 'CALANGO', 131, NULL, NULL),
(1314, 'CERRO AZUL', 131, NULL, NULL),
(1315, 'CHILCA', 131, NULL, NULL),
(1316, 'COAYLLO', 131, NULL, NULL),
(1317, 'IMPERIAL', 131, NULL, NULL),
(1318, 'LUNAHUANA', 131, NULL, NULL),
(1319, 'MALA', 131, NULL, NULL),
(1320, 'NUEVO IMPERIAL', 131, NULL, NULL),
(1321, 'PACARAN', 131, NULL, NULL),
(1322, 'QUILMANA', 131, NULL, NULL),
(1323, 'SAN ANTONIO', 131, NULL, NULL),
(1324, 'SAN LUIS', 131, NULL, NULL),
(1325, 'SANTA CRUZ DE FLORES', 131, NULL, NULL),
(1326, 'ZU&Ntilde;IGA', 131, NULL, NULL),
(1327, 'HUARAL', 132, NULL, NULL),
(1328, 'ATAVILLOS ALTO', 132, NULL, NULL),
(1329, 'ATAVILLOS BAJO', 132, NULL, NULL),
(1330, 'AUCALLAMA', 132, NULL, NULL),
(1331, 'CHANCAY', 132, NULL, NULL),
(1332, 'IHUARI', 132, NULL, NULL),
(1333, 'LAMPIAN', 132, NULL, NULL),
(1334, 'PACARAOS', 132, NULL, NULL),
(1335, 'SAN MIGUEL DE ACOS', 132, NULL, NULL),
(1336, 'SANTA CRUZ DE ANDAMARCA', 132, NULL, NULL),
(1337, 'SUMBILCA', 132, NULL, NULL),
(1338, 'VEINTISIETE DE NOVIEMBRE', 132, NULL, NULL),
(1339, 'MATUCANA', 133, NULL, NULL),
(1340, 'ANTIOQUIA', 133, NULL, NULL),
(1341, 'CALLAHUANCA', 133, NULL, NULL),
(1342, 'CARAMPOMA', 133, NULL, NULL),
(1343, 'CHICLA', 133, NULL, NULL),
(1344, 'CUENCA', 133, NULL, NULL),
(1345, 'HUACHUPAMPA', 133, NULL, NULL),
(1346, 'HUANZA', 133, NULL, NULL),
(1347, 'HUAROCHIRI', 133, NULL, NULL),
(1348, 'LAHUAYTAMBO', 133, NULL, NULL),
(1349, 'LANGA', 133, NULL, NULL),
(1350, 'LARAOS', 133, NULL, NULL),
(1351, 'MARIATANA', 133, NULL, NULL),
(1352, 'RICARDO PALMA', 133, NULL, NULL),
(1353, 'SAN ANDRES DE TUPICOCHA', 133, NULL, NULL),
(1354, 'SAN ANTONIO', 133, NULL, NULL),
(1355, 'SAN BARTOLOME', 133, NULL, NULL),
(1356, 'SAN DAMIAN', 133, NULL, NULL),
(1357, 'SAN JUAN DE IRIS', 133, NULL, NULL),
(1358, 'SAN JUAN DE TANTARANCHE', 133, NULL, NULL),
(1359, 'SAN LORENZO DE QUINTI', 133, NULL, NULL),
(1360, 'SAN MATEO', 133, NULL, NULL),
(1361, 'SAN MATEO DE OTAO', 133, NULL, NULL),
(1362, 'SAN PEDRO DE CASTA', 133, NULL, NULL),
(1363, 'SAN PEDRO DE HUANCAYRE', 133, NULL, NULL),
(1364, 'SANGALLAYA', 133, NULL, NULL),
(1365, 'SANTA CRUZ DE COCACHACRA', 133, NULL, NULL),
(1366, 'SANTA EULALIA', 133, NULL, NULL),
(1367, 'SANTIAGO DE ANCHUCAYA', 133, NULL, NULL),
(1368, 'SANTIAGO DE TUNA', 133, NULL, NULL),
(1369, 'SANTO DOMINGO DE LOS OLLEROS', 133, NULL, NULL),
(1370, 'SURCO', 133, NULL, NULL),
(1371, 'HUACHO', 134, NULL, NULL),
(1372, 'AMBAR', 134, NULL, NULL),
(1373, 'CALETA DE CARQUIN', 134, NULL, NULL),
(1374, 'CHECRAS', 134, NULL, NULL),
(1375, 'HUALMAY', 134, NULL, NULL),
(1376, 'HUAURA', 134, NULL, NULL),
(1377, 'LEONCIO PRADO', 134, NULL, NULL),
(1378, 'PACCHO', 134, NULL, NULL),
(1379, 'SANTA LEONOR', 134, NULL, NULL),
(1380, 'SANTA MARIA', 134, NULL, NULL),
(1381, 'SAYAN', 134, NULL, NULL),
(1382, 'VEGUETA', 134, NULL, NULL),
(1383, 'OYON', 135, NULL, NULL),
(1384, 'ANDAJES', 135, NULL, NULL),
(1385, 'CAUJUL', 135, NULL, NULL),
(1386, 'COCHAMARCA', 135, NULL, NULL),
(1387, 'NAVAN', 135, NULL, NULL),
(1388, 'PACHANGARA', 135, NULL, NULL),
(1389, 'YAUYOS', 136, NULL, NULL),
(1390, 'ALIS', 136, NULL, NULL),
(1391, 'AYAUCA', 136, NULL, NULL),
(1392, 'AYAVIRI', 136, NULL, NULL),
(1393, 'AZANGARO', 136, NULL, NULL),
(1394, 'CACRA', 136, NULL, NULL),
(1395, 'CARANIA', 136, NULL, NULL),
(1396, 'CATAHUASI', 136, NULL, NULL),
(1397, 'CHOCOS', 136, NULL, NULL),
(1398, 'COCHAS', 136, NULL, NULL),
(1399, 'COLONIA', 136, NULL, NULL),
(1400, 'HONGOS', 136, NULL, NULL),
(1401, 'HUAMPARA', 136, NULL, NULL),
(1402, 'HUANCAYA', 136, NULL, NULL),
(1403, 'HUANGASCAR', 136, NULL, NULL),
(1404, 'HUANTAN', 136, NULL, NULL),
(1405, 'HUA&Ntilde;EC', 136, NULL, NULL),
(1406, 'LARAOS', 136, NULL, NULL),
(1407, 'LINCHA', 136, NULL, NULL),
(1408, 'MADEAN', 136, NULL, NULL),
(1409, 'MIRAFLORES', 136, NULL, NULL),
(1410, 'OMAS', 136, NULL, NULL),
(1411, 'PUTINZA', 136, NULL, NULL),
(1412, 'QUINCHES', 136, NULL, NULL),
(1413, 'QUINOCAY', 136, NULL, NULL),
(1414, 'SAN JOAQUIN', 136, NULL, NULL),
(1415, 'SAN PEDRO DE PILAS', 136, NULL, NULL),
(1416, 'TANTA', 136, NULL, NULL),
(1417, 'TAURIPAMPA', 136, NULL, NULL),
(1418, 'TOMAS', 136, NULL, NULL),
(1419, 'TUPE', 136, NULL, NULL),
(1420, 'VI&Ntilde;AC', 136, NULL, NULL),
(1421, 'VITIS', 136, NULL, NULL),
(1422, 'IQUITOS', 137, NULL, NULL),
(1423, 'ALTO NANAY', 137, NULL, NULL),
(1424, 'FERNANDO LORES', 137, NULL, NULL),
(1425, 'INDIANA', 137, NULL, NULL),
(1426, 'LAS AMAZONAS', 137, NULL, NULL),
(1427, 'MAZAN', 137, NULL, NULL),
(1428, 'NAPO', 137, NULL, NULL),
(1429, 'PUNCHANA', 137, NULL, NULL),
(1430, 'PUTUMAYO', 137, NULL, NULL),
(1431, 'TORRES CAUSANA', 137, NULL, NULL),
(1432, 'BELEN', 137, NULL, NULL);
INSERT INTO `distritos` (`id`, `distrito`, `provincia_id`, `created_at`, `updated_at`) VALUES
(1433, 'SAN JUAN BAUTISTA', 137, NULL, NULL),
(1434, 'YURIMAGUAS', 138, NULL, NULL),
(1435, 'BALSAPUERTO', 138, NULL, NULL),
(1436, 'BARRANCA', 138, NULL, NULL),
(1437, 'CAHUAPANAS', 138, NULL, NULL),
(1438, 'JEBEROS', 138, NULL, NULL),
(1439, 'LAGUNAS', 138, NULL, NULL),
(1440, 'MANSERICHE', 138, NULL, NULL),
(1441, 'MORONA', 138, NULL, NULL),
(1442, 'PASTAZA', 138, NULL, NULL),
(1443, 'SANTA CRUZ', 138, NULL, NULL),
(1444, 'TENIENTE CESAR LOPEZ ROJAS', 138, NULL, NULL),
(1445, 'NAUTA', 139, NULL, NULL),
(1446, 'PARINARI', 139, NULL, NULL),
(1447, 'TIGRE', 139, NULL, NULL),
(1448, 'TROMPETEROS', 139, NULL, NULL),
(1449, 'URARINAS', 139, NULL, NULL),
(1450, 'RAMON CASTILLA', 140, NULL, NULL),
(1451, 'PEBAS', 140, NULL, NULL),
(1452, 'YAVARI', 140, NULL, NULL),
(1453, 'SAN PABLO', 140, NULL, NULL),
(1454, 'REQUENA', 141, NULL, NULL),
(1455, 'ALTO TAPICHE', 141, NULL, NULL),
(1456, 'CAPELO', 141, NULL, NULL),
(1457, 'EMILIO SAN MARTIN', 141, NULL, NULL),
(1458, 'MAQUIA', 141, NULL, NULL),
(1459, 'PUINAHUA', 141, NULL, NULL),
(1460, 'SAQUENA', 141, NULL, NULL),
(1461, 'SOPLIN', 141, NULL, NULL),
(1462, 'TAPICHE', 141, NULL, NULL),
(1463, 'JENARO HERRERA', 141, NULL, NULL),
(1464, 'YAQUERANA', 141, NULL, NULL),
(1465, 'CONTAMANA', 142, NULL, NULL),
(1466, 'INAHUAYA', 142, NULL, NULL),
(1467, 'PADRE MARQUEZ', 142, NULL, NULL),
(1468, 'PAMPA HERMOSA', 142, NULL, NULL),
(1469, 'SARAYACU', 142, NULL, NULL),
(1470, 'VARGAS GUERRA', 142, NULL, NULL),
(1471, 'TAMBOPATA', 143, NULL, NULL),
(1472, 'INAMBARI', 143, NULL, NULL),
(1473, 'LAS PIEDRAS', 143, NULL, NULL),
(1474, 'LABERINTO', 143, NULL, NULL),
(1475, 'MANU', 144, NULL, NULL),
(1476, 'FITZCARRALD', 144, NULL, NULL),
(1477, 'MADRE DE DIOS', 144, NULL, NULL),
(1478, 'HUEPETUHE', 144, NULL, NULL),
(1479, 'I&Ntilde;APARI', 145, NULL, NULL),
(1480, 'IBERIA', 145, NULL, NULL),
(1481, 'TAHUAMANU', 145, NULL, NULL),
(1482, 'MOQUEGUA', 146, NULL, NULL),
(1483, 'CARUMAS', 146, NULL, NULL),
(1484, 'CUCHUMBAYA', 146, NULL, NULL),
(1485, 'SAMEGUA', 146, NULL, NULL),
(1486, 'SAN CRISTOBAL', 146, NULL, NULL),
(1487, 'TORATA', 146, NULL, NULL),
(1488, 'OMATE', 147, NULL, NULL),
(1489, 'CHOJATA', 147, NULL, NULL),
(1490, 'COALAQUE', 147, NULL, NULL),
(1491, 'ICHU&Ntilde;A', 147, NULL, NULL),
(1492, 'LA CAPILLA', 147, NULL, NULL),
(1493, 'LLOQUE', 147, NULL, NULL),
(1494, 'MATALAQUE', 147, NULL, NULL),
(1495, 'PUQUINA', 147, NULL, NULL),
(1496, 'QUINISTAQUILLAS', 147, NULL, NULL),
(1497, 'UBINAS', 147, NULL, NULL),
(1498, 'YUNGA', 147, NULL, NULL),
(1499, 'ILO', 148, NULL, NULL),
(1500, 'EL ALGARROBAL', 148, NULL, NULL),
(1501, 'PACOCHA', 148, NULL, NULL),
(1502, 'CHAUPIMARCA', 149, NULL, NULL),
(1503, 'HUACHON', 149, NULL, NULL),
(1504, 'HUARIACA', 149, NULL, NULL),
(1505, 'HUAYLLAY', 149, NULL, NULL),
(1506, 'NINACACA', 149, NULL, NULL),
(1507, 'PALLANCHACRA', 149, NULL, NULL),
(1508, 'PAUCARTAMBO', 149, NULL, NULL),
(1509, 'SAN FCO.DE ASIS DE YARUSYACAN', 149, NULL, NULL),
(1510, 'SIMON BOLIVAR', 149, NULL, NULL),
(1511, 'TICLACAYAN', 149, NULL, NULL),
(1512, 'TINYAHUARCO', 149, NULL, NULL),
(1513, 'VICCO', 149, NULL, NULL),
(1514, 'YANACANCHA', 149, NULL, NULL),
(1515, 'YANAHUANCA', 150, NULL, NULL),
(1516, 'CHACAYAN', 150, NULL, NULL),
(1517, 'GOYLLARISQUIZGA', 150, NULL, NULL),
(1518, 'PAUCAR', 150, NULL, NULL),
(1519, 'SAN PEDRO DE PILLAO', 150, NULL, NULL),
(1520, 'SANTA ANA DE TUSI', 150, NULL, NULL),
(1521, 'TAPUC', 150, NULL, NULL),
(1522, 'VILCABAMBA', 150, NULL, NULL),
(1523, 'OXAPAMPA', 151, NULL, NULL),
(1524, 'CHONTABAMBA', 151, NULL, NULL),
(1525, 'HUANCABAMBA', 151, NULL, NULL),
(1526, 'PALCAZU', 151, NULL, NULL),
(1527, 'POZUZO', 151, NULL, NULL),
(1528, 'PUERTO BERMUDEZ', 151, NULL, NULL),
(1529, 'VILLA RICA', 151, NULL, NULL),
(1530, 'PIURA', 152, NULL, NULL),
(1531, 'CASTILLA', 152, NULL, NULL),
(1532, 'CATACAOS', 152, NULL, NULL),
(1533, 'CURA MORI', 152, NULL, NULL),
(1534, 'EL TALLAN', 152, NULL, NULL),
(1535, 'LA ARENA', 152, NULL, NULL),
(1536, 'LA UNION', 152, NULL, NULL),
(1537, 'LAS LOMAS', 152, NULL, NULL),
(1538, 'TAMBO GRANDE', 152, NULL, NULL),
(1539, 'AYABACA', 153, NULL, NULL),
(1540, 'FRIAS', 153, NULL, NULL),
(1541, 'JILILI', 153, NULL, NULL),
(1542, 'LAGUNAS', 153, NULL, NULL),
(1543, 'MONTERO', 153, NULL, NULL),
(1544, 'PACAIPAMPA', 153, NULL, NULL),
(1545, 'PAIMAS', 153, NULL, NULL),
(1546, 'SAPILLICA', 153, NULL, NULL),
(1547, 'SICCHEZ', 153, NULL, NULL),
(1548, 'SUYO', 153, NULL, NULL),
(1549, 'HUANCABAMBA', 154, NULL, NULL),
(1550, 'CANCHAQUE', 154, NULL, NULL),
(1551, 'EL CARMEN DE LA FRONTERA', 154, NULL, NULL),
(1552, 'HUARMACA', 154, NULL, NULL),
(1553, 'LALAQUIZ', 154, NULL, NULL),
(1554, 'SAN MIGUEL DE EL FAIQUE', 154, NULL, NULL),
(1555, 'SONDOR', 154, NULL, NULL),
(1556, 'SONDORILLO', 154, NULL, NULL),
(1557, 'CHULUCANAS', 155, NULL, NULL),
(1558, 'BUENOS AIRES', 155, NULL, NULL),
(1559, 'CHALACO', 155, NULL, NULL),
(1560, 'LA MATANZA', 155, NULL, NULL),
(1561, 'MORROPON', 155, NULL, NULL),
(1562, 'SALITRAL', 155, NULL, NULL),
(1563, 'SAN JUAN DE BIGOTE', 155, NULL, NULL),
(1564, 'SANTA CATALINA DE MOSSA', 155, NULL, NULL),
(1565, 'SANTO DOMINGO', 155, NULL, NULL),
(1566, 'YAMANGO', 155, NULL, NULL),
(1567, 'PAITA', 156, NULL, NULL),
(1568, 'AMOTAPE', 156, NULL, NULL),
(1569, 'ARENAL', 156, NULL, NULL),
(1570, 'COLAN', 156, NULL, NULL),
(1571, 'LA HUACA', 156, NULL, NULL),
(1572, 'TAMARINDO', 156, NULL, NULL),
(1573, 'VICHAYAL', 156, NULL, NULL),
(1574, 'SULLANA', 157, NULL, NULL),
(1575, 'BELLAVISTA', 157, NULL, NULL),
(1576, 'IGNACIO ESCUDERO', 157, NULL, NULL),
(1577, 'LANCONES', 157, NULL, NULL),
(1578, 'MARCAVELICA', 157, NULL, NULL),
(1579, 'MIGUEL CHECA', 157, NULL, NULL),
(1580, 'QUERECOTILLO', 157, NULL, NULL),
(1581, 'SALITRAL', 157, NULL, NULL),
(1582, 'PARI&Ntilde;AS', 158, NULL, NULL),
(1583, 'EL ALTO', 158, NULL, NULL),
(1584, 'LA BREA', 158, NULL, NULL),
(1585, 'LOBITOS', 158, NULL, NULL),
(1586, 'LOS ORGANOS', 158, NULL, NULL),
(1587, 'MANCORA', 158, NULL, NULL),
(1588, 'SECHURA', 159, NULL, NULL),
(1589, 'BELLAVISTA DE LA UNION', 159, NULL, NULL),
(1590, 'BERNAL', 159, NULL, NULL),
(1591, 'CRISTO NOS VALGA', 159, NULL, NULL),
(1592, 'VICE', 159, NULL, NULL),
(1593, 'RINCONADA LLICUAR', 159, NULL, NULL),
(1594, 'PUNO', 160, NULL, NULL),
(1595, 'ACORA', 160, NULL, NULL),
(1596, 'AMANTANI', 160, NULL, NULL),
(1597, 'ATUNCOLLA', 160, NULL, NULL),
(1598, 'CAPACHICA', 160, NULL, NULL),
(1599, 'CHUCUITO', 160, NULL, NULL),
(1600, 'COATA', 160, NULL, NULL),
(1601, 'HUATA', 160, NULL, NULL),
(1602, 'MA&Ntilde;AZO', 160, NULL, NULL),
(1603, 'PAUCARCOLLA', 160, NULL, NULL),
(1604, 'PICHACANI', 160, NULL, NULL),
(1605, 'PLATERIA', 160, NULL, NULL),
(1606, 'SAN ANTONIO', 160, NULL, NULL),
(1607, 'TIQUILLACA', 160, NULL, NULL),
(1608, 'VILQUE', 160, NULL, NULL),
(1609, 'AZANGARO', 161, NULL, NULL),
(1610, 'ACHAYA', 161, NULL, NULL),
(1611, 'ARAPA', 161, NULL, NULL),
(1612, 'ASILLO', 161, NULL, NULL),
(1613, 'CAMINACA', 161, NULL, NULL),
(1614, 'CHUPA', 161, NULL, NULL),
(1615, 'JOSE DOMINGO CHOQUEHUANCA', 161, NULL, NULL),
(1616, 'MU&Ntilde;ANI', 161, NULL, NULL),
(1617, 'POTONI', 161, NULL, NULL),
(1618, 'SAMAN', 161, NULL, NULL),
(1619, 'SAN ANTON', 161, NULL, NULL),
(1620, 'SAN JOSE', 161, NULL, NULL),
(1621, 'SAN JUAN DE SALINAS', 161, NULL, NULL),
(1622, 'SANTIAGO DE PUPUJA', 161, NULL, NULL),
(1623, 'TIRAPATA', 161, NULL, NULL),
(1624, 'MACUSANI', 162, NULL, NULL),
(1625, 'AJOYANI', 162, NULL, NULL),
(1626, 'AYAPATA', 162, NULL, NULL),
(1627, 'COASA', 162, NULL, NULL),
(1628, 'CORANI', 162, NULL, NULL),
(1629, 'CRUCERO', 162, NULL, NULL),
(1630, 'ITUATA', 162, NULL, NULL),
(1631, 'OLLACHEA', 162, NULL, NULL),
(1632, 'SAN GABAN', 162, NULL, NULL),
(1633, 'USICAYOS', 162, NULL, NULL),
(1634, 'JULI', 163, NULL, NULL),
(1635, 'DESAGUADERO', 163, NULL, NULL),
(1636, 'HUACULLANI', 163, NULL, NULL),
(1637, 'KELLUYO', 163, NULL, NULL),
(1638, 'PISACOMA', 163, NULL, NULL),
(1639, 'POMATA', 163, NULL, NULL),
(1640, 'ZEPITA', 163, NULL, NULL),
(1641, 'ILAVE', 164, NULL, NULL),
(1642, 'CAPAZO', 164, NULL, NULL),
(1643, 'PILCUYO', 164, NULL, NULL),
(1644, 'SANTA ROSA', 164, NULL, NULL),
(1645, 'CONDURIRI', 164, NULL, NULL),
(1646, 'HUANCANE', 165, NULL, NULL),
(1647, 'COJATA', 165, NULL, NULL),
(1648, 'HUATASANI', 165, NULL, NULL),
(1649, 'INCHUPALLA', 165, NULL, NULL),
(1650, 'PUSI', 165, NULL, NULL),
(1651, 'ROSASPATA', 165, NULL, NULL),
(1652, 'TARACO', 165, NULL, NULL),
(1653, 'VILQUE CHICO', 165, NULL, NULL),
(1654, 'LAMPA', 166, NULL, NULL),
(1655, 'CABANILLA', 166, NULL, NULL),
(1656, 'CALAPUJA', 166, NULL, NULL),
(1657, 'NICASIO', 166, NULL, NULL),
(1658, 'OCUVIRI', 166, NULL, NULL),
(1659, 'PALCA', 166, NULL, NULL),
(1660, 'PARATIA', 166, NULL, NULL),
(1661, 'PUCARA', 166, NULL, NULL),
(1662, 'SANTA LUCIA', 166, NULL, NULL),
(1663, 'VILAVILA', 166, NULL, NULL),
(1664, 'AYAVIRI', 167, NULL, NULL),
(1665, 'ANTAUTA', 167, NULL, NULL),
(1666, 'CUPI', 167, NULL, NULL),
(1667, 'LLALLI', 167, NULL, NULL),
(1668, 'MACARI', 167, NULL, NULL),
(1669, 'NU&Ntilde;OA', 167, NULL, NULL),
(1670, 'ORURILLO', 167, NULL, NULL),
(1671, 'SANTA ROSA', 167, NULL, NULL),
(1672, 'UMACHIRI', 167, NULL, NULL),
(1673, 'MOHO', 168, NULL, NULL),
(1674, 'CONIMA', 168, NULL, NULL),
(1675, 'HUAYRAPATA', 168, NULL, NULL),
(1676, 'TILALI', 168, NULL, NULL),
(1677, 'PUTINA', 169, NULL, NULL),
(1678, 'ANANEA', 169, NULL, NULL),
(1679, 'PEDRO VILCA APAZA', 169, NULL, NULL),
(1680, 'QUILCAPUNCU', 169, NULL, NULL),
(1681, 'SINA', 169, NULL, NULL),
(1682, 'JULIACA', 170, NULL, NULL),
(1683, 'CABANA', 170, NULL, NULL),
(1684, 'CABANILLAS', 170, NULL, NULL),
(1685, 'CARACOTO', 170, NULL, NULL),
(1686, 'SANDIA', 171, NULL, NULL),
(1687, 'CUYOCUYO', 171, NULL, NULL),
(1688, 'LIMBANI', 171, NULL, NULL),
(1689, 'PATAMBUCO', 171, NULL, NULL),
(1690, 'PHARA', 171, NULL, NULL),
(1691, 'QUIACA', 171, NULL, NULL),
(1692, 'SAN JUAN DEL ORO', 171, NULL, NULL),
(1693, 'YANAHUAYA', 171, NULL, NULL),
(1694, 'ALTO INAMBARI', 171, NULL, NULL),
(1695, 'YUNGUYO', 172, NULL, NULL),
(1696, 'ANAPIA', 172, NULL, NULL),
(1697, 'COPANI', 172, NULL, NULL),
(1698, 'CUTURAPI', 172, NULL, NULL),
(1699, 'OLLARAYA', 172, NULL, NULL),
(1700, 'TINICACHI', 172, NULL, NULL),
(1701, 'UNICACHI', 172, NULL, NULL),
(1702, 'MOYOBAMBA', 173, NULL, NULL),
(1703, 'CALZADA', 173, NULL, NULL),
(1704, 'HABANA', 173, NULL, NULL),
(1705, 'JEPELACIO', 173, NULL, NULL),
(1706, 'SORITOR', 173, NULL, NULL),
(1707, 'YANTALO', 173, NULL, NULL),
(1708, 'BELLAVISTA', 174, NULL, NULL),
(1709, 'ALTO BIAVO', 174, NULL, NULL),
(1710, 'BAJO BIAVO', 174, NULL, NULL),
(1711, 'HUALLAGA', 174, NULL, NULL),
(1712, 'SAN PABLO', 174, NULL, NULL),
(1713, 'SAN RAFAEL', 174, NULL, NULL),
(1714, 'SAN JOSE DE SISA', 175, NULL, NULL),
(1715, 'AGUA BLANCA', 175, NULL, NULL),
(1716, 'SAN MARTIN', 175, NULL, NULL),
(1717, 'SANTA ROSA', 175, NULL, NULL),
(1718, 'SHATOJA', 175, NULL, NULL),
(1719, 'SAPOSOA', 176, NULL, NULL),
(1720, 'ALTO SAPOSOA', 176, NULL, NULL),
(1721, 'EL ESLABON', 176, NULL, NULL),
(1722, 'PISCOYACU', 176, NULL, NULL),
(1723, 'SACANCHE', 176, NULL, NULL),
(1724, 'TINGO DE SAPOSOA', 176, NULL, NULL),
(1725, 'LAMAS', 177, NULL, NULL),
(1726, 'ALONSO DE ALVARADO', 177, NULL, NULL),
(1727, 'BARRANQUITA', 177, NULL, NULL),
(1728, 'CAYNARACHI', 177, NULL, NULL),
(1729, 'CU&Ntilde;UMBUQUI', 177, NULL, NULL),
(1730, 'PINTO RECODO', 177, NULL, NULL),
(1731, 'RUMISAPA', 177, NULL, NULL),
(1732, 'SAN ROQUE DE CUMBAZA', 177, NULL, NULL),
(1733, 'SHANAO', 177, NULL, NULL),
(1734, 'TABALOSOS', 177, NULL, NULL),
(1735, 'ZAPATERO', 177, NULL, NULL),
(1736, 'JUANJUI', 178, NULL, NULL),
(1737, 'CAMPANILLA', 178, NULL, NULL),
(1738, 'HUICUNGO', 178, NULL, NULL),
(1739, 'PACHIZA', 178, NULL, NULL),
(1740, 'PAJARILLO', 178, NULL, NULL),
(1741, 'PICOTA', 179, NULL, NULL),
(1742, 'BUENOS AIRES', 179, NULL, NULL),
(1743, 'CASPISAPA', 179, NULL, NULL),
(1744, 'PILLUANA', 179, NULL, NULL),
(1745, 'PUCACACA', 179, NULL, NULL),
(1746, 'SAN CRISTOBAL', 179, NULL, NULL),
(1747, 'SAN HILARION', 179, NULL, NULL),
(1748, 'SHAMBOYACU', 179, NULL, NULL),
(1749, 'TINGO DE PONASA', 179, NULL, NULL),
(1750, 'TRES UNIDOS', 179, NULL, NULL),
(1751, 'RIOJA', 180, NULL, NULL),
(1752, 'AWAJUN', 180, NULL, NULL),
(1753, 'ELIAS SOPLIN VARGAS', 180, NULL, NULL),
(1754, 'NUEVA CAJAMARCA', 180, NULL, NULL),
(1755, 'PARDO MIGUEL', 180, NULL, NULL),
(1756, 'POSIC', 180, NULL, NULL),
(1757, 'SAN FERNANDO', 180, NULL, NULL),
(1758, 'YORONGOS', 180, NULL, NULL),
(1759, 'YURACYACU', 180, NULL, NULL),
(1760, 'TARAPOTO', 181, NULL, NULL),
(1761, 'ALBERTO LEVEAU', 181, NULL, NULL),
(1762, 'CACATACHI', 181, NULL, NULL),
(1763, 'CHAZUTA', 181, NULL, NULL),
(1764, 'CHIPURANA', 181, NULL, NULL),
(1765, 'EL PORVENIR', 181, NULL, NULL),
(1766, 'HUIMBAYOC', 181, NULL, NULL),
(1767, 'JUAN GUERRA', 181, NULL, NULL),
(1768, 'LA BANDA DE SHILCAYO', 181, NULL, NULL),
(1769, 'MORALES', 181, NULL, NULL),
(1770, 'PAPAPLAYA', 181, NULL, NULL),
(1771, 'SAN ANTONIO', 181, NULL, NULL),
(1772, 'SAUCE', 181, NULL, NULL),
(1773, 'SHAPAJA', 181, NULL, NULL),
(1774, 'TOCACHE', 182, NULL, NULL),
(1775, 'NUEVO PROGRESO', 182, NULL, NULL),
(1776, 'POLVORA', 182, NULL, NULL),
(1777, 'SHUNTE', 182, NULL, NULL),
(1778, 'UCHIZA', 182, NULL, NULL),
(1779, 'TACNA', 183, NULL, NULL),
(1780, 'ALTO DE LA ALIANZA', 183, NULL, NULL),
(1781, 'CALANA', 183, NULL, NULL),
(1782, 'CIUDAD NUEVA', 183, NULL, NULL),
(1783, 'INCLAN', 183, NULL, NULL),
(1784, 'PACHIA', 183, NULL, NULL),
(1785, 'PALCA', 183, NULL, NULL),
(1786, 'POCOLLAY', 183, NULL, NULL),
(1787, 'SAMA', 183, NULL, NULL),
(1788, 'CORONEL GREGORIO ALBARRACIN LANCHIPA', 183, NULL, NULL),
(1789, 'CANDARAVE', 184, NULL, NULL),
(1790, 'CAIRANI', 184, NULL, NULL),
(1791, 'CAMILACA', 184, NULL, NULL),
(1792, 'CURIBAYA', 184, NULL, NULL),
(1793, 'HUANUARA', 184, NULL, NULL),
(1794, 'QUILAHUANI', 184, NULL, NULL),
(1795, 'LOCUMBA', 185, NULL, NULL),
(1796, 'ILABAYA', 185, NULL, NULL),
(1797, 'ITE', 185, NULL, NULL),
(1798, 'TARATA', 186, NULL, NULL),
(1799, 'CHUCATAMANI', 186, NULL, NULL),
(1800, 'ESTIQUE', 186, NULL, NULL),
(1801, 'ESTIQUE-PAMPA', 186, NULL, NULL),
(1802, 'SITAJARA', 186, NULL, NULL),
(1803, 'SUSAPAYA', 186, NULL, NULL),
(1804, 'TARUCACHI', 186, NULL, NULL),
(1805, 'TICACO', 186, NULL, NULL),
(1806, 'TUMBES', 187, NULL, NULL),
(1807, 'CORRALES', 187, NULL, NULL),
(1808, 'LA CRUZ', 187, NULL, NULL),
(1809, 'PAMPAS DE HOSPITAL', 187, NULL, NULL),
(1810, 'SAN JACINTO', 187, NULL, NULL),
(1811, 'SAN JUAN DE LA VIRGEN', 187, NULL, NULL),
(1812, 'ZORRITOS', 188, NULL, NULL),
(1813, 'CASITAS', 188, NULL, NULL),
(1814, 'ZARUMILLA', 189, NULL, NULL),
(1815, 'AGUAS VERDES', 189, NULL, NULL),
(1816, 'MATAPALO', 189, NULL, NULL),
(1817, 'PAPAYAL', 189, NULL, NULL),
(1818, 'CALLERIA', 190, NULL, NULL),
(1819, 'CAMPOVERDE', 190, NULL, NULL),
(1820, 'IPARIA', 190, NULL, NULL),
(1821, 'MASISEA', 190, NULL, NULL),
(1822, 'YARINACOCHA', 190, NULL, NULL),
(1823, 'NUEVA REQUENA', 190, NULL, NULL),
(1824, 'RAYMONDI', 191, NULL, NULL),
(1825, 'SEPAHUA', 191, NULL, NULL),
(1826, 'TAHUANIA', 191, NULL, NULL),
(1827, 'YURUA', 191, NULL, NULL),
(1828, 'PADRE ABAD', 192, NULL, NULL),
(1829, 'IRAZOLA', 192, NULL, NULL),
(1830, 'CURIMANA', 192, NULL, NULL),
(1831, 'PURUS', 193, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE IF NOT EXISTS `especialidades` (
  `id` int(10) unsigned NOT NULL,
  `esp_nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esp_estado` int(11) NOT NULL,
  `esp_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `esp_nombre`, `esp_estado`, `esp_usu_registro`, `created_at`, `updated_at`) VALUES
(1, 'Psicologia', 1, 'ESTEFY CAMARENA', '2020-03-14 14:16:54', '2020-03-14 14:16:54'),
(2, 'Psiquiatria', 1, 'ESTEFY CAMARENA', '2020-03-14 14:17:08', '2020-03-14 14:17:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialistas`
--

CREATE TABLE IF NOT EXISTS `especialistas` (
  `id` int(10) unsigned NOT NULL,
  `epec_nombres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_apellidos` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_t_documento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_n_d_identidad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_sexo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_f_nacimiento` date NOT NULL,
  `epec_dpart_nacimiento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist_id_actual` int(10) unsigned NOT NULL,
  `epec_direc_actual` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_cel` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_telef` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epec_correo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_foto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_carrera` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_institucion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_especializaciones` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_poblacion` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_transtor_dominio` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_no_maneja` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `epec_estado` int(11) NOT NULL,
  `epec_especialidades` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL,
  `espec_id` int(10) unsigned NOT NULL,
  `dt_cita_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `htmltitle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE IF NOT EXISTS `gastos` (
  `gast_id` int(10) unsigned NOT NULL,
  `gast_proveedor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gast_n_comprob` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gast_concepto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ctg_cja_id` int(10) unsigned NOT NULL,
  `colab_id` int(10) unsigned NOT NULL,
  `gast_valor_fact` decimal(10,2) NOT NULL,
  `gast_fecha_fact` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gast_f_regist` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gast_usu_regist` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dt_cja_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_ingresos`
--

CREATE TABLE IF NOT EXISTS `gastos_ingresos` (
  `gt_id` int(10) unsigned NOT NULL,
  `gt_categoria` int(11) NOT NULL,
  `gt_descrip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gt_monto` decimal(10,2) NOT NULL,
  `gt_usu_regis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gt_m_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos_mes`
--

CREATE TABLE IF NOT EXISTS `gastos_mes` (
  `gt_m_id` int(10) unsigned NOT NULL,
  `sede_id` int(10) unsigned NOT NULL,
  `gt_m_mes` int(11) NOT NULL,
  `gt_m_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inter_consultas`
--

CREATE TABLE IF NOT EXISTS `inter_consultas` (
  `id` int(10) unsigned NOT NULL,
  `dt_cita_id` int(11) NOT NULL,
  `inter_servicio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inter_estado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inter_f_plazo` date NOT NULL,
  `inter_comentario` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) unsigned NOT NULL,
  `pac_nombres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_apellidos` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_t_documento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_d_identidad` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_sexo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_f_nacimiento` date NOT NULL,
  `pac_dpart_nacimiento` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist_id` int(11) NOT NULL,
  `pac_direc_actual` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_cel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_telf` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_correo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_fam_apellido` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_fam_parentezco` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_fam_cel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_correo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_diagnostico` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servicio_id` int(11) NOT NULL,
  `pac_acceso` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_medio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_estado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_espera`
--

CREATE TABLE IF NOT EXISTS `lista_espera` (
  `lespera_id` int(10) unsigned NOT NULL,
  `espec_id` int(10) unsigned DEFAULT NULL,
  `pac_id` int(10) unsigned NOT NULL,
  `lesp_f_cita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lesp_h_cita` time NOT NULL,
  `lesp_observacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serv_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_negras`
--

CREATE TABLE IF NOT EXISTS `lista_negras` (
  `id` int(10) unsigned NOT NULL,
  `pac_id` int(11) NOT NULL,
  `lista_motivo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_12_022402_create_especialidades_table', 1),
(4, '2019_07_12_035547_create_especialistas_table', 1),
(5, '2019_07_12_070535_create_departamentos_table', 1),
(6, '2019_07_12_070857_create_provincias_table', 1),
(7, '2019_07_12_070927_create_distritos_table', 1),
(8, '2019_07_12_071653_create_colaboradors_table', 1),
(9, '2019_07_12_084411_create_roles_table', 1),
(10, '2019_07_18_212809_create_servicios_table', 1),
(11, '2019_07_19_113616_create_turnos_table', 1),
(12, '2019_07_22_231611_create_pacientes_table', 1),
(13, '2019_07_25_142659_create_det_servicios_table', 1),
(14, '2019_07_27_182046_create_agendas_table', 1),
(15, '2019_07_27_182646_create_det_agendas_table', 1),
(16, '2019_07_31_124811_create_events_table', 1),
(17, '2019_08_01_183943_create_citas_table', 1),
(18, '2019_08_01_184210_create_pagos_table', 1),
(19, '2019_08_01_185154_create_det_citas_table', 1),
(20, '2019_08_23_101856_create_sedes_table', 1),
(21, '2019_08_23_102733_create_status_pagos_table', 1),
(22, '2019_08_24_174524_create_validar_pacientes_table', 1),
(23, '2019_08_26_213125_create_links_table', 1),
(24, '2019_08_31_212601_create_categorias_table', 1),
(25, '2019_09_10_144722_create_lista_negras_table', 1),
(26, '2019_09_10_171727_create_cajachicas_table', 1),
(27, '2019_09_10_182448_create_det_cajachicas_table', 1),
(28, '2019_09_17_095833_create_vacaciones_table', 1),
(29, '2019_09_18_151435_create_inter_consultas_table', 1),
(30, '2019_09_18_155434_create_det_vacas_table', 1),
(31, '2019_09_18_155618_create_dias_vacaciones_table', 1),
(32, '2019_09_20_103947_create_gastos_table', 1),
(33, '2019_09_24_102622_create_notas_table', 1),
(34, '2019_09_24_134654_create_avisos_table', 1),
(35, '2019_10_16_122557_create_cajas_table', 1),
(36, '2019_10_16_141404_create_caja_diarias_table', 1),
(37, '2019_10_16_141427_create_caja_turnos_table', 1),
(38, '2019_10_30_150952_create_gastos_ingresos_table', 1),
(39, '2019_10_30_151013_create_gastos_mes_table', 1),
(40, '2019_10_31_141800_create_lista_esperas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
  `id` int(10) unsigned NOT NULL,
  `nota_titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota_etiqueta` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota_descrip` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` int(10) unsigned NOT NULL,
  `pac_nombres` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_apellidos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_t_documento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_d_identidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_sexo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_f_nacimiento` date DEFAULT NULL,
  `pac_dpart_nacimiento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dist_id` int(11) DEFAULT NULL,
  `pac_direc_actual` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_cel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_telf` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_correo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_apellido` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_parentezco` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_cel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_correo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_diagnostico` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servicio_id` int(11) DEFAULT NULL,
  `pac_acceso` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_medio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_estado` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE IF NOT EXISTS `pagos` (
  `id` int(10) unsigned NOT NULL,
  `pago_n_cuota` int(11) NOT NULL,
  `cita_id` int(10) unsigned NOT NULL,
  `pago_monto_pagar` decimal(10,2) NOT NULL,
  `pago_Total_monto` decimal(10,2) NOT NULL,
  `pago_f_venc` date NOT NULL,
  `pago_h_venc` time NOT NULL,
  `pago_t_pago` int(11) DEFAULT NULL,
  `pago_n_comprobante` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pago_debe` decimal(10,2) DEFAULT NULL,
  `observacion` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pago_estado` int(11) NOT NULL,
  `is_deleted` int(11) DEFAULT NULL,
  `pago_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pago_usu_modifico` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cj_trn_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; 

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `id` int(10) unsigned NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `provincia`, `departamento_id`, `created_at`, `updated_at`) VALUES
(1, 'CHACHAPOYAS ', 1, NULL, NULL),
(2, 'BAGUA', 1, NULL, NULL),
(3, 'BONGARA', 1, NULL, NULL),
(4, 'CONDORCANQUI', 1, NULL, NULL),
(5, 'LUYA', 1, NULL, NULL),
(6, 'RODRIGUEZ DE MENDOZA', 1, NULL, NULL),
(7, 'UTCUBAMBA', 1, NULL, NULL),
(8, 'HUARAZ', 2, NULL, NULL),
(9, 'AIJA', 2, NULL, NULL),
(10, 'ANTONIO RAYMONDI', 2, NULL, NULL),
(11, 'ASUNCION', 2, NULL, NULL),
(12, 'BOLOGNESI', 2, NULL, NULL),
(13, 'CARHUAZ', 2, NULL, NULL),
(14, 'CARLOS FERMIN FITZCARRALD', 2, NULL, NULL),
(15, 'CASMA', 2, NULL, NULL),
(16, 'CORONGO', 2, NULL, NULL),
(17, 'HUARI', 2, NULL, NULL),
(18, 'HUARMEY', 2, NULL, NULL),
(19, 'HUAYLAS', 2, NULL, NULL),
(20, 'MARISCAL LUZURIAGA', 2, NULL, NULL),
(21, 'OCROS', 2, NULL, NULL),
(22, 'PALLASCA', 2, NULL, NULL),
(23, 'POMABAMBA', 2, NULL, NULL),
(24, 'RECUAY', 2, NULL, NULL),
(25, 'SANTA', 2, NULL, NULL),
(26, 'SIHUAS', 2, NULL, NULL),
(27, 'YUNGAY', 2, NULL, NULL),
(28, 'ABANCAY', 3, NULL, NULL),
(29, 'ANDAHUAYLAS', 3, NULL, NULL),
(30, 'ANTABAMBA', 3, NULL, NULL),
(31, 'AYMARAES', 3, NULL, NULL),
(32, 'COTABAMBAS', 3, NULL, NULL),
(33, 'CHINCHEROS', 3, NULL, NULL),
(34, 'GRAU', 3, NULL, NULL),
(35, 'AREQUIPA', 4, NULL, NULL),
(36, 'CAMANA', 4, NULL, NULL),
(37, 'CARAVELI', 4, NULL, NULL),
(38, 'CASTILLA', 4, NULL, NULL),
(39, 'CAYLLOMA', 4, NULL, NULL),
(40, 'CONDESUYOS', 4, NULL, NULL),
(41, 'ISLAY', 4, NULL, NULL),
(42, 'LA UNION', 4, NULL, NULL),
(43, 'HUAMANGA', 5, NULL, NULL),
(44, 'CANGALLO', 5, NULL, NULL),
(45, 'HUANCA SANCOS', 5, NULL, NULL),
(46, 'HUANTA', 5, NULL, NULL),
(47, 'LA MAR', 5, NULL, NULL),
(48, 'LUCANAS', 5, NULL, NULL),
(49, 'PARINACOCHAS', 5, NULL, NULL),
(50, 'PAUCAR DEL SARA SARA', 5, NULL, NULL),
(51, 'SUCRE', 5, NULL, NULL),
(52, 'VICTOR FAJARDO', 5, NULL, NULL),
(53, 'VILCAS HUAMAN', 5, NULL, NULL),
(54, 'CAJAMARCA', 6, NULL, NULL),
(55, 'CAJABAMBA', 6, NULL, NULL),
(56, 'CELENDIN', 6, NULL, NULL),
(57, 'CHOTA ', 6, NULL, NULL),
(58, 'CONTUMAZA', 6, NULL, NULL),
(59, 'CUTERVO', 6, NULL, NULL),
(60, 'HUALGAYOC', 6, NULL, NULL),
(61, 'JAEN', 6, NULL, NULL),
(62, 'SAN IGNACIO', 6, NULL, NULL),
(63, 'SAN MARCOS', 6, NULL, NULL),
(64, 'SAN PABLO', 6, NULL, NULL),
(65, 'SANTA CRUZ', 6, NULL, NULL),
(66, 'CALLAO', 7, NULL, NULL),
(67, 'CUSCO', 8, NULL, NULL),
(68, 'ACOMAYO', 8, NULL, NULL),
(69, 'ANTA', 8, NULL, NULL),
(70, 'CALCA', 8, NULL, NULL),
(71, 'CANAS', 8, NULL, NULL),
(72, 'CANCHIS', 8, NULL, NULL),
(73, 'CHUMBIVILCAS', 8, NULL, NULL),
(74, 'ESPINAR', 8, NULL, NULL),
(75, 'LA CONVENCION', 8, NULL, NULL),
(76, 'PARURO', 8, NULL, NULL),
(77, 'PAUCARTAMBO', 8, NULL, NULL),
(78, 'QUISPICANCHI', 8, NULL, NULL),
(79, 'URUBAMBA', 8, NULL, NULL),
(80, 'HUANCAVELICA', 9, NULL, NULL),
(81, 'ACOBAMBA', 9, NULL, NULL),
(82, 'ANGARAES', 9, NULL, NULL),
(83, 'CASTROVIRREYNA', 9, NULL, NULL),
(84, 'CHURCAMPA', 9, NULL, NULL),
(85, 'HUAYTARA', 9, NULL, NULL),
(86, 'TAYACAJA', 9, NULL, NULL),
(87, 'HUANUCO', 10, NULL, NULL),
(88, 'AMBO', 10, NULL, NULL),
(89, 'DOS DE MAYO', 10, NULL, NULL),
(90, 'HUACAYBAMBA', 10, NULL, NULL),
(91, 'HUAMALIES', 10, NULL, NULL),
(92, 'LEONCIO PRADO', 10, NULL, NULL),
(93, 'MARA&Ntilde;ON', 10, NULL, NULL),
(94, 'PACHITEA', 10, NULL, NULL),
(95, 'PUERTO INCA', 10, NULL, NULL),
(96, 'LAURICOCHA', 10, NULL, NULL),
(97, 'YAROWILCA', 10, NULL, NULL),
(98, 'ICA', 11, NULL, NULL),
(99, 'CHINCHA', 11, NULL, NULL),
(100, 'NAZCA', 11, NULL, NULL),
(101, 'PALPA', 11, NULL, NULL),
(102, 'PISCO', 11, NULL, NULL),
(103, 'HUANCAYO', 12, NULL, NULL),
(104, 'CONCEPCION', 12, NULL, NULL),
(105, 'CHANCHAMAYO', 12, NULL, NULL),
(106, 'JAUJA', 12, NULL, NULL),
(107, 'JUNIN', 12, NULL, NULL),
(108, 'SATIPO', 12, NULL, NULL),
(109, 'TARMA', 12, NULL, NULL),
(110, 'YAULI', 12, NULL, NULL),
(111, 'CHUPACA', 12, NULL, NULL),
(112, 'TRUJILLO', 13, NULL, NULL),
(113, 'ASCOPE', 13, NULL, NULL),
(114, 'BOLIVAR', 13, NULL, NULL),
(115, 'CHEPEN', 13, NULL, NULL),
(116, 'JULCAN', 13, NULL, NULL),
(117, 'OTUZCO', 13, NULL, NULL),
(118, 'PACASMAYO', 13, NULL, NULL),
(119, 'PATAZ', 13, NULL, NULL),
(120, 'SANCHEZ CARRION', 13, NULL, NULL),
(121, 'SANTIAGO DE CHUCO', 13, NULL, NULL),
(122, 'GRAN CHIMU', 13, NULL, NULL),
(123, 'VIRU', 13, NULL, NULL),
(124, 'CHICLAYO', 14, NULL, NULL),
(125, 'FERRE&Ntilde;AFE', 14, NULL, NULL),
(126, 'LAMBAYEQUE', 14, NULL, NULL),
(127, 'LIMA', 15, NULL, NULL),
(128, 'BARRANCA', 15, NULL, NULL),
(129, 'CAJATAMBO', 15, NULL, NULL),
(130, 'CANTA', 15, NULL, NULL),
(131, 'CA&Ntilde;ETE', 15, NULL, NULL),
(132, 'HUARAL', 15, NULL, NULL),
(133, 'HUAROCHIRI', 15, NULL, NULL),
(134, 'HUAURA', 15, NULL, NULL),
(135, 'OYON', 15, NULL, NULL),
(136, 'YAUYOS', 15, NULL, NULL),
(137, 'MAYNAS', 16, NULL, NULL),
(138, 'ALTO AMAZONAS', 16, NULL, NULL),
(139, 'LORETO', 16, NULL, NULL),
(140, 'MARISCAL RAMON CASTILLA', 16, NULL, NULL),
(141, 'REQUENA', 16, NULL, NULL),
(142, 'UCAYALI', 16, NULL, NULL),
(143, 'TAMBOPATA', 17, NULL, NULL),
(144, 'MANU', 17, NULL, NULL),
(145, 'TAHUAMANU', 17, NULL, NULL),
(146, 'MARISCAL NIETO', 18, NULL, NULL),
(147, 'GENERAL SANCHEZ CERRO', 18, NULL, NULL),
(148, 'ILO', 18, NULL, NULL),
(149, 'PASCO', 19, NULL, NULL),
(150, 'DANIEL ALCIDES CARRION', 19, NULL, NULL),
(151, 'OXAPAMPA', 19, NULL, NULL),
(152, 'PIURA', 20, NULL, NULL),
(153, 'AYABACA', 20, NULL, NULL),
(154, 'HUANCABAMBA', 20, NULL, NULL),
(155, 'MORROPON', 20, NULL, NULL),
(156, 'PAITA', 20, NULL, NULL),
(157, 'SULLANA', 20, NULL, NULL),
(158, 'TALARA', 20, NULL, NULL),
(159, 'SECHURA', 20, NULL, NULL),
(160, 'PUNO', 21, NULL, NULL),
(161, 'AZANGARO', 21, NULL, NULL),
(162, 'CARABAYA', 21, NULL, NULL),
(163, 'CHUCUITO', 21, NULL, NULL),
(164, 'EL COLLAO', 21, NULL, NULL),
(165, 'HUANCANE', 21, NULL, NULL),
(166, 'LAMPA', 21, NULL, NULL),
(167, 'MELGAR', 21, NULL, NULL),
(168, 'MOHO', 21, NULL, NULL),
(169, 'SAN ANTONIO DE PUTINA', 21, NULL, NULL),
(170, 'SAN ROMAN', 21, NULL, NULL),
(171, 'SANDIA', 21, NULL, NULL),
(172, 'YUNGUYO', 21, NULL, NULL),
(173, 'MOYOBAMBA', 22, NULL, NULL),
(174, 'BELLAVISTA', 22, NULL, NULL),
(175, 'EL DORADO', 22, NULL, NULL),
(176, 'HUALLAGA', 22, NULL, NULL),
(177, 'LAMAS', 22, NULL, NULL),
(178, 'MARISCAL CACERES', 22, NULL, NULL),
(179, 'PICOTA', 22, NULL, NULL),
(180, 'RIOJA', 22, NULL, NULL),
(181, 'SAN MARTIN', 22, NULL, NULL),
(182, 'TOCACHE', 22, NULL, NULL),
(183, 'TACNA', 23, NULL, NULL),
(184, 'CANDARAVE', 23, NULL, NULL),
(185, 'JORGE BASADRE', 23, NULL, NULL),
(186, 'TARATA', 23, NULL, NULL),
(187, 'TUMBES', 24, NULL, NULL),
(188, 'CONTRALMIRANTE VILLAR', 24, NULL, NULL),
(189, 'ZARUMILLA', 24, NULL, NULL),
(190, 'CORONEL PORTILLO', 25, NULL, NULL),
(191, 'ATALAYA', 25, NULL, NULL),
(192, 'PADRE ABAD', 25, NULL, NULL),
(193, 'PURUS', 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'DIRECTOR', NULL, NULL),
(2, 'ORIENTADOR', NULL, NULL),
(3, 'RECEPCIONISTA', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE IF NOT EXISTS `sedes` (
  `id` int(10) unsigned NOT NULL,
  `sede_nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_descrip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_direccion` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dist_id_actual` int(10) unsigned NOT NULL,
  `sede_usu_registro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sede_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
  `id` int(10) unsigned NOT NULL,
  `serv_servicios` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_id` int(11) NOT NULL,
  `serv_usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_pagos`
--

CREATE TABLE IF NOT EXISTS `status_pagos` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE IF NOT EXISTS `turnos` (
  `id` int(10) unsigned NOT NULL,
  `tur_turno` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tur_h_inicio` time NOT NULL,
  `tur_h_fin` time NOT NULL,
  `tur_duracion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tur_estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `tur_turno`, `tur_h_inicio`, `tur_h_fin`, `tur_duracion`, `tur_estado`, `created_at`, `updated_at`) VALUES
(3, 'SABATINO', '09:00:00', '17:00:00', '60', 1, NULL, NULL),
(2, 'TARDE', '14:00:00', '21:00:00', '60', 1, NULL, NULL),
(1, 'MAÑANA', '08:00:00', '13:00:00', '40', 1, NULL, NULL),
(4, 'PSIQUIATRIA-MAÑANA', '08:00:00', '13:00:00', '15', 1, NULL, NULL),
(5, 'PSIQUIATRIA-TARDE', '14:00:00', '20:00:00', '15', 1, NULL, NULL),
(6, 'PSIQUIATRIA-SABATINO', '09:00:00', '17:00:00', '15', 1, NULL, NULL),
(7, 'PSIQUIATRIA-Full-Day', '09:00:00', '20:00:00', '15', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `estado`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DIRECTOR', 'estefyminerva@example.com', NULL, '$2y$10$koJu8pacMDUdkHWQz42m2upsJ9BVDySyaYyMuvODYKCnsI3SP1Jya', 1, 1, 'N2WRRn9C0B7A75H2lBfkqSfevy8Igx5K7f03NmMgqXUkQVUOCZyvzBhJV0fb', NULL, '2020-03-14 14:14:45');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vacaciones`
--

CREATE TABLE IF NOT EXISTS `vacaciones` (
  `id` int(10) unsigned NOT NULL,
  `vac_f_inicio` date NOT NULL,
  `vac_f_fin` date NOT NULL,
  `vac_dia` int(11) DEFAULT NULL,
  `vac_d_total` int(11) DEFAULT NULL,
  `vac_d_usados` int(11) DEFAULT NULL,
  `usu_registro` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vac_estado` int(11) NOT NULL,
  `agen_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `validar_pacientes`
--

CREATE TABLE IF NOT EXISTS `validar_pacientes` (
  `valpac_id` int(10) unsigned NOT NULL,
  `pac_nombres` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pac_apellidos` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_t_documento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_d_identidad` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_sexo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_f_nacimiento` date DEFAULT NULL,
  `pac_dpart_nacimiento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dist_id` int(11) DEFAULT NULL,
  `pac_direc_actual` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_cel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_telf` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_correo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_nombre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_apellido` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_parentezco` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_cel` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_fam_correo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_diagnostico` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `servicio_id` int(11) DEFAULT NULL,
  `pac_acceso` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_medio` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pac_estado` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_PsicologiaEvents`
--
CREATE TABLE IF NOT EXISTS `vw_PsicologiaEvents` (
`title` varchar(255)
,`start` datetime
,`end` datetime
,`agen_id` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_PsicologosAgenda`
--
CREATE TABLE IF NOT EXISTS `vw_PsicologosAgenda` (
`id` int(10) unsigned
,`agen_nombre` varchar(255)
,`epec_nombres` varchar(100)
,`epec_apellidos` varchar(100)
,`agen_f_inicio` date
,`agen_f_fin` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_PsiquiatrasAgenda`
--
CREATE TABLE IF NOT EXISTS `vw_PsiquiatrasAgenda` (
`id` int(10) unsigned
,`agen_nombre` varchar(255)
,`epec_nombres` varchar(100)
,`epec_apellidos` varchar(100)
,`agen_f_inicio` date
,`agen_f_fin` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_PsiquiatriaEvents`
--
CREATE TABLE IF NOT EXISTS `vw_PsiquiatriaEvents` (
`title` varchar(255)
,`start` datetime
,`end` datetime
,`agen_id` int(10) unsigned
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_TurnosPsicologia`
--
CREATE TABLE IF NOT EXISTS `vw_TurnosPsicologia` (
`tu_id` int(10) unsigned
,`tur_turno` varchar(255)
,`tur_duracion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_TurnosPsiquiatria`
--
CREATE TABLE IF NOT EXISTS `vw_TurnosPsiquiatria` (
`tu_id` int(10) unsigned
,`tur_turno` varchar(255)
,`tur_duracion` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_PsicologiaEvents`
--
DROP TABLE IF EXISTS `vw_PsicologiaEvents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`gonza1098`@`%` SQL SECURITY DEFINER VIEW `vw_PsicologiaEvents` AS select `eve`.`title` AS `title`,`eve`.`start` AS `start`,`eve`.`end` AS `end`,`deagen`.`agen_id` AS `agen_id` from ((((`events` `eve` join `det_citas` `decit` on((`decit`.`id` = `eve`.`dt_cita_id`))) join `det_agendas` `deagen` on((`deagen`.`id` = `decit`.`dt_agen_id`))) join `especialistas` `espe` on((`espe`.`id` = `eve`.`espec_id`))) join `especialidades` `espec` on((`espec`.`id` = `espe`.`epec_especialidades`))) where ((`espec`.`esp_nombre` = 'Psicologia') or (`espec`.`esp_nombre` = 'Psicología') or (`espec`.`esp_nombre` = 'PSICOLOGIA'));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_PsicologosAgenda`
--
DROP TABLE IF EXISTS `vw_PsicologosAgenda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`gonza1098`@`%` SQL SECURITY DEFINER VIEW `vw_PsicologosAgenda` AS select `age`.`id` AS `id`,`age`.`agen_nombre` AS `agen_nombre`,`espc`.`epec_nombres` AS `epec_nombres`,`espc`.`epec_apellidos` AS `epec_apellidos`,`age`.`agen_f_inicio` AS `agen_f_inicio`,`age`.`agen_f_fin` AS `agen_f_fin` from ((`agendas` `age` join `especialistas` `espc` on((`espc`.`id` = `age`.`espec_id`))) join `especialidades` `espe` on((`espe`.`id` = `espc`.`epec_especialidades`))) where (((`espe`.`esp_nombre` = 'Psicología') or (`espe`.`esp_nombre` = 'Psicologia')) and (`age`.`agen_estado` = 1)) order by `age`.`agen_nombre`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_PsiquiatrasAgenda`
--
DROP TABLE IF EXISTS `vw_PsiquiatrasAgenda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`gonza1098`@`%` SQL SECURITY DEFINER VIEW `vw_PsiquiatrasAgenda` AS select `age`.`id` AS `id`,`age`.`agen_nombre` AS `agen_nombre`,`espc`.`epec_nombres` AS `epec_nombres`,`espc`.`epec_apellidos` AS `epec_apellidos`,`age`.`agen_f_inicio` AS `agen_f_inicio`,`age`.`agen_f_fin` AS `agen_f_fin` from ((`agendas` `age` join `especialistas` `espc` on((`espc`.`id` = `age`.`espec_id`))) join `especialidades` `espe` on((`espe`.`id` = `espc`.`epec_especialidades`))) where (((`espe`.`esp_nombre` = 'Psiquiatría') or (`espe`.`esp_nombre` = 'Psiquiatria')) and (`age`.`agen_estado` = 1)) order by `age`.`agen_nombre`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_PsiquiatriaEvents`
--
DROP TABLE IF EXISTS `vw_PsiquiatriaEvents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`gonza1098`@`%` SQL SECURITY DEFINER VIEW `vw_PsiquiatriaEvents` AS select `eve`.`title` AS `title`,`eve`.`start` AS `start`,`eve`.`end` AS `end`,`deagen`.`agen_id` AS `agen_id` from ((((`events` `eve` join `det_citas` `decit` on((`decit`.`id` = `eve`.`dt_cita_id`))) join `det_agendas` `deagen` on((`deagen`.`id` = `decit`.`dt_agen_id`))) join `especialistas` `espe` on((`espe`.`id` = `eve`.`espec_id`))) join `especialidades` `espec` on((`espec`.`id` = `espe`.`epec_especialidades`))) where ((`espec`.`esp_nombre` = 'Psiquiatria') or (`espec`.`esp_nombre` = 'Psiquíatria') or (`espec`.`esp_nombre` = 'PSIQUIATRIA'));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_TurnosPsicologia`
--
DROP TABLE IF EXISTS `vw_TurnosPsicologia`;

CREATE ALGORITHM=UNDEFINED DEFINER=`gonza1098`@`%` SQL SECURITY DEFINER VIEW `vw_TurnosPsicologia` AS select `turnos`.`id` AS `tu_id`,`turnos`.`tur_turno` AS `tur_turno`,`turnos`.`tur_duracion` AS `tur_duracion` from `turnos` where ((`turnos`.`tur_estado` = 1) and (not((`turnos`.`tur_turno` like '%PSIQUIATRIA%'))));

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_TurnosPsiquiatria`
--
DROP TABLE IF EXISTS `vw_TurnosPsiquiatria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`gonza1098`@`%` SQL SECURITY DEFINER VIEW `vw_TurnosPsiquiatria` AS select `turnos`.`id` AS `tu_id`,`turnos`.`tur_turno` AS `tur_turno`,`turnos`.`tur_duracion` AS `tur_duracion` from `turnos` where ((`turnos`.`tur_estado` = 1) and (`turnos`.`tur_turno` like '%PSIQUIATRIA%'));

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendas`
--
ALTER TABLE `agendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agendas_espec_id_foreign` (`espec_id`);

--
-- Indices de la tabla `aviso`
--
ALTER TABLE `aviso`
  ADD PRIMARY KEY (`aviso_id`),
  ADD KEY `aviso_pac_id_foreign` (`pac_id`);

--
-- Indices de la tabla `cajachica`
--
ALTER TABLE `cajachica`
  ADD PRIMARY KEY (`cjachic_id`),
  ADD KEY `cajachica_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`caja_id`),
  ADD KEY `cajas_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `caja_diaria`
--
ALTER TABLE `caja_diaria`
  ADD PRIMARY KEY (`cj_dia_id`),
  ADD KEY `caja_diaria_caja_id_foreign` (`caja_id`);

--
-- Indices de la tabla `caja_turno`
--
ALTER TABLE `caja_turno`
  ADD PRIMARY KEY (`cj_trn_id`),
  ADD KEY `caja_turno_tur_id_foreign` (`tur_id`),
  ADD KEY `caja_turno_colab_id_foreign` (`colab_id`),
  ADD KEY `caja_turno_cj_dia_id_foreign` (`cj_dia_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorias_cjachic_id_foreign` (`cjachic_id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citas_pac_id_foreign` (`pac_id`),
  ADD KEY `citas_dt_sv_id_foreign` (`dt_sv_id`);

--
-- Indices de la tabla `citas_flags`
--
ALTER TABLE `citas_flags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colaboradors`
--
ALTER TABLE `colaboradors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colaboradors_user_id_foreign` (`user_id`),
  ADD KEY `colaboradors_distrito_id_foreign` (`distrito_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `det_agendas`
--
ALTER TABLE `det_agendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `det_agendas_agen_id_foreign` (`agen_id`),
  ADD KEY `det_agendas_turn_id_foreign` (`turn_id`);

--
-- Indices de la tabla `det_cajachica`
--
ALTER TABLE `det_cajachica`
  ADD PRIMARY KEY (`dt_cja_id`);

--
-- Indices de la tabla `det_citas`
--
ALTER TABLE `det_citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `det_citas_cita_id_foreign` (`cita_id`),
  ADD KEY `det_citas_espec_id_foreign` (`espec_id`),
  ADD KEY `det_citas_dt_agen_id_foreign` (`dt_agen_id`);

--
-- Indices de la tabla `det_servicios`
--
ALTER TABLE `det_servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `det_servicios_serv_id_foreign` (`serv_id`),
  ADD KEY `det_servicios_tur_id_foreign` (`tur_id`);

--
-- Indices de la tabla `det_vacas`
--
ALTER TABLE `det_vacas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `det_vacas_vac_id_foreign` (`vac_id`);

--
-- Indices de la tabla `dias_vacaciones`
--
ALTER TABLE `dias_vacaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dias_vacaciones_detvac_id_foreign` (`detvac_id`);

--
-- Indices de la tabla `distritos`
--
ALTER TABLE `distritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `distritos_provincia_id_foreign` (`provincia_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialistas`
--
ALTER TABLE `especialistas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `especialistas_dist_id_actual_foreign` (`dist_id_actual`),
  ADD KEY `especialistas_epec_especialidades_foreign` (`epec_especialidades`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_dt_cita_id_foreign` (`dt_cita_id`),
  ADD KEY `events_espec_id_foreign` (`espec_id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`gast_id`),
  ADD KEY `gastos_ctg_cja_id_foreign` (`ctg_cja_id`),
  ADD KEY `gastos_colab_id_foreign` (`colab_id`),
  ADD KEY `gastos_dt_cja_id_foreign` (`dt_cja_id`);

--
-- Indices de la tabla `gastos_ingresos`
--
ALTER TABLE `gastos_ingresos`
  ADD PRIMARY KEY (`gt_id`),
  ADD KEY `gastos_ingresos_gt_m_id_foreign` (`gt_m_id`);

--
-- Indices de la tabla `gastos_mes`
--
ALTER TABLE `gastos_mes`
  ADD PRIMARY KEY (`gt_m_id`),
  ADD KEY `gastos_mes_sede_id_foreign` (`sede_id`);

--
-- Indices de la tabla `inter_consultas`
--
ALTER TABLE `inter_consultas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inter_consultas_dt_cita_id_foreign` (`dt_cita_id`);

--
-- Indices de la tabla `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_dist_id_foreign` (`dist_id`),
  ADD KEY `links_servicio_id_foreign` (`servicio_id`);

--
-- Indices de la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  ADD PRIMARY KEY (`lespera_id`),
  ADD KEY `lista_espera_espec_id_foreign` (`espec_id`),
  ADD KEY `lista_espera_pac_id_foreign` (`pac_id`),
  ADD KEY `lista_espera_serv_id_foreign` (`serv_id`);

--
-- Indices de la tabla `lista_negras`
--
ALTER TABLE `lista_negras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lista_negras_pac_id_foreign` (`pac_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pacientes_dist_id_foreign` (`dist_id`),
  ADD KEY `pacientes_servicio_id_foreign` (`servicio_id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_cita_id_foreign` (`cita_id`),
  ADD KEY `pagos_cj_trn_id_foreign` (`cj_trn_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provincias_departamento_id_foreign` (`departamento_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sedes_dist_id_actual_foreign` (`dist_id_actual`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `servicios_es_id_foreign` (`es_id`);

--
-- Indices de la tabla `status_pagos`
--
ALTER TABLE `status_pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacaciones_agen_id_foreign` (`agen_id`);

--
-- Indices de la tabla `validar_pacientes`
--
ALTER TABLE `validar_pacientes`
  ADD PRIMARY KEY (`valpac_id`),
  ADD KEY `validar_pacientes_dist_id_foreign` (`dist_id`),
  ADD KEY `validar_pacientes_servicio_id_foreign` (`servicio_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agendas`
--
ALTER TABLE `agendas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `aviso`
--
ALTER TABLE `aviso`
  MODIFY `aviso_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cajachica`
--
ALTER TABLE `cajachica`
  MODIFY `cjachic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `caja_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `caja_diaria`
--
ALTER TABLE `caja_diaria`
  MODIFY `cj_dia_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `caja_turno`
--
ALTER TABLE `caja_turno`
  MODIFY `cj_trn_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `citas_flags`
--
ALTER TABLE `citas_flags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `colaboradors`
--
ALTER TABLE `colaboradors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `det_agendas`
--
ALTER TABLE `det_agendas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT de la tabla `det_cajachica`
--
ALTER TABLE `det_cajachica`
  MODIFY `dt_cja_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `det_citas`
--
ALTER TABLE `det_citas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `det_servicios`
--
ALTER TABLE `det_servicios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `det_vacas`
--
ALTER TABLE `det_vacas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `dias_vacaciones`
--
ALTER TABLE `dias_vacaciones`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `distritos`
--
ALTER TABLE `distritos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1833;
--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `especialistas`
--
ALTER TABLE `especialistas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `gast_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `gastos_ingresos`
--
ALTER TABLE `gastos_ingresos`
  MODIFY `gt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `gastos_mes`
--
ALTER TABLE `gastos_mes`
  MODIFY `gt_m_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `inter_consultas`
--
ALTER TABLE `inter_consultas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lista_espera`
--
ALTER TABLE `lista_espera`
  MODIFY `lespera_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `lista_negras`
--
ALTER TABLE `lista_negras`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `status_pagos`
--
ALTER TABLE `status_pagos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `turnos`
--
ALTER TABLE `turnos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `vacaciones`
--
ALTER TABLE `vacaciones`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `validar_pacientes`
--
ALTER TABLE `validar_pacientes`
  MODIFY `valpac_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


/*
-- Creación de Eventos
*/
--
-- Activar el motor de "Events" en sql
--
SET GLOBAL event_scheduler = ON;
-- Event
CREATE EVENT delete_citas_flag
ON SCHEDULE EVERY 1 MINUTE
DO DELETE FROM `citas_flags` WHERE TIMESTAMPDIFF(MINUTE,`created_at`,now()) > 5;

-- Eliminar
-- DROP EVENT delete_citas_flag;

-- Mostrar todos los eventos
-- SHOW events;

/*
-- Historial de la bd
*/
--
-- Historial tbl_pacientes
--