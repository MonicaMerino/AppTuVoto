-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tuvoto
--

CREATE DATABASE IF NOT EXISTS tuvoto;
USE tuvoto;

--
-- Definition of table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
CREATE TABLE `partidos` (
  `idPartido` varchar(45) character set utf8 NOT NULL,
  `informacion` text character set utf8 NOT NULL,
  `imagen` varchar(200) character set utf8 NOT NULL,
  PRIMARY KEY  (`idPartido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `partidos`
--

/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` (`idPartido`,`informacion`,`imagen`) VALUES 
 ('Ciudadanos','Ciudadanos es un partido político que se enmarca en la tradición constitucional nacida con la Ilustración, la Constitución norteamericana y la Revolución Francesa. Nuestro carácter ilustrado bebe directamente del liberalismo político español que estableció en las Cortes de Cádiz el concepto de Nación como la reunión del conjunto de los españoles, así como su carácter soberano. Una tradición que culmina con la Constitución democrática de 1978, garante de la división de poderes, la soberanía del pueblo español, de los principios de libertad, igualdad, solidaridad y justicia como valores supremos, del pluralismo político y del carácter social, democrático y aconfesional de nuestro Estado de Derecho. En consecuencia, nos definimos como un partido liberal progresista, demócrata y constitucionalista. Reivindicamos una sociedad abierta, libre de ingeniería social, donde los poderes públicos se dediquen a garantizar las libertades y derechos de los ciudadanos mediante el cumplimiento de las leyes democráticas. Una sociedad de ciudadanos libres e iguales que dispongan de las herramientas suficientes para desarrollar su potencial y buscar su felicidad. Para nosotros, en la sociedad abierta del siglo XXI, la libertad y la igualdad constituyen valores esenciales indisociables. Propugnamos la defensa y el avance de las libertades individuales, sin que el lugar de nacimiento, la raza, el género, la orientación sexual, la religión, la opinión o cualquier otra circunstancia personal o social puedan limitarlas. En Ciudadanos creemos que recuperar y mantener la confianza del sistema democrático exige su permanente regeneración. Para ello, es condición esencial la efectiva división de poderes. Así mismo, un sistema electoral más moderno y más justo, la trasparencia y la democracia interna en los partidos políticos, y la libertad de expresión en los medios de comunicación, resultan indispensables en una democracia de calidad. Ciudadanos defiende una España unida y diversa que reconoce su historia, sus lenguas y su cultura como patrimonio de todos, sin hacer de esa riqueza lastre o arma política que ponga en riesgo nuestro futuro juntos.  \r\nCiudadanos es un partido político que se enmarca en la tradición constitucional nacida con la Ilustración, la Constitución norteamericana y la Revolución Francesa. Nuestro carácter ilustrado bebe directamente del liberalismo político español que estableció en las Cortes de Cádiz el concepto de Nación como la reunión del conjunto de los españoles, así como su carácter soberano. Una tradición que culmina con la Constitución democrática de 1978, garante de la división de poderes, la soberanía del pueblo español, de los principios de libertad, igualdad, solidaridad y justicia como valores supremos, del pluralismo político y del carácter social, democrático y aconfesional de nuestro Estado de Derecho. En consecuencia, nos definimos como un partido liberal progresista, demócrata y constitucionalista. Reivindicamos una sociedad abierta, libre de ingeniería social, donde los poderes públicos se dediquen a garantizar las libertades y derechos de los ciudadanos mediante el cumplimiento de las leyes democráticas. Una sociedad de ciudadanos libres e iguales que dispongan de las herramientas suficientes para desarrollar su potencial y buscar su felicidad. Para nosotros, en la sociedad abierta del siglo XXI, la libertad y la igualdad constituyen valores esenciales indisociables. Propugnamos la defensa y el avance de las libertades individuales, sin que el lugar de nacimiento, la raza, el género, la orientación sexual, la religión, la opinión o cualquier otra circunstancia personal o social puedan limitarlas. En Ciudadanos creemos que recuperar y mantener la confianza del sistema democrático exige su permanente regeneración. Para ello, es condición esencial la efectiva división de poderes. Así mismo, un sistema electoral más moderno y más justo, la trasparencia y la democracia interna en los partidos políticos, y la libertad de expresión en los medios de comunicación, resultan indispensables en una democracia de calidad. Ciudadanos defiende una España unida y diversa que reconoce su historia, sus lenguas y su cultura como patrimonio de todos, sin hacer de esa riqueza lastre o arma política que ponga en riesgo nuestro futuro juntos.  \r\n','img/blog/main-blog/m-blog-3.jpg'),
 ('Podemos','En las elecciones del 28 de abril hay tres opciones: cualquiera de los tres partidos de Aznar (PP, Ciudadanos y VOX, que son básicamente lo mismo), el PSOE o Unidas Podemos. Los tres de Aznar quieren llevarnos cuarenta años al pasado en libertades civiles y derechos de las mujeres y comparten idéntico programa económico: aumentar los privilegios fiscales de las grandes corporaciones y las grandes fortunas y seguir machacando a la gente trabajadora. Como es natural, esto genera miedo. Frente a ese miedo, el PSOE representa la reacción más conservadora: mantener lo que hay, no avanzar como país. Cada vez que hay que enfrentarse a las eléctricas, a la banca o a los fondos buitre para defender los derechos de la gente, al PSOE le tiemblan las piernas. La tercera opción el 28 de abril es Unidas Podemos, que, frente al miedo que produce el «trío de Colón», pone encima de la mesa la esperanza de los pensionistas, del 8M y de los jóvenes que alertan sobre el cambio climático y la convierte en la ambición de construir un país mejor. Las personas que sabemos que la mejor manera de frenar a los jinetes de la extrema derecha es blindar derechos y mirar al futuro no nos conformamos con «lo que hay». Tenemos un proyecto de país valiente. Un proyecto de país que confía en nuestro pueblo para afrontar los retos y las oportunidades más importantes de nuestro tiempo y que lo hace cuidando a la gente trabajadora y poniendo la vida en el centro. Este programa que tienes en tus manos dibuja esa España mejor que unos nos quieren robar y que otros no se atreven a construir. Los portavoces mediáticos de los poderosos y sus brazos parlamentarios te dirán por tierra, mar y aire que «no se puede». Es el mantra triste que sus dueños los obligan a repetir. Pero recuerda: hay una fuerza política que tiene las manos libres para cambiar las cosas porque no pide créditos a los bancos y no tiene exministros sentados en los consejos de administración del IBEX 35... y, sobre todo, recuerda que la historia no la escriben ni los medios que son propiedad de los bancos, ni los tertulianos, ni las cloacas ni las encuestas. La historia la escribes tú.\r\nEn las elecciones del 28 de abril hay tres opciones: cualquiera de los tres partidos de Aznar (PP, Ciudadanos y VOX, que son básicamente lo mismo), el PSOE o Unidas Podemos. Los tres de Aznar quieren llevarnos cuarenta años al pasado en libertades civiles y derechos de las mujeres y comparten idéntico programa económico: aumentar los privilegios fiscales de las grandes corporaciones y las grandes fortunas y seguir machacando a la gente trabajadora. Como es natural, esto genera miedo. Frente a ese miedo, el PSOE representa la reacción más conservadora: mantener lo que hay, no avanzar como país. Cada vez que hay que enfrentarse a las eléctricas, a la banca o a los fondos buitre para defender los derechos de la gente, al PSOE le tiemblan las piernas. La tercera opción el 28 de abril es Unidas Podemos, que, frente al miedo que produce el «trío de Colón», pone encima de la mesa la esperanza de los pensionistas, del 8M y de los jóvenes que alertan sobre el cambio climático y la convierte en la ambición de construir un país mejor. Las personas que sabemos que la mejor manera de frenar a los jinetes de la extrema derecha es blindar derechos y mirar al futuro no nos conformamos con «lo que hay». Tenemos un proyecto de país valiente. Un proyecto de país que confía en nuestro pueblo para afrontar los retos y las oportunidades más importantes de nuestro tiempo y que lo hace cuidando a la gente trabajadora y poniendo la vida en el centro. Este programa que tienes en tus manos dibuja esa España mejor que unos nos quieren robar y que otros no se atreven a construir. Los portavoces mediáticos de los poderosos y sus brazos parlamentarios te dirán por tierra, mar y aire que «no se puede». Es el mantra triste que sus dueños los obligan a repetir. Pero recuerda: hay una fuerza política que tiene las manos libres para cambiar las cosas porque no pide créditos a los bancos y no tiene exministros sentados en los consejos de administración del IBEX 35... y, sobre todo, recuerda que la historia no la escriben ni los medios que son propiedad de los bancos, ni los tertulianos, ni las cloacas ni las encuestas. La historia la escribes tú.\r\n','img/blog/main-blog/m-blog-5.jpg'),
 ('PP','Las próximas elecciones van a ser decisivas para España. La moción de censura contra el Gobierno del PP provocó un cambio haciendo Presidente a quien ha demostrado no tener más proyecto que el de pactar con populistas y secesionistas poniendo en riesgo la unidad y la igualdad de todos los españoles solo por garantizarse el ejercicio del poder. Desde el Partido Popular hemos denunciado con determinación su política de cesiones humillantes, como fue el aceptar un relator y hemos presentado nuestra alternativa a través del Congreso y del Senado demostrando que estamos preparados para gobernar. Además, hemos liderado una oposición responsable, cercana al ciudadano y basada en continuar planteando propuestas para mejorar el bienestar de los españoles. Concurrimos a estas elecciones asumiendo plenamente el mandato que dio la “España de los balcones”. Por eso presentamos un programa que manifiesta que frente al secesionismo solo cabe la aplicación de la ley, la fortaleza del Estado de Derecho y la utilización de los mecanismos constitucionales que nos dimos entre todos. El Partido Popular desea convocar a una sólida y amplia mayoría de españoles en torno a una propuesta de cambio, modernización, reformas y regeneración. Un programa que no pretende decir a los españoles qué tienen que hacer con sus vidas sino que desea acompañarles en sus proyectos. Un programa hecho desde unos valores que rompen con el pesimismo de la izquierda y permiten recuperar la confianza en que las nuevas generaciones vivirán mejor que quienes las precedieron. \r\nLas próximas elecciones van a ser decisivas para España. La moción de censura contra el Gobierno del PP provocó un cambio haciendo Presidente a quien ha demostrado no tener más proyecto que el de pactar con populistas y secesionistas poniendo en riesgo la unidad y la igualdad de todos los españoles solo por garantizarse el ejercicio del poder. Desde el Partido Popular hemos denunciado con determinación su política de cesiones humillantes, como fue el aceptar un relator y hemos presentado nuestra alternativa a través del Congreso y del Senado demostrando que estamos preparados para gobernar. Además, hemos liderado una oposición responsable, cercana al ciudadano y basada en continuar planteando propuestas para mejorar el bienestar de los españoles. Concurrimos a estas elecciones asumiendo plenamente el mandato que dio la “España de los balcones”. Por eso presentamos un programa que manifiesta que frente al secesionismo solo cabe la aplicación de la ley, la fortaleza del Estado de Derecho y la utilización de los mecanismos constitucionales que nos dimos entre todos. El Partido Popular desea convocar a una sólida y amplia mayoría de españoles en torno a una propuesta de cambio, modernización, reformas y regeneración. Un programa que no pretende decir a los españoles qué tienen que hacer con sus vidas sino que desea acompañarles en sus proyectos. Un programa hecho desde unos valores que rompen con el pesimismo de la izquierda y permiten recuperar la confianza en que las nuevas generaciones vivirán mejor que quienes las precedieron. \r\n','img/blog/main-blog/m-blog-1.jpg'),
 ('PSOE','Somos un partido de progreso al servicio de la ciudadanía, abierto a la participación de hombres y mujeres que expresan sus ideas, sus preocupaciones y que buscan soluciones. Somos un partido transparente, abierto a los cambios, a la evolución y a la innovación. Que cree y practica otra forma de hacer política: la que se entiende, la que es participativa, la que es próxima a los ciudadanos y las ciudadanas, sensible a sus problemas y deseos. Un Partido que aborda los problemas complejos de una sociedad cambiante como la que vivimos, buscando soluciones que hagan efectivos los principios de: libertad para que toda persona pueda llevar a cabo su proyecto personal de vida; igualdad de condiciones para que todas las personas puedan desarrollar sus capacidades y potencialidades; y solidaridad para que todas las personas tengan aseguradas sus necesidades básicas.\r\nSomos un partido de progreso al servicio de la ciudadanía, abierto a la participación de hombres y mujeres que expresan sus ideas, sus preocupaciones y que buscan soluciones. Somos un partido transparente, abierto a los cambios, a la evolución y a la innovación. Que cree y practica otra forma de hacer política: la que se entiende, la que es participativa, la que es próxima a los ciudadanos y las ciudadanas, sensible a sus problemas y deseos. Un Partido que aborda los problemas complejos de una sociedad cambiante como la que vivimos, buscando soluciones que hagan efectivos los principios de: libertad para que toda persona pueda llevar a cabo su proyecto personal de vida; igualdad de condiciones para que todas las personas puedan desarrollar sus capacidades y potencialidades; y solidaridad para que todas las personas tengan aseguradas sus necesidades básicas.\r\n','img/blog/main-blog/m-blog-2.jpg'),
 ('VOX','España atraviesa una crisis múltiple y profunda de carácter sistémico que afecta a su economía, a sus instituciones, a su unidad nacional y a su moral colectiva. España no se puede permitir una quiebra de la confianza en sus representantes elegidos y en sus gobernantes de la magnitud de la que padecemos, con centenares de procedimientos judiciales abiertos mientras se extiende la sensación de que tan reprobables comportamientos quedan impunes en una alarmante proporción. El descrédito de las cúpulas dirigentes de la mayoría de fuerzas del arco parlamentario daña seriamente nuestras instituciones y deteriora peligrosamente nuestra democracia. Es urgente una reacción vigorosa de la sociedad civil que fortalezca nuestra estructura política y abra paso a un cambio profundo de nuestra perspectiva ética. Hemos de guiarnos por valores fuertes que nos sitúen en el mundo con capacidad de competir con éxito y de ser respetados. España no ha de ser percibida como un problema a resolver, sino como un ejemplo a imitar. Un enfoque meramente economicista de nuestras dificultades es insuficiente y nos lleva al fracaso. Si las ideas que nos conducen son equivocadas, si las concepciones morales que nos inspiran son débiles, nunca conseguiremos volver a la senda del crecimiento material. Es imposible diseñar una política económica eficaz sin el impulso de principios sólidos. Son el esfuerzo, la perseverancia, la cohesión, el altruismo, la búsqueda de la excelencia, el reconocimiento del mérito, la honradez y el patriotismo los que crean los puestos de trabajo y traen la prosperidad. No hay nación en el mundo que pueda soportar indefinidamente que su Constitución sea continuamente ignorada o despreciada. Un sistema político que pone al Gobierno a merced de fuerzas cuyo propósito explícito es liquidar la unidad nacional no es viable y debe ser reformado. Partidos de ámbito nacional que prefieren aliarse con los que trabajan para destruir la nación en vez de cerrar filas para preservarla, no merecen la confianza de los ciudadanos y deben ser sustituidos por nuevas opciones que estén dispuestas a poner las libertades y derechos de los españoles por encima de su interés parcial y egoísta. El Estado de las Autonomías no ha cumplido los fines para los que fue concebido y su coste ha alcanzado proporciones alarmantes. La descentralización política, que se ha llevado a extremos dudosamente compatibles con la Constitución, lejos de apaciguar la cuestión nacionalista en Cataluña y en el País Vasco, ha agudizado las tensiones centrífugas y ha puesto a España al borde de la desintegración. Nuestro Estado autonómico es políticamente inmanejable y financieramente insostenible. En el terreno de la calidad de nuestra democracia, el Estado constitucional ha degenerado en Estado de partidos. El vínculo entre representantes y representados es casi inexistente y las listas cerradas y bloqueadas, elaboradas por las cúpulas partidarias, deterioran visiblemente la participación de los ciudadanos en los asuntos públicos y el control de los gobernantes por los gobernados. Un grupo reducido, cooptado y oligárquico de dirigentes de partido maneja a su arbitrio el Estado. La separación de poderes, base de la democracia constitucional, está seriamente dañada. La politización de la Justicia es escandalosa y los dos grandes partidos coinciden en su voluntad de mantenerla. Los sucesivos cambios de Gobierno no han modificado este decepcionante panorama, sino que lo han agravado, siempre en la dirección del debilitamiento de la cohesión nacional, de la invasión de las instituciones y de la sociedad civil por los partidos y del aumento de la corrupción. VOX considera que ha sonado la hora de emprender una reforma profunda de carácter estructural que afronte de verdad los defectos de un sistema político, jurídico, institucional y económico que está irreversiblemente agotado. \r\nEspaña atraviesa una crisis múltiple y profunda de carácter sistémico que afecta a su economía, a sus instituciones, a su unidad nacional y a su moral colectiva. España no se puede permitir una quiebra de la confianza en sus representantes elegidos y en sus gobernantes de la magnitud de la que padecemos, con centenares de procedimientos judiciales abiertos mientras se extiende la sensación de que tan reprobables comportamientos quedan impunes en una alarmante proporción. El descrédito de las cúpulas dirigentes de la mayoría de fuerzas del arco parlamentario daña seriamente nuestras instituciones y deteriora peligrosamente nuestra democracia. Es urgente una reacción vigorosa de la sociedad civil que fortalezca nuestra estructura política y abra paso a un cambio profundo de nuestra perspectiva ética. Hemos de guiarnos por valores fuertes que nos sitúen en el mundo con capacidad de competir con éxito y de ser respetados. España no ha de ser percibida como un problema a resolver, sino como un ejemplo a imitar. Un enfoque meramente economicista de nuestras dificultades es insuficiente y nos lleva al fracaso. Si las ideas que nos conducen son equivocadas, si las concepciones morales que nos inspiran son débiles, nunca conseguiremos volver a la senda del crecimiento material. Es imposible diseñar una política económica eficaz sin el impulso de principios sólidos. Son el esfuerzo, la perseverancia, la cohesión, el altruismo, la búsqueda de la excelencia, el reconocimiento del mérito, la honradez y el patriotismo los que crean los puestos de trabajo y traen la prosperidad. No hay nación en el mundo que pueda soportar indefinidamente que su Constitución sea continuamente ignorada o despreciada. Un sistema político que pone al Gobierno a merced de fuerzas cuyo propósito explícito es liquidar la unidad nacional no es viable y debe ser reformado. Partidos de ámbito nacional que prefieren aliarse con los que trabajan para destruir la nación en vez de cerrar filas para preservarla, no merecen la confianza de los ciudadanos y deben ser sustituidos por nuevas opciones que estén dispuestas a poner las libertades y derechos de los españoles por encima de su interés parcial y egoísta. El Estado de las Autonomías no ha cumplido los fines para los que fue concebido y su coste ha alcanzado proporciones alarmantes. La descentralización política, que se ha llevado a extremos dudosamente compatibles con la Constitución, lejos de apaciguar la cuestión nacionalista en Cataluña y en el País Vasco, ha agudizado las tensiones centrífugas y ha puesto a España al borde de la desintegración. Nuestro Estado autonómico es políticamente inmanejable y financieramente insostenible. En el terreno de la calidad de nuestra democracia, el Estado constitucional ha degenerado en Estado de partidos. El vínculo entre representantes y representados es casi inexistente y las listas cerradas y bloqueadas, elaboradas por las cúpulas partidarias, deterioran visiblemente la participación de los ciudadanos en los asuntos públicos y el control de los gobernantes por los gobernados. Un grupo reducido, cooptado y oligárquico de dirigentes de partido maneja a su arbitrio el Estado. La separación de poderes, base de la democracia constitucional, está seriamente dañada. La politización de la Justicia es escandalosa y los dos grandes partidos coinciden en su voluntad de mantenerla. Los sucesivos cambios de Gobierno no han modificado este decepcionante panorama, sino que lo han agravado, siempre en la dirección del debilitamiento de la cohesión nacional, de la invasión de las instituciones y de la sociedad civil por los partidos y del aumento de la corrupción. VOX considera que ha sonado la hora de emprender una reforma profunda de carácter estructural que afronte de verdad los defectos de un sistema político, jurídico, institucional y económico que está irreversiblemente agotado. \r\n','img/blog/main-blog/m-blog-4.jpg'),
 ('Yipi','Somos un partido nuevo, basado en la risa. Sorprendemos a quien nos vota, animamos a la gente cuando lo necesita y asustamos a los aburridos. Votar a YIPI es votar un mundo mejor. Una vez que nos conozcas no vas a olvidarte de nosotros. YIPIII!!!','img/blog/main-blog/m-blog-6.jpg');
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;


--
-- Definition of table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `identificador` varchar(45) NOT NULL,
  `idUsuario` varchar(45) NOT NULL,
  `provincia` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`nombre`,`apellidos`,`identificador`,`idUsuario`,`provincia`,`ciudad`,`email`,`password`) VALUES 
 ('Yipi','Yipiyei','DNI','0','Madrid','Madrid','yipi%40gmail.com','hNiYd/DUBB77a/kaFvAkjy/Vc+avBcGflr7bn4gveII='),
 ('Pedro','del Real','NIE','0187989K','Madrid','Alcalá de Henares','pedro@gmail.com','Gp33xTlUHN2YrxSD/lkmq4aOLL6cuoZrnYWaufyTcjw='),
 ('Carolina','Pérez','NIE','02457822C','Zaragoza','Zaragoza','carolinap@outlook.es','dAZLHsfk8TC8bt7BQs5n4GUEIjHmTbdglLxYaHudnFI='),
 ('Susana','Camacho','NIE','02477722C','Albacete','Albacete','susilamejor@outlook.es','XncGGpuVWsA9mldKimjYpYAFlJ+k/dPZ4429JjAo/+g='),
 ('Antonio','Merino','DNI','02589625','Barcelona','Molins de Rey','antua2921@gmail.com','TgdAhWK+24tgzgXB3s/jrRa3IjCWfeAfZAt+Rym0n84='),
 ('Ana Maria','Sabia','NIE','0888888M','Bilbao','Bilbao','anamari@outlook.es','0X8l7PvMeFf3vr6kaTCL4LJYCUPpbROjrZihNnXEv8I='),
 ('Maria','Puente','DNI','118012G','Cantabria','Santander','marialapuente@gmail.com','mAEL2ScPmxALYhSiF1T9M73I1BsryfndFv9U08NP/XE='),
 ('Diego','Forero','DNI','123','Madrid','Madrid','diegoft87@gmail.com','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s='),
 ('vanessa','armesto','DNI','1233','Madrid','Madrid','vanessa@camalsd.com','Pkp2X4u9oOZx4KMDGkQPUlk9Kr3z1mAoYr24IkRE/N0='),
 ('Teresa','Del Real','DNI','20561248','Madrid','Madrid','teresa@gmail.com','1HNeOiZeFu7gP1lxi5tdAwGcB9i2xR+Q2jpmbuwTqzU='),
 ('Lucia','Amarillo','NIE','254879877N','Madrid','Alcalá de Henares','luciall12@gmail.com','Vpx/C0HOlklgKgIYzQLtCwo9kxMDKUUcx4K339p5znE='),
 ('yipi','yipiyei','DNI','44444','Leon','Leon','yipi@hotmail.com','7XcGYsJ1dq5uIuq4LEeYWJxmlfXOwl6OzUyp2oN/olA='),
 ('Monica','Forero','DNI','444444444J','Casablanca','Navalmoral','mamen@hotmail.es','7XcGYsJ1dq5uIuq4LEeYWJxmlfXOwl6OzUyp2oN/olA='),
 ('Eduardo','Heraldo','NIE','4444447C','Madrid','Alcorcon','edu@gmail.com','ADOCQ6adg0D0xvxaAnwZ9nyQC++XjepkPtsX4xiDfao='),
 ('Marcos','Sabio','DNI','4444C','Tarragona','Tarragona','marcos@gmail.com','LGJCMs3SIXcSlN+7MQrKAAoN9qyLZraW2Q7wb977ZKM='),
 ('Laura','Garcia','DNI','45699666C','Barcelona','Barcelona','laura@gmail.com','7ZaOhA0Q0tMTqHC8ExpOLDEdetCb3zKzQYFHIh9RpuI='),
 ('Alice','Ruiz','DNI','45789645G','Avila','Navalmoral','alice@outlook.es','gReGrRrnSt/dIN0Dcquq68YkbjQ669AdoL/EwCvwEGw='),
 ('Rocio','Merino del Real','NIE','45789C','Cáceres','Cáceres','royadri@gmail.com','LGJCMs3SIXcSlN+7MQrKAAoN9qyLZraW2Q7wb977ZKM='),
 ('Melania','Alondra','NIE','4859765x','Segovia','Segovia','melania@gmail.com','x3Xnt1ft5jDNCqERO9ECZhqziCnKUqZCKreChi8mhkY='),
 ('Adrian','Merino','NIE','48597989X','Madrid','Torrejón de Ardoz','adriangtml@outlook.es','lu5Z3wtYjT0MJALmv29RQD6UMyptpZJMOgh/kmWapE4='),
 ('Adriana','Paiz','DNI','48755555L','Leon','Astorga','adri.p@gmail.es','6vidtxCEcNw/ayPqkGGCZLPo+LYUU3FmfEBV6cXOn1I='),
 ('Marcos','Muñoz','DNI','52003561d','Madrid','Madrid','marcos.munozru@gmail.com','A6xnQhbz4Vx2HuGl4lXwZ5U2I8iziLRFnhP5eNfIRvQ='),
 ('Monica','Merino del Real','DNI','53673409B','Madrid','Alcalá de Henares','monica.merino%40outlook.es','BEvcEsGVXDJ2zsriXRgqUIJoB19nCwxaAm+thqbuea4='),
 ('Rocio','Perino','DNI','58964521K','Catiñeida','Segovia','hhhh@gmil.es','oPsJLFMCAzXrfMiSFgwOQtLteXRYvKwUyWOuCyh+PkM='),
 ('Vicenta','Peinado','DNI','66666K','Barcelona','Barcelona','vicenta@gmail.com','kXU5v+by5RJ3d0VSFTUBDD/zya02wwAq9ariPc4K+GQ='),
 ('anamaria','Sanchez','DNI','77777777d','Sevilla','Sevilla','anamaria@gmail.com','CpyTt1XX2Fs/RIbG6sLPAOJf9fdSJivlvaIIXhhApwU='),
 ('Ana','Zaragoza','DNI','78777777y','Leon','Leon','anaanita@hotmail.es','qIp5AstO9pe6C2dZxQ6MECl/9Y+UIkPeGbmEhBv+H3M='),
 ('Alberto Luis','Aldonza','NIE','789456C','Navarredondilla','Avila','alberto@gmail.com','OZuLtWve5NU0QTQiGh9Ok/5YyaSbRx6072LzGMU3zGg='),
 ('Lorena','Amancio','DNI','888888888d','Barraco','Avila','lorena@gmail.com','c3znVrCzFGlaTi0C8SQqbWSY7UVbL8+xhw8Qk79PlBY='),
 ('Miriam','Rodriguez','DNI','88888888G','Badajoz','Merida','m.paiz@gmail.com','XpaM5HzkoX44I8KTMqOdBJqNCvsI0VfrYiRiX5JnGlE='),
 ('Almudena','Navarro','DNI','89754812G','Granada','Granada','almudena@gmail.com','AiwuQquu5xUMEAONbiDYmBfLZ1bZQmVIJl+5yma3fvI='),
 ('Ana','Mato','NIE','x15478111N','Madrid','Madrid','lamas@gmail.com','QcmR62pmJCwEVBkSRCeBg85Yz0przTcveZ5LnMAYhq8='),
 ('Juan Manuel','Lopez','NIE','X5268974','Avila','Navalmoral','j.m.c1987@gmail.com','wC2OYhHvfcWvQghcuzI6Eit2kFrAmEZ+ofhUZewUQp0=');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;


--
-- Definition of table `votos`
--

DROP TABLE IF EXISTS `votos`;
CREATE TABLE `votos` (
  `idVoto` int(10) unsigned NOT NULL auto_increment,
  `idUsuario` varchar(45) NOT NULL,
  `idPartido` varchar(45) NOT NULL,
  PRIMARY KEY  (`idVoto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votos`
--

/*!40000 ALTER TABLE `votos` DISABLE KEYS */;
INSERT INTO `votos` (`idVoto`,`idUsuario`,`idPartido`) VALUES 
 (1,'53673409B','Ciudadanos'),
 (6,'123','PP'),
 (7,'20561248','Ciudadanos'),
 (8,'02589625','Podemos'),
 (9,'4444C','VOX'),
 (10,'44','PP'),
 (11,'45789C','PSOE'),
 (12,'66666K','Ciudadanos'),
 (23,'1233','VOX'),
 (24,'44444','PSOE'),
 (25,'77777777d','Ciudadanos'),
 (26,'4444447C','VOX'),
 (27,'89754812G','yipi'),
 (28,'78787878B','Yipi'),
 (29,'789456C','Yipi'),
 (30,'888888888d','Yipi');
/*!40000 ALTER TABLE `votos` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
