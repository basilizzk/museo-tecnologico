-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-11-2023 a las 10:21:46
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `museook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objeto`
--
create database museook;
use museook;


CREATE TABLE `objeto` (
  `id` int(11) NOT NULL,
  `nombreO` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(4) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `historia` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fotoObj` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fotoUbi` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `date1` datetime NOT NULL DEFAULT current_timestamp(),
  `date2` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `objeto`
--

INSERT INTO `objeto` (`id`, `nombreO`, `ubicacion`, `descripcion`, `historia`, `fotoObj`, `fotoUbi`, `date1`, `date2`) VALUES
(1, 'clavos1', '1111', 'En carpintería y construcción, un clavo es un pequeño objeto de metal (o de madera, llamado clavo de árbol o \"tronco\") que se utiliza como sujetador, como clavija para colgar algo, o a veces como ador', 'La Biblia proporciona una serie de referencias a los clavos, incluyendo la historia en el Jueces de Jael la esposa de Heber, que clava un clavo (o clavija de la tienda) en la sien de un comandante cananeo dormido;3​ La provisión de hierro para clavos por parte del Rey David para lo que sería el Templo de Salomón;4​ y en relación con la crucifixión de Cristo.\r\n\r\nEl Romanos hizo un amplio uso de los clavos. El ejército romano, por ejemplo, dejó siete toneladas de clavos cuando evacuó l', 'fotos/Captura.PNG', 'fotos/Captura.PNGsd.PNG', '2023-11-11 11:50:58', '2023-11-11 11:50:54'),
(2, 'Taladradora', '1122', 'Se denomina taladradora o taladro a la máquina o herramienta con la que se mecanizan la mayoría de los agujeros que se hacen a las piezas en los talleres mecánicos. Destacan estas máquinas por la senc', 'En el Paleolítico Superior los humanos taladraban conchas de moluscos con fines ornamentales. Se han hallado conchas perforadas de entre 70.000 y 120.000 años de antigüedad en África y Oriente Próximo, atribuidas al Homo sapiens. En Europa unos restos similares datados de hace 50.000 años muestran que también el Hombre de Neandertal conocía la técnica del taladrado.1​\r\n\r\nTaladrar requiere imprimir un movimiento de rotación a la herramienta. El procedimiento más antiguo que se conoce', 'fotos/123.jpg', 'fotos/ew.PNG', '2023-10-26 19:00:06', '0000-00-00 00:00:00'),
(3, 'broca', '0000', 'La broca es una herramienta metálica de corte que crea orificios circulares en diversos materiales cuando se coloca en una herramienta mecánica como taladro, berbiquí u otra máquina. Su función es for', 'Las fresas o brocas Forstner, llevan el nombre de su inventor, Benjamin Forstner y, se distinguen en que permiten hacer orificios precisos de fondo plano en madera, con cualquier orientación con respecto a la fibra de la madera. Pueden cortar en el borde de un bloque de madera y pueden cortar agujeros superpuestos. Debido al fondo plano del orificio, son útiles para perforar chapas ya pegadas para agregar una incrustación. Requieren una gran fuerza para empujarlos contra el material, por lo q', 'fotos/CenterDrills123456.jpg', 'fotos/ew.PNG', '2023-10-26 19:00:21', '0000-00-00 00:00:00'),
(4, 'Esmeriladora', '1234', 'Una esmeriladora, esmeril de banco, electroesmeriladora o amoladora de banco es una máquina herramienta que consiste en un motor eléctrico a cuyo eje de giro se acoplan en uno o ambos extremos discos ', 'Las amoladoras pueden ser utilizadas en un gran abanico de trabajos, ya que se usa tanto para trabajos profesionales como para trabajos de bricolaje en casa.\r\n\r\nIncluso estas herramientas a veces se emplean para cortar mármol, cerámica, entre muchos otros materiales y para poder saber de forma precisa cómo debemos utilizarla, es necesario saber manejar a la perfección cada tipo de amoladora, para así poder elegir de nuevo el trabajo que nos convenga.\r\n\r\nTambién podemos clasificar las amola', 'fotos/200px-Slijpsteen.jpg', 'fotos/ew.PNG', '2023-10-26 19:00:35', '0000-00-00 00:00:00'),
(5, ' cuchilla', '4312', 'Una cuchilla es la parte plana de una herramienta o de un arma que tengan normalmente un filo o un extremo afilado hechos generalmente de metal como el acero para cortar, apuñalar, rebanar, arrojar, e', 'El material para las cuchillas de las armas debe ser seleccionado cuidadosamente, pues se requiere un equilibrio entre la dureza y la ligereza para funcionar correctamente. En la antigüedad, el principal metal usado era el cobre, luego bronce, hierro y finalmente acero. Antes de la invención del acero, fueron desarrolladas varias técnicas para reducir la fragilidad del hierro. Quizás el más bien conocido es la patrón de soldadura, una técnica usada para las katanas (espadas de samurái) o', 'fotos/Blade_grinds.svg.png', 'fotos/ew.PNG', '2023-10-26 16:51:39', '0000-00-00 00:00:00'),
(6, 'katana', '1231', 'Es un sable curvado de filo único y punta aguzada tradicionalmente utilizado por los samurái. Su tamaño ronda el metro de longitud y pesa alrededor de un kilo.', 'El origen de la «katana» japonesa se remonta a unas primeras espadas que, aproximadamente, datan del 700 d. C. y que se caracterizaban por ser rectas y con un solo filo. Se las denominaba “chokuto” y sus dimensiones podían oscilar entre los 30 y los 90 cm. Eran muestra del importante valor ritual de las armas en aquel entonces (hablamos de una cultura panimista): probablemente pertenecieran a ajuares funerarios de nobles o personas importantes de la tribu. Paralelamente, el impacto de la ', 'fotos/12341.jpg', 'fotos/ew.PNG', '2023-10-26 19:51:18', '0000-00-00 00:00:00'),
(7, 'garlopa manual', '5678', 'La garlopa manual1? es un tipo de cepillo de carpintero que consiste en un paralelepípedo rectángulo de madera llamado caja procurando que la altura vaya disminuyendo un poco hacia las extremidades. L', 'Las garlopas de mano son antiguas, se originaron hace miles de años. Las primeras garlopas estaban hechas de madera con una ranura rectangular o mortaja cortada en el centro del cuerpo. La hoja de corte o hierro se mantuvo en su lugar con una cuña de madera. La cuña se golpeaba en la mortaja y se ajustaba con un pequeño mazo, un trozo de madera de desecho o con la palma de la mano del artesano. Se han encontrado garlopas de este tipo en excavaciones de yacimientos antiguos, así como dibujos', 'fotos/Rubank.jpg', 'fotos/Clavos.JPG', '2023-10-26 16:55:28', '0000-00-00 00:00:00'),
(8, 'gramil', '9067', 'Un gramil es la herramienta usada en carpintería (ebanistería) o metalistería (mecanizado entre tantas cosas) para marcar líneas paralelas de corte en referencia a una orilla o superficie, además de o', 'Consiste de una barra, un cabezal y un implemento de trazado que puede ser una tachuela, una cuchilla, un bolígrafo, una rueda o una punta de trazar. El cabezal se desliza a lo largo de la barra y puede fijarse en algún tramo mediante distintos instrumentos, ya sea un tornillo de retención, una leva de control o una cuña. Existen asimismo gramiles con dos puntas que se pueden situar a distintas distancias para marcar dos líneas paralelas simultáneamente.', 'fotos/-Gramil.jpg', 'fotos/Blade_grinds.svg.png', '2023-10-26 16:56:23', '0000-00-00 00:00:00'),
(9, 'formón ', '6890', 'El formón o escoplo es una herramienta manual de corte libre utilizada en carpintería. Se compone de una hoja de hierro acerado, de entre 4 y 40 milímetros de ancho, con una boca formada por un bisel ', 'Su longitud de mango a punta es de 20 centímetros aproximadamente. El ángulo del filo oscila entre los 25 y los 40 grados, dependiendo del tipo de madera a trabajar: para madera blanda se usa un menor ángulo; para madera dura, un ángulo mayor.\r\n\r\nLos formones son diseñados para realizar cortes, muescas, rebajes y trabajos artesanos artísticos de sobrerrelieve en madera. Se trabaja con la fuerza de las manos o mediante la utilización de una maza para golpear la cabeza del formón.1​', 'fotos/Chisel.jpeg', 'fotos/Rubank.jpg', '2023-10-26 16:56:54', '0000-00-00 00:00:00'),
(10, 'Sierra de vaivén', '5425', 'La sierra de vaivén, sierra caladora o sierra de calar, o coloquialmente una caladora (jigsaw en inglés), es un tipo de sierra utilizada para cortar curvas arbitrarias', 'Por otro lado, las hojas de dientes grandes dan un corte alternado, sirven para maderas y derivados, en tablas de hasta 60mm.\r\n\r\nLos dientes medianos, dan un corte preciso y fino, para todas las maderas, placas y materiales plásticos. Una hoja ondulada, brinda un corte recto, para metales ferrosos.\r\n\r\nLos dientes finos, dan un corte fino, para contornear curvas cerradas en madera. Dientes muy finos, para cortar materiales blandos y no ferrosos. Dientes extra finos, para cortar metales.\r\n', 'fotos/aag.jpg', 'fotos/caja.jpg', '2023-10-26 16:57:57', '2023-11-07 08:36:11'),
(11, 'Sierra circular', '7805', 'La sierra circular es una máquina para aserrar longitudinal o transversalmente madera, metal, plástico u otros materiales', 'El 27 de marzo de 1816, Auguste Brunet y Jean-Baptiste Cochot depositaron una patente de sierra circular (el constructor de órganos Aristide Cavaillé-Coll ya había creado una sierra circular antes, pero sin la presentación de la patente). Originalmente, las primeras sierras circulares, alimentadas por agua, no cortaban más que la madera (la de Cavaillé-Coll fue también usada para cortar las tiras de estaño para hacer los tubos del órgano). Ahora también pueden cortar otros materiales m', 'fotos/a_RB.jpg', 'fotos/Chisel.jpeg', '2023-10-26 17:00:33', '0000-00-00 00:00:00'),
(12, 'Sierra de brazo', '6452', 'La sierra de brazo radial es una herramienta de corte que consiste en una sierra circular montada en un brazo deslizante horizontal. Inventada en 1923, la sierra de brazo radial fue la principal herra', 'A diferencia de la mayoría de las máquinas para carpintería, la sierra de brazo radial tiene una génesis clara: fue inventada por Raymond De Walt, nativo de Bridgeton, Nueva Jersey. De Walt presentó solicitudes de patente en 1923 y le fueron otorgadas en 1925 (US-1,528,536). De Walt y otros patentaron sucesivamente numerosas variaciones sobre el original, pero el diseño inicial (vendido bajo el apodo Maravilloso Trabajador - Wonder Worker) permaneció como el más exitoso: una sierra circu', 'fotos/ha.jpg', 'fotos/-Gramil.jpg', '2023-10-26 19:21:54', '0000-00-00 00:00:00'),
(13, 'Sierra', '3265', 'La sierra es una herramienta que sirve para cortar madera u otros materiales. Consiste en una hoja con el filo dentado y se maneja a mano o por otras fuentes de energía, como vapor, agua o electricida', 'Las sierras fueron al principio de materiales dentados como el sílex, la obsidiana, las conchas marinas y los dientes de tiburón.1​\r\n\r\nEn el antiguo Egipto, las sierras abiertas (sin marco) hechas de cobre están documentadas ya en el Período Arcaico, alrededor del 3.100-2.686 a. C.2​ En la tumba n.º 3471 se encontraron muchas sierras de cobre que datan del reinado de Djer en el siglo xxxi a. C.', 'fotos/2.jpg', 'fotos/', '2023-10-26 19:23:16', '0000-00-00 00:00:00'),
(14, 'Motosierra', '4656', 'Una sierra mecánica, motosierra, sierra eléctrica o motoserrucho es una máquina formada por un conjunto de dientes de sierra unidos a una cadena accionada por un motor que la hace girar a alta velocid', 'Los motores de motosierra son tradicionalmente un motor de dos tiempos a gasolina de combustión interna (generalmente con un volumen de cilindro de 30 a 120 cm3) o un motor eléctrico accionado por una batería o cable de alimentación eléctrica. En una motosierra de gasolina, el combustible generalmente se suministra al motor por un carburador en la admisión.', 'fotos/ainsaws.jpg', 'fotos/a_RB.jpg', '2023-10-26 19:24:16', '0000-00-00 00:00:00'),
(15, 'Sierra bracera', '1231', 'Sierra bracera, sierra montada o de bastidor1? es la sierra que sirve para espigar y dividir toda especie de maderas.2? Consiste en una hoja relativamente estrecha y flexible montada a tensión dentro ', 'La sierra bracera era el principal recurso para serrar antes de que la desplazasen las sierras rígidas sin marco, las sierras de cinta y las sierras circulares. En antiguos aserraderos se usaba impulsada por una rueda hidráulica u otros dispositivos rotatorios como un cigüeñal con una barra de conexión. Actualmente está en buena parte obsoleta, aunque los carpinteros que no usan herramientas eléctricas aún las fabrican para uso personal.3​', 'fotos/1.jpg', 'fotos/', '2023-10-26 19:25:25', '0000-00-00 00:00:00'),
(16, ' Sierra de mesa', '6578', 'Una sierra de mesa (también conocida como sierra de banco) es una herramienta para trabajar la madera. Consiste en una hoja de sierra circular montada en un eje que es accionada por un motor eléctrico', 'En los Estados Unidos, la primera patente registrada para la Sierra circular se emitió en 1777 a un inglés, Samuel Miller; se refiere a una sierra circular que se creó en Holanda en los siglos XVI o XVII.1​ El catálogo de 1885 de WF & John Barnes Co., Rockford, Il. muestra claramente una sierra de mesa clásica y está etiquetada como una \"Sierra de corte circular manual con motor\".', 'fotos/relyFitz.jpg', 'fotos/ew.PNG', '2023-11-02 19:48:41', '2023-11-02 19:46:32'),
(17, 'Sierra de sable', '6742', 'Una sierra de sable es un tipo de sierra accionada por un mecanismo en el que la acción de corte se logra mediante un movimiento \"alternado\" de la hoja \"de empuje y tracción\". El término se aplica hab', 'Este tipo de sierra, tiene una hoja grande que se asemeja a la de una sierra de vaivén eléctrica y un mango con una orientación que permite utilizar la sierra cómodamente en superficies verticales. El diseño típico de esta sierra tiene una base plana en la zona de corte de la hoja, similar a la de la mencionada sierra. El usuario sujeta o apoya esta base sobre la superficie a cortar de forma que se pueda contrarrestar la tendencia de la máquina a rebotar contra la superficie de corte mien', 'fotos/3.png', 'fotos/', '2023-10-26 19:28:21', '0000-00-00 00:00:00'),
(18, 'jjjj', '2356', '', '', 'fotos/', 'fotos/', '2023-10-26 19:29:09', '0000-00-00 00:00:00'),
(19, 'Bulón', '5315', 'La palabra bulón?1? se utiliza para denominar tornillos de tamaño relativamente grande, con rosca solo en la parte extrema de su cuerpo, utilizados en obras de ingeniería, maquinaria pesada, vías férr', 'Los motores alternativos de combustión interna poseen bulones que se realizan en acero templado mediante forja, aunque hay motores de competición con bielas de titanio o aluminio, realizadas por operaciones de arranque de material.\r\n\r\nOtro ejemplo es en el montaje de grandes elementos como aerogeneradores se utilizan grúas de gran envergadura, los tornillos que unen las secciones mayores a la grúa se hacen llamar bulones y van desde 25 cm de diámetro por 1.5 metros de largo.', 'fotos/m,_1942.jpg', 'fotos/w_diagram.png', '2023-10-26 19:31:26', '0000-00-00 00:00:00'),
(20, 'Remache', '2462', 'Un remache o roblón es un elemento de fijación que se emplea para unir de forma permanente dos o más piezas. Consiste en un tubo cilíndrico (el vástago) que en su fin dispone de una cabeza. Las cabeza', 'Aunque se trata de uno de los métodos de unión más antiguos que hay, hoy en día su importancia como técnica de montaje es mayor que nunca. Esto es debido, en parte, por el desarrollo de técnicas de automatización que consiguen abaratar el proceso de unión. Los campos en los que más se usa el remachado como método de fijación son, entre muchos otros: automotriz, electrodomésticos, muebles, hardware, industria militar, metales laminados, documentos oficiales.', 'fotos/ivet01.jpg', 'fotos/tytyy.PNG', '2023-10-26 19:32:46', '0000-00-00 00:00:00'),
(21, 'CPU', '3255', 'La Unidad Central de Procesamiento, conocida por las siglas en inglés CPU, es el componente fundamental de la computadora, encargado de interpretar y ejecutar instrucciones y de procesar datos.14? En ', 'Un servidor de red o una máquina de cálculo de alto rendimiento (supercomputación), puede tener varios, incluso miles de microprocesadores trabajando simultáneamente o en paralelo (multiprocesamiento); en este caso, todo ese conjunto conforma la CPU de la máquina.\r\n\r\nLas unidades centrales de proceso (CPU) en la forma de un único microprocesador no solo están presentes en las computadoras personales (PC), sino también en otros tipos de dispositivos que incorporan una cierta capacidad de ', 'fotos/1800X.jpg', 'fotos/Clavos.JPG', '2023-10-26 19:34:11', '0000-00-00 00:00:00'),
(22, 'Placa base', '1245', 'La placa base —también conocida como placa madre o principal— es un gran circuito impreso sobre el que se suelda el chipset, las ranuras de expansión (slots), los zócalos, conectores, diversos circuit', 'La tendencia de integración ha hecho que la placa base se convierta en un elemento que incluye a la mayoría de las funciones básicas (vídeo, audio, red, puertos de varios tipos), funciones que antes se realizaban con tarjetas de expansión. Aunque ello no excluye la capacidad de instalar otras tarjetas adicionales específicas, tales como capturadoras de vídeo, tarjetas de adquisición de datos, etc.', 'fotos/óvil.JPG', 'fotos/1800X.jpg', '2023-10-26 19:35:03', '0000-00-00 00:00:00'),
(23, 'Memoria RAM', '4165', 'La sigla RAM, del inglés Random Access Memory, literalmente significa memoria de acceso aleatorio. El término tiene relación con la característica de presentar iguales tiempos de acceso a cualquiera d', 'Las RAM son, comúnmente, memorias volátiles; lo cual significa que pierden rápidamente su contenido al interrumpir su alimentación eléctrica.\r\n\r\nLas más comunes y utilizadas como memoria central son «dinámicas» (DRAM), lo cual significa que tienden a perder sus datos almacenados en breve tiempo (por descarga capacitiva, aun estando con alimentación eléctrica), por ello necesitan un circuito electrónico específico que se encarga de proveerle el llamado «refresco» (de energía) para', 'fotos/Memoria_RAM.JPG', 'fotos/óvil.JPG', '2023-10-26 19:35:41', '0000-00-00 00:00:00'),
(24, ' RAM dinámica', '3456', 'Es la presentación más común en computadores modernos (computador personal, servidor); son tarjetas de circuito impreso que tienen soldados circuitos integrados de memoria por una o ambas caras, ademá', 'Los integrados son de tipo DRAM, memoria denominada «dinámica», en la cual las celdas de memoria son muy sencillas (un transistor y un condensador), permitiendo la fabricación de memorias con gran capacidad (típicamente de 2, 4, 8 o 16 Gigabytes por módulo) a un costo relativamente bajo.\r\n\r\nLas posiciones de memoria o celdas, están organizadas en matrices y almacenan cada una un bit. Para acceder a ellas se han ideado varios métodos y protocolos, cada uno mejorado con el objetivo de acce', 'fotos/RamTypes.JPG', 'fotos/óvil.JPG', '2023-10-26 19:36:30', '0000-00-00 00:00:00'),
(25, 'mause', '4135', 'El ratón o mouse (en inglés pronunciado /ma?s/) es un dispositivo apuntador utilizado para facilitar el manejo de un entorno gráfico en una computadora. casi siempre está fabricado en plástico, y se u', 'Fue diseñado por Douglas Engelbart y Bill English durante los años 1960 en el Stanford Research Institute, un laboratorio de la Universidad Stanford, en pleno Silicon Valley en California. Más tarde fue mejorado en los laboratorios de Palo Alto de la compañía Xerox (conocidos como Xerox PARC). Con su aparición, logró también dar el paso definitivo a la aparición de los primeros entornos o interfaces gráficas de usuario.', 'fotos/3-Tassoft.jpg', 'fotos/aag.jpg', '2023-10-26 19:37:41', '0000-00-00 00:00:00'),
(26, 'Teclado', '1341', 'En informática, un teclado es un dispositivo de entrada, en parte inspirado en el teclado de las máquinas de escribir, que utiliza un sistema de puntadas o márgenes, para que actúen como palancas mecá', 'Además de teletipos y máquinas de escribir eléctricas como la IBM Selectric, los primeros teclados solían ser un terminal de computadora que se comunicaba por puerto serial con la computadora. Además de las normas de teletipo, se diseñó un estándar de comunicación serie, según el tiempo de uso basado en el juego de caracteres ANSI, que hoy sigue presente en las comunicaciones por módem y con impresora (las primeras computadoras carecían de monitor, por lo que solían comunicarse, o b', 'fotos/svg.png', 'fotos/ivet01.jpg', '2023-10-26 19:38:33', '0000-00-00 00:00:00'),
(27, 'Impresora', '3527', 'Una impresora es un dispositivo periférico de salida del ordenador que permite producir una gama permanente de textos o gráficos de documentos almacenados en un formato electrónico, imprimiéndolos en ', 'Además, muchas impresoras modernas permiten la conexión directa de aparatos de multimedia electrónicos como las tarjetas CompactFlash, Secure Digital o Memory Stick, memorias USB, o aparatos de captura de imagen como cámaras digitales y escáneres. También existen aparatos multifunción que constan de impresora, escáner o máquinas de fax en un solo aparato. Una impresora combinada con un escáner puede funcionar básicamente como una fotocopiadora.', 'fotos/10.jpg', 'fotos/3-Tassoft.jpg', '2023-10-26 19:39:38', '0000-00-00 00:00:00'),
(28, 'Monitor de computado', '2456', 'En informática, un monitor, también llamado pantalla, monitor de ordenador y monitor de computadora, es el principal dispositivo de salida (interfaz), que muestra datos o información a todos los usuar', 'Las primeras computadoras se comunicaban con el operador mediante unas pequeñas luces, que se encendían o se apagaban al acceder a determinadas posiciones de memoria o ejecutar ciertas instrucciones.\r\n\r\nAños más tarde aparecieron ordenadores que funcionaban con tarjeta perforada, que permitían introducir programas en el computador. Durante los años 1950, la forma más común de interactuar con un computador era mediante un teletipo, que se conectaba directamente a este e imprimía todos lo', 'fotos/r.jpg', 'fotos/ha.jpg', '2023-10-26 19:40:32', '0000-00-00 00:00:00'),
(29, 'Altavoz', '1567', 'Un altavoz (también conocido como parlante, altoparlante, bocina o corneta, mayormente en América del Sur) es un transductor electroacústico,1? esto es, un dispositivo que convierte una señal eléctric', 'El primer dispositivo que permitió al público en general escuchar música en casa fue el fonógrafo, patentado por Thomas Edison.19 de diciembre de 1877. Le siguió el gramófono inventado por Émile Berliner en 1888, que utilizaba soportes en forma de disco. En estos dos dispositivos, no hay «altavoz» estrictamente hablando: el sonido es emitido por una membrana unida a la aguja que está en contacto con el soporte y solo está amplificado por una bocina.', 'fotos/ocal-Lab.jpg', 'fotos/ew.PNG', '2023-10-26 19:41:22', '0000-00-00 00:00:00'),
(30, 'joystick', '2365', 'Una palanca de mando o joystick (del inglés joy, alegría, y stick, palo)1? es un periférico de entrada que consiste en una palanca que gira sobre una base e informa su ángulo o dirección al dispositiv', 'Las palancas de mando fueron diseñadas como controles para los alerones y el timón de profundidad, y se sabe que se usaron como tales en el avión Blériot VIII de Louis Bleriot en 1908, en combinación con una barra de timón accionada por pedal para la superficie de control de guiñada en la cola.2​\r\n\r\nEl origen del término \"joystick\" no es del todo claro. Se dice que fue usado por el piloto francés Robert Esnault-Pelterie a principios del siglo xx.3​ Otras fuentes dan el crédito a al', 'fotos/s.svg.png', 'fotos/Hammer2.jpg', '2023-10-26 19:42:29', '0000-00-00 00:00:00'),
(31, 'jjjjjjjjjjjjjjjjjjjj', '', '', '', 'fotos/Capt3ura.PNG', 'fotos/', '2023-11-07 07:41:04', '0000-00-00 00:00:00'),
(32, 'Martillo', '0910', 'El martillo es una herramienta de percusión utilizada para golpear directa o indirectamente una pieza, causando su desplazamiento. El uso más común de esta herramienta suele ser para clavar.', 'Los primeros martillos datan de la Edad de Piedra del año 8000 a. C.3​4​ Estos martillos constaban de una piedra atada a un mango con tiras de cuero. Más tarde, en el año 4000 a. C., con el descubrimiento del cobre, los romanos comenzaron a fabricar la cabeza de los martillos en este material. Después, en el año 3500 a. C., durante la Edad del Bronce se fabricaron con este material. Tiempo después aparecieron los martillos con orificios para el mango.', 'fotos/Hammer2.jpg', 'fotos/a_RB.jpg', '2023-11-07 08:18:59', '2023-11-07 08:16:48'),
(33, '1', '1', '1', '1', 'fotos/', 'fotos/', '2023-11-10 22:58:56', '0000-00-00 00:00:00'),
(34, '', '', '', '', 'pg', 'g', '2023-11-11 12:02:38', '0000-00-00 00:00:00'),
(35, 'popo', '', '', '', '', '', '2023-11-11 12:05:54', '0000-00-00 00:00:00'),
(36, '78787', '', '', '', '', '', '2023-11-11 12:16:48', '0000-00-00 00:00:00'),
(37, 'gtgtg', '', '', '', '8.jpeg', 'ura.PNG', '2023-11-13 17:56:37', '0000-00-00 00:00:00');

--
-- Disparadores `objeto`
--
DELIMITER $$
CREATE TRIGGER `tr_actualizacion_date2` AFTER UPDATE ON `objeto` FOR EACH ROW BEGIN
    IF NEW.date2 != OLD.date2 THEN
        INSERT INTO registro_actualizaciones (objeto_id, ubicacion_anterior, date1_anterior, date2_nuevo)
        VALUES (OLD.id, OLD.ubicacion, OLD.date1, NEW.date2);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_actualizaciones`
--

CREATE TABLE `registro_actualizaciones` (
  `id` int(11) NOT NULL,
  `objeto_id` int(11) DEFAULT NULL,
  `ubicacion_anterior` varchar(4) DEFAULT NULL,
  `date1_anterior` datetime DEFAULT NULL,
  `date2_nuevo` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_actualizaciones`
--

INSERT INTO `registro_actualizaciones` (`id`, `objeto_id`, `ubicacion_anterior`, `date1_anterior`, `date2_nuevo`) VALUES
(1, 16, '1467', '2023-10-26 19:27:27', '2023-11-02 19:46:32'),
(2, 1, '1122', '2023-10-26 19:55:53', '2023-11-02 20:05:01'),
(3, 32, '1005', '2023-11-07 07:46:15', '2023-11-07 08:16:48'),
(4, 10, '5425', '2023-10-26 16:57:57', '2023-11-07 08:36:11'),
(5, 1, '1234', '2023-11-10 23:39:32', '2023-11-10 23:39:33'),
(6, 1, '2222', '2023-11-11 11:50:52', '2023-11-11 11:50:54');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `descripcion` (`descripcion`),
  ADD KEY `nombreO` (`nombreO`);

--
-- Indices de la tabla `registro_actualizaciones`
--
ALTER TABLE `registro_actualizaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objeto_id` (`objeto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `objeto`
--
ALTER TABLE `objeto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `registro_actualizaciones`
--
ALTER TABLE `registro_actualizaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registro_actualizaciones`
--
ALTER TABLE `registro_actualizaciones`
  ADD CONSTRAINT `registro_actualizaciones_ibfk_1` FOREIGN KEY (`objeto_id`) REFERENCES `objeto` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
