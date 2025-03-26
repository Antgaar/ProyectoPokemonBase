CREATE TABLE objeto(
	id_objeto INTEGER,
	nom_objeto VARCHAR(50),
	ataque INTEGER,
	at_especial INTEGER,
	defensa INTEGER,
	def_especial INTEGER,
	velocidad INTEGER,
	precio INTEGER
);

CREATE TABLE movimiento (
	id_movimiento INTEGER,
	nom_movimiento VARCHAR(20) CONSTRAINT nom_movimiento_NN NOT NULL,
	tipo VARCHAR(20),
	clase VARCHAR(20),
	nivel_aprendizaje INTEGER CONSTRAINT nivel_aprendizaje_NN NOT NULL,
	pp_max NUMBER(2),
	precision NUMBER(3)
	potencia INTEGER,
	estado VARCHAR(20),
	turnos INTEGER,
	mejora VARCHAR(20),
	nivel_de_mejora NUMBER(1),
	objetivo NUMBER(1)
);


CREATE TABLE movimiento_pokemon (
	id_pokemon INTEGER,
	id_movimiento INTEGER,
	pp_actuales INTEGER CONSTRAINT pp_actuales_NN NOT NULL
);

CREATE TABLE mochila(
	id_entrenador INTEGER,
	id_objeto INTEGER,
	cantidad INTEGER CONSTRAINT cantidad_NN NOT NULL
);

CREATE TABLE pokedex(
	num_pokedex INTEGER,
	nom_pokedex VARCHAR(20) CONSTRAINT nom_pokedex_NN NOT NULL,
	img_frontal VARCHAR(100) CONSTRAINT img_frontal_NN NOT NULL,
	img_trasera VARCHAR(100) CONSTRAINT img_trasera_NN NOT NULL,
	sonido VARCHAR(100) CONSTRAINT sonido_is_NN NOT NULL,
	nivel_evolucion INTEGER,
	tipo1 VARCHAR(20) CONSTRAINT tipo1_is_NN NOT NULL,
	tipo2 VARCHAR(20)
);

CREATE TABLE pokemon(
	id_pokemon INTEGER,
	id_entrenador INTEGER,
	num_pokedex INTEGER,
	mote VARCHAR(20),
	vitalidad INTEGER CONSTRAINT vitalidad_NN NOT NULL,
	vitalidad_restante INTEGER CONSTRAINT vitalidad_r_NN NOT NULL,
	ataque INTEGER CONSTRAINT ataque_NN NOT NULL,
	defensa INTEGER CONSTRAINT defensa_NN NOT NULL,
	at_especial INTEGER CONSTRAINT at_especial_NN NOT NULL,
	def_especial INTEGER CONSTRAINT def_especial_NN NOT NULL,
	velocidad INTEGER CONSTRAINT velocidad_NN NOT NULL,
	nivel INTEGER CONSTRAINT nivel_NN NOT NULL,
	fertilidad INTEGER DEFAULT 5,
	SEXO CHAR(1),
	estado VARCHAR(20),
	equipo INTEGER
);

CREATE TABLE entrenador(
	id_entrenador INTEGER,
	usuario VARCHAR(20) CONSTRAINT usuario_NN NOT NULL,
	pass VARCHAR(20) CONSTRAINT pass_NN NOT NULL,
	pokedolares INTEGER DEFAULT 1000,
	CONSTRAINT usuario_is_UNIQUE UNIQUE (usuario)
);

INSERT INTO pokedex VALUES(1, 'Bulbasaur', '1.gif', '1.gif', 'cries_pokemon_legacy_1.ogg', 16, 'planta', 'planta');
INSERT INTO pokedex VALUES(2, 'Ivysaur', '2.gif', '2.gif', 'cries_pokemon_legacy_2.ogg', 32, 'planta', 'planta');
INSERT INTO pokedex VALUES(3, 'Venusaur', '3.gif', '3.gif', 'cries_pokemon_legacy_3.ogg', NULL, 'planta', 'planta');
INSERT INTO pokedex VALUES(4, 'Charmander', '4.gif', '4.gif', 'cries_pokemon_legacy_4.ogg', 16, 'fuego', NULL);
INSERT INTO pokedex VALUES(5, 'Charmeleon', '5.gif', '5.gif', 'cries_pokemon_legacy_5.ogg', 36, 'fuego', NULL);
INSERT INTO pokedex VALUES(6, 'Charizard', '6.gif', '6.gif', 'cries_pokemon_legacy_6.ogg', NULL, 'fuego', 'volador');
INSERT INTO pokedex VALUES(7, 'Squirtle', '7.gif', '7.gif', 'cries_pokemon_legacy_7.ogg', 16, 'agua', NULL);
INSERT INTO pokedex VALUES(8, 'Wartortle', '8.gif', '8.gif', 'cries_pokemon_legacy_8.ogg', 36, 'agua', NULL);
INSERT INTO pokedex VALUES(9, 'Blastoise', '9.gif', '9.gif', 'cries_pokemon_legacy_9.ogg', NULL, 'agua', NULL);
INSERT INTO pokedex VALUES(10, 'Caterpie', '10.gif', '10.gif', 'cries_pokemon_legacy_10.ogg', 7, 'bicho', NULL);
INSERT INTO pokedex VALUES(11, 'Metapod', '11.gif', '11.gif', 'cries_pokemon_legacy_11.ogg', 10, 'bicho', NULL);
INSERT INTO pokedex VALUES(12, 'Butterfree', '12.gif', '12.gif', 'cries_pokemon_legacy_12.ogg', NULL, 'bicho', 'volador');
INSERT INTO pokedex VALUES(13, 'Weedle', '13.gif', '13.gif', 'cries_pokemon_legacy_13.ogg', 7, 'bicho', 'veneno');
INSERT INTO pokedex VALUES(14, 'Kakuna', '14.gif', '14.gif', 'cries_pokemon_legacy_14.ogg', 10, 'bicho', 'veneno');
INSERT INTO pokedex VALUES(15, 'Beedrill', '15.gif', '15.gif', 'cries_pokemon_legacy_15.ogg', NULL, 'bicho', 'veneno');
INSERT INTO pokedex VALUES(16, 'Pidgey', '16.gif', '16.gif', 'cries_pokemon_legacy_16.ogg', 18, 'normal', 'volador');
INSERT INTO pokedex VALUES(17, 'Pidgeotto', '17.gif', '17.gif', 'cries_pokemon_legacy_17.ogg', 36, 'normal', 'volador');
INSERT INTO pokedex VALUES(18, 'Pidgeot', '18.gif', '18.gif', 'cries_pokemon_legacy_18.ogg', NULL, 'normal', 'volador');
INSERT INTO pokedex VALUES(19, 'Rattata', '19.gif', '19.gif', 'cries_pokemon_legacy_19.ogg', 20, 'normal', NULL);
INSERT INTO pokedex VALUES(20, 'Raticate', '20.gif', '20.gif', 'cries_pokemon_legacy_20.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(21, 'Spearow', '21.gif', '21.gif', 'cries_pokemon_legacy_21.ogg', 20, 'normal', 'volador');
INSERT INTO pokedex VALUES(22, 'Fearow', '22.gif', '22.gif', 'cries_pokemon_legacy_22.ogg', NULL, 'normal', 'volador');
INSERT INTO pokedex VALUES(23, 'Ekans', '23.gif', '23.gif', 'cries_pokemon_legacy_23.ogg', 22, 'veneno', NULL);
INSERT INTO pokedex VALUES(24, 'Arbok', '24.gif', '24.gif', 'cries_pokemon_legacy_24.ogg', NULL, 'veneno', NULL);
INSERT INTO pokedex VALUES(25, 'Pikachu', '25.gif', '25.gif', 'cries_pokemon_legacy_25.ogg', 36, 'electrico', NULL);
INSERT INTO pokedex VALUES(26, 'Raichu', '26.gif', '26.gif', 'cries_pokemon_legacy_26.ogg', NULL, 'electrico', NULL);
INSERT INTO pokedex VALUES(27, 'Sandshrew', '27.gif', '27.gif', 'cries_pokemon_legacy_27.ogg', 22, 'tierra', NULL);
INSERT INTO pokedex VALUES(28, 'Sandslash', '28.gif', '28.gif', 'cries_pokemon_legacy_28.ogg', NULL, 'tierra', NULL);
INSERT INTO pokedex VALUES(29, 'Nidoran♀', '29.gif', '29.gif', 'cries_pokemon_legacy_29.ogg', 16, 'veneno', NULL);
INSERT INTO pokedex VALUES(30, 'Nidorina', '30.gif', '30.gif', 'cries_pokemon_legacy_30.ogg', 36, 'veneno', NULL);
INSERT INTO pokedex VALUES(31, 'Nidoqueen', '31.gif', '31.gif', 'cries_pokemon_legacy_31.ogg', NULL, 'veneno', 'tierra');
INSERT INTO pokedex VALUES(32, 'Nidoran♂', '32.gif', '32.gif', 'cries_pokemon_legacy_32.ogg', 16, 'veneno', NULL);
INSERT INTO pokedex VALUES(33, 'Nidorino', '33.gif', '33.gif', 'cries_pokemon_legacy_33.ogg', 36, 'veneno', NULL);
INSERT INTO pokedex VALUES(34, 'Nidoking', '34.gif', '34.gif', 'cries_pokemon_legacy_34.ogg', NULL, 'veneno', 'tierra');
INSERT INTO pokedex VALUES(35, 'Clefairy', '35.gif', '35.gif', 'cries_pokemon_legacy_35.ogg', 36, 'normal', NULL);
INSERT INTO pokedex VALUES(36, 'Clefable', '36.gif', '36.gif', 'cries_pokemon_legacy_36.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(37, 'Vulpix', '37.gif', '37.gif', 'cries_pokemon_legacy_37.ogg', 36, 'fuego', NULL);
INSERT INTO pokedex VALUES(38, 'Ninetales', '38.gif', '38.gif', 'cries_pokemon_legacy_38.ogg', NULL, 'fuego', NULL);
INSERT INTO pokedex VALUES(39, 'Jigglypuff', '39.gif', '39.gif', 'cries_pokemon_legacy_39.ogg', 36, 'normal', NULL);
INSERT INTO pokedex VALUES(40, 'Wigglytuff', '40.gif', '40.gif', 'cries_pokemon_legacy_40.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(41, 'Zubat', '41.gif', '41.gif', 'cries_pokemon_legacy_41.ogg', 22, 'veneno', 'volador');
INSERT INTO pokedex VALUES(42, 'Golbat', '42.gif', '42.gif', 'cries_pokemon_legacy_42.ogg', NULL, 'veneno', 'volador');
INSERT INTO pokedex VALUES(43, 'Oddish', '43.gif', '43.gif', 'cries_pokemon_legacy_43.ogg', 21, 'planta', 'veneno');
INSERT INTO pokedex VALUES(44, 'Gloom', '44.gif', '44.gif', 'cries_pokemon_legacy_44.ogg', 36, 'planta', 'veneno');
INSERT INTO pokedex VALUES(45, 'Vileplume', '45.gif', '45.gif', 'cries_pokemon_legacy_45.ogg', NULL, 'planta', 'veneno');
INSERT INTO pokedex VALUES(46, 'Paras', '46.gif', '46.gif', 'cries_pokemon_legacy_46.ogg', 24, 'bicho', 'planta');
INSERT INTO pokedex VALUES(47, 'Parasect', '47.gif', '47.gif', 'cries_pokemon_legacy_47.ogg', NULL, 'bicho', 'planta');
INSERT INTO pokedex VALUES(48, 'Venonat', '48.gif', '48.gif', 'cries_pokemon_legacy_48.ogg', 31, 'bicho', 'veneno');
INSERT INTO pokedex VALUES(49, 'Venomoth', '49.gif', '49.gif', 'cries_pokemon_legacy_49.ogg', NULL, 'bicho', 'veneno');
INSERT INTO pokedex VALUES(50, 'Diglett', '50.gif', '50.gif', 'cries_pokemon_legacy_50.ogg', 26, 'tierra', NULL);
INSERT INTO pokedex VALUES(51, 'Dugtrio', '51.gif', '51.gif', 'cries_pokemon_legacy_51.ogg', NULL, 'tierra', NULL);
INSERT INTO pokedex VALUES(52, 'Meowth', '52.gif', '52.gif', 'cries_pokemon_legacy_52.ogg', 28, 'normal', NULL);
INSERT INTO pokedex VALUES(53, 'Persian', '53.gif', '53.gif', 'cries_pokemon_legacy_53.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(54, 'Psyduck', '54.gif', '54.gif', 'cries_pokemon_legacy_54.ogg', 33, 'agua', NULL);
INSERT INTO pokedex VALUES(55, 'Golduck', '55.gif', '55.gif', 'cries_pokemon_legacy_55.ogg', NULL, 'agua', NULL);
INSERT INTO pokedex VALUES(56, 'Mankey', '56.gif', '56.gif', 'cries_pokemon_legacy_56.ogg', 28, 'lucha', NULL);
INSERT INTO pokedex VALUES(57, 'Primeape', '57.gif', '57.gif', 'cries_pokemon_legacy_57.ogg', NULL, 'lucha', NULL);
INSERT INTO pokedex VALUES(58, 'Growlithe', '58.gif', '58.gif', 'cries_pokemon_legacy_58.ogg', 36, 'fuego', NULL);
INSERT INTO pokedex VALUES(59, 'Arcanine', '59.gif', '59.gif', 'cries_pokemon_legacy_59.ogg', NULL, 'fuego', NULL);
INSERT INTO pokedex VALUES(60, 'Poliwag', '60.gif', '60.gif', 'cries_pokemon_legacy_60.ogg', 25, 'agua', NULL);
INSERT INTO pokedex VALUES(61, 'Poliwhirl', '61.gif', '61.gif', 'cries_pokemon_legacy_61.ogg', 36, 'agua', NULL);
INSERT INTO pokedex VALUES(62, 'Poliwrath', '62.gif', '62.gif', 'cries_pokemon_legacy_62.ogg', NULL, 'agua', 'lucha');
INSERT INTO pokedex VALUES(63, 'Abra', '63.gif', '63.gif', 'cries_pokemon_legacy_63.ogg', 16, 'psiquico', NULL);
INSERT INTO pokedex VALUES(64, 'Kadabra', '64.gif', '64.gif', 'cries_pokemon_legacy_64.ogg', 38, 'psiquico', NULL);
INSERT INTO pokedex VALUES(65, 'Alakazam', '65.gif', '65.gif', 'cries_pokemon_legacy_65.ogg', NULL, 'psiquico', NULL);
INSERT INTO pokedex VALUES(66, 'Machop', '66.gif', '66.gif', 'cries_pokemon_legacy_66.ogg', 28, 'lucha', NULL);
INSERT INTO pokedex VALUES(67, 'Machoke', '67.gif', '67.gif', 'cries_pokemon_legacy_67.ogg', 38, 'lucha', NULL);
INSERT INTO pokedex VALUES(68, 'Machamp', '68.gif', '68.gif', 'cries_pokemon_legacy_68.ogg', NULL, 'lucha', NULL);
INSERT INTO pokedex VALUES(69, 'Bellsprout', '69.gif', '69.gif', 'cries_pokemon_legacy_69.ogg', 21, 'planta', 'veneno');
INSERT INTO pokedex VALUES(70, 'Weepinbell', '70.gif', '70.gif', 'cries_pokemon_legacy_70.ogg', 36, 'planta', 'veneno');
INSERT INTO pokedex VALUES(71, 'Victreebel', '71.gif', '71.gif', 'cries_pokemon_legacy_71.ogg', NULL, 'planta', 'veneno');
INSERT INTO pokedex VALUES(72, 'Tentacool', '72.gif', '72.gif', 'cries_pokemon_legacy_72.ogg', 30, 'agua', 'veneno');
INSERT INTO pokedex VALUES(73, 'Tentacruel', '73.gif', '73.gif', 'cries_pokemon_legacy_73.ogg', NULL, 'agua', 'veneno');
INSERT INTO pokedex VALUES(74, 'Geodude', '74.gif', '74.gif', 'cries_pokemon_legacy_74.ogg', 25, 'roca', 'tierra');
INSERT INTO pokedex VALUES(75, 'Graveler', '75.gif', '75.gif', 'cries_pokemon_legacy_75.ogg', 38, 'roca', 'tierra');
INSERT INTO pokedex VALUES(76, 'Golem', '76.gif', '76.gif', 'cries_pokemon_legacy_76.ogg', NULL, 'roca', 'tierra');
INSERT INTO pokedex VALUES(77, 'Ponyta', '77.gif', '77.gif', 'cries_pokemon_legacy_77.ogg', 40, 'fuego', NULL);
INSERT INTO pokedex VALUES(78, 'Rapidash', '78.gif', '78.gif', 'cries_pokemon_legacy_78.ogg', NULL, 'fuego', NULL);
INSERT INTO pokedex VALUES(79, 'Slowpoke', '79.gif', '79.gif', 'cries_pokemon_legacy_79.ogg', 37, 'agua', 'psiquico');
INSERT INTO pokedex VALUES(80, 'Slowbro', '80.gif', '80.gif', 'cries_pokemon_legacy_80.ogg', NULL, 'agua', 'psiquico');
INSERT INTO pokedex VALUES(81, 'Magnemite', '81.gif', '81.gif', 'cries_pokemon_legacy_81.ogg', 30, 'electrico', NULL);
INSERT INTO pokedex VALUES(82, 'Magneton', '82.gif', '82.gif', 'cries_pokemon_legacy_82.ogg', NULL, 'electrico', NULL);
INSERT INTO pokedex VALUES(83, 'Farfetch''d', '83.gif', '83.gif', 'cries_pokemon_legacy_83.ogg', NULL, 'normal', 'volador');
INSERT INTO pokedex VALUES(84, 'Doduo', '84.gif', '84.gif', 'cries_pokemon_legacy_84.ogg', 31, 'normal', 'volador');
INSERT INTO pokedex VALUES(85, 'Dodrio', '85.gif', '85.gif', 'cries_pokemon_legacy_85.ogg', NULL, 'normal', 'volador');
INSERT INTO pokedex VALUES(86, 'Seel', '86.gif', '86.gif', 'cries_pokemon_legacy_86.ogg', 34, 'agua', NULL);
INSERT INTO pokedex VALUES(87, 'Dewgong', '87.gif', '87.gif', 'cries_pokemon_legacy_87.ogg', NULL, 'agua', 'hielo');
INSERT INTO pokedex VALUES(88, 'Grimer', '88.gif', '88.gif', 'cries_pokemon_legacy_88.ogg', 38, 'veneno', NULL);
INSERT INTO pokedex VALUES(89, 'Muk', '89.gif', '89.gif', 'cries_pokemon_legacy_89.ogg', NULL, 'veneno', NULL);
INSERT INTO pokedex VALUES(90, 'Shellder', '90.gif', '90.gif', 'cries_pokemon_legacy_90.ogg', 38, 'agua', NULL);
INSERT INTO pokedex VALUES(91, 'Cloyster', '91.gif', '91.gif', 'cries_pokemon_legacy_91.ogg', NULL, 'agua', 'hielo');
INSERT INTO pokedex VALUES(92, 'Gastly', '92.gif', '92.gif', 'cries_pokemon_legacy_92.ogg', 25, 'fantasma', 'veneno');
INSERT INTO pokedex VALUES(93, 'Haunter', '93.gif', '93.gif', 'cries_pokemon_legacy_93.ogg', 38, 'fantasma', 'veneno');
INSERT INTO pokedex VALUES(94, 'Gengar', '94.gif', '94.gif', 'cries_pokemon_legacy_94.ogg', NULL, 'fantasma', 'veneno');
INSERT INTO pokedex VALUES(95, 'Onix', '95.gif', '95.gif', 'cries_pokemon_legacy_95.ogg', NULL, 'roca', 'tierra');
INSERT INTO pokedex VALUES(96, 'Drowzee', '96.gif', '96.gif', 'cries_pokemon_legacy_96.ogg', 26, 'psiquico', NULL);
INSERT INTO pokedex VALUES(97, 'Hypno', '97.gif', '97.gif', 'cries_pokemon_legacy_97.ogg', NULL, 'psiquico', NULL);
INSERT INTO pokedex VALUES(98, 'Krabby', '98.gif', '98.gif', 'cries_pokemon_legacy_98.ogg', 28, 'agua', NULL);
INSERT INTO pokedex VALUES(99, 'Kingler', '99.gif', '99.gif', 'cries_pokemon_legacy_99.ogg', NULL, 'agua', NULL);
INSERT INTO pokedex VALUES(100, 'Voltorb', '100.gif', '100.gif', 'cries_pokemon_legacy_100.ogg', 30, 'electrico', NULL);
INSERT INTO pokedex VALUES(101, 'Electrode', '101.gif', '101.gif', 'cries_pokemon_legacy_101.ogg', NULL, 'electrico', NULL);
INSERT INTO pokedex VALUES(102, 'Exeggcute', '102.gif', '102.gif', 'cries_pokemon_legacy_102.ogg', 36, 'planta', 'psiquico');
INSERT INTO pokedex VALUES(103, 'Exeggutor', '103.gif', '103.gif', 'cries_pokemon_legacy_103.ogg', NULL, 'planta', 'psiquico');
INSERT INTO pokedex VALUES(104, 'Cubone', '104.gif', '104.gif', 'cries_pokemon_legacy_104.ogg', 28, 'tierra', NULL);
INSERT INTO pokedex VALUES(105, 'Marowak', '105.gif', '105.gif', 'cries_pokemon_legacy_105.ogg', NULL, 'tierra', NULL);
INSERT INTO pokedex VALUES(106, 'Hitmonlee', '106.gif', '106.gif', 'cries_pokemon_legacy_106.ogg', NULL, 'lucha', NULL);
INSERT INTO pokedex VALUES(107, 'Hitmonchan', '107.gif', '107.gif', 'cries_pokemon_legacy_107.ogg', NULL, 'lucha', NULL);
INSERT INTO pokedex VALUES(108, 'Lickitung', '108.gif', '108.gif', 'cries_pokemon_legacy_108.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(109, 'Koffing', '109.gif', '109.gif', 'cries_pokemon_legacy_109.ogg', 35, 'veneno', NULL);
INSERT INTO pokedex VALUES(110, 'Weezing', '110.gif', '110.gif', 'cries_pokemon_legacy_110.ogg', NULL, 'veneno', NULL);
INSERT INTO pokedex VALUES(111, 'Rhyhorn', '111.gif', '111.gif', 'cries_pokemon_legacy_111.ogg', 42, 'tierra', 'fuego');
INSERT INTO pokedex VALUES(112, 'Rhydon', '112.gif', '112.gif', 'cries_pokemon_legacy_112.ogg', NULL, 'tierra', 'fuego');
INSERT INTO pokedex VALUES(113, 'Chansey', '113.gif', '113.gif', 'cries_pokemon_legacy_113.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(114, 'Tangela', '114.gif', '114.gif', 'cries_pokemon_legacy_114.ogg', NULL, 'planta', NULL);
INSERT INTO pokedex VALUES(115, 'Kangaskhan', '115.gif', '115.gif', 'cries_pokemon_legacy_115.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(116, 'Horsea', '116.gif', '116.gif', 'cries_pokemon_legacy_116.ogg', 32, 'agua', NULL);
INSERT INTO pokedex VALUES(117, 'Seadra', '117.gif', '117.gif', 'cries_pokemon_legacy_117.ogg', NULL, 'agua', NULL);
INSERT INTO pokedex VALUES(118, 'Goldeen', '118.gif', '118.gif', 'cries_pokemon_legacy_118.ogg', 33, 'agua', NULL);
INSERT INTO pokedex VALUES(119, 'Seaking', '119.gif', '119.gif', 'cries_pokemon_legacy_119.ogg', NULL, 'agua', NULL);
INSERT INTO pokedex VALUES(120, 'Staryu', '120.gif', '120.gif', 'cries_pokemon_legacy_120.ogg', 36, 'agua', NULL);
INSERT INTO pokedex VALUES(121, 'Starmie', '121.gif', '121.gif', 'cries_pokemon_legacy_121.ogg', NULL, 'agua', 'psiquico');
INSERT INTO pokedex VALUES(122, 'Mr.Mime', '122.gif', '122.gif', 'cries_pokemon_legacy_122.ogg', NULL, 'psiquico', NULL);
INSERT INTO pokedex VALUES(123, 'Scyther', '123.gif', '123.gif', 'cries_pokemon_legacy_123.ogg', NULL, 'bicho', 'volador');
INSERT INTO pokedex VALUES(124, 'Jynx', '124.gif', '124.gif', 'cries_pokemon_legacy_124.ogg', NULL, 'hielo', 'psiquico');
INSERT INTO pokedex VALUES(125, 'Electabuzz', '125.gif', '125.gif', 'cries_pokemon_legacy_125.ogg', NULL, 'electrico', NULL);
INSERT INTO pokedex VALUES(126, 'Magmar', '126.gif', '126.gif', 'cries_pokemon_legacy_126.ogg', NULL, 'fuego', NULL);
INSERT INTO pokedex VALUES(127, 'Pinsir', '127.gif', '127.gif', 'cries_pokemon_legacy_127.ogg', NULL, 'bicho', NULL);
INSERT INTO pokedex VALUES(128, 'Tauros', '128.gif', '128.gif', 'cries_pokemon_legacy_128.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(129, 'Magikarp', '129.gif', '129.gif', 'cries_pokemon_legacy_129.ogg', 20, 'agua', NULL);
INSERT INTO pokedex VALUES(130, 'Gyarados', '130.gif', '130.gif', 'cries_pokemon_legacy_130.ogg', NULL, 'agua', 'volador');
INSERT INTO pokedex VALUES(131, 'Lapras', '131.gif', '131.gif', 'cries_pokemon_legacy_131.ogg', NULL, 'agua', 'hielo');
INSERT INTO pokedex VALUES(132, 'Ditto', '132.gif', '132.gif', 'cries_pokemon_legacy_132.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(133, 'Eevee', '133.gif', '133.gif', 'cries_pokemon_legacy_133.ogg', 36, 'normal', NULL);
INSERT INTO pokedex VALUES(134, 'Vaporeon', '134.gif', '134.gif', 'cries_pokemon_legacy_134.ogg', NULL, 'agua', NULL);
INSERT INTO pokedex VALUES(135, 'Jolteon', '135.gif', '135.gif', 'cries_pokemon_legacy_135.ogg', NULL, 'electrico', NULL);
INSERT INTO pokedex VALUES(136, 'Flareon', '136.gif', '136.gif', 'cries_pokemon_legacy_136.ogg', NULL, 'fuego', NULL);
INSERT INTO pokedex VALUES(137, 'Porygon', '137.gif', '137.gif', 'cries_pokemon_legacy_137.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(138, 'Omanyte', '138.gif', '138.gif', 'cries_pokemon_legacy_138.ogg', 40, 'roca', 'agua');
INSERT INTO pokedex VALUES(139, 'Omastar', '139.gif', '139.gif', 'cries_pokemon_legacy_139.ogg', NULL, 'roca', 'agua');
INSERT INTO pokedex VALUES(140, 'Kabuto', '140.gif', '140.gif', 'cries_pokemon_legacy_140.ogg', 40, 'roca', 'agua');
INSERT INTO pokedex VALUES(141, 'Kabutops', '141.gif', '141.gif', 'cries_pokemon_legacy_141.ogg', NULL, 'roca', 'agua');
INSERT INTO pokedex VALUES(142, 'Aerodactyl', '142.gif', '142.gif', 'cries_pokemon_legacy_142.ogg', NULL, 'roca', 'volador');
INSERT INTO pokedex VALUES(143, 'Snorlax', '143.gif', '143.gif', 'cries_pokemon_legacy_143.ogg', NULL, 'normal', NULL);
INSERT INTO pokedex VALUES(144, 'Articuno', '144.gif', '144.gif', 'cries_pokemon_legacy_144.ogg', NULL, 'hielo', 'volador');
INSERT INTO pokedex VALUES(145, 'Zapdos', '145.gif', '145.gif', 'cries_pokemon_legacy_145.ogg', NULL, 'electrico', 'volador');
INSERT INTO pokedex VALUES(146, 'Moltres', '146.gif', '146.gif', 'cries_pokemon_legacy_146.ogg', NULL, 'fuego', 'volador');
INSERT INTO pokedex VALUES(147, 'Dratini', '147.gif', '147.gif', 'cries_pokemon_legacy_147.ogg', 30, 'dragon', NULL);
INSERT INTO pokedex VALUES(148, 'Dragonair', '148.gif', '148.gif', 'cries_pokemon_legacy_148.ogg', 55, 'dragon', NULL);
INSERT INTO pokedex VALUES(149, 'Dragonite', '149.gif', '149.gif', 'cries_pokemon_legacy_149.ogg', NULL, 'dragon', 'volador');
INSERT INTO pokedex VALUES(150, 'Mewtwo', '150.gif', '150.gif', 'cries_pokemon_legacy_150.ogg', NULL, 'psiquico', NULL);
INSERT INTO pokedex VALUES(151, 'Mew', '151.gif', '151.gif', 'cries_pokemon_legacy_151.ogg', NULL, 'psiquico', NULL);

ALTER TABLE objeto
	ADD CONSTRAINT objeto_PK_id_objeto PRIMARY KEY (id_objeto)
;

ALTER TABLE movimiento
	ADD CONSTRAINT movimiento_PK_id_movimiento PRIMARY KEY (id_movimiento)
;

ALTER TABLE movimiento
	ADD CONSTRAINT movimiento_CK_id_movimiento CHECK(id_movimiento IN('ataque', 'estado', 'mejora'))
;

ALTER TABLE movimiento_pokemon
	ADD CONSTRAINT movimiento_pokemon_PK_id_pokemon_id_movimiento PRIMARY KEY(id_pokemon, id_movimiento)
;

ALTER TABLE mochila
	ADD CONSTRAINT mochila_PK_id_entrenador_id_objeto PRIMARY KEY (id_entrenador, id_objeto)
;

ALTER TABLE pokedex
	ADD CONSTRAINT pokedex_PK_num_pokedex PRIMARY KEY (num_pokedex)
;

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_PK_id_pokemon PRIMARY KEY (id_pokemon)
;

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_CK_between_1_3 CHECK(equipo BETWEEN 1 AND 3)
;

ALTER TABLE pokemon
	ADD CONSTRAINT pokeomn_CK_sexo_H_M_X CHECK(SEXO IN('H', 'M','X'))
;

 ALTER TABLE entrenador
	ADD CONSTRAINT entrenador_PK_id_entrenador PRIMARY KEY (id_entrenador)
;

ALTER TABLE entrenador
	ADD CONSTRAINT entrenador_CK_pokedolares_menor_2_MM CHECK(pokedolares BETWEEN 0 AND 2000000000)
;



ALTER TABLE movimiento_pokemon
	ADD CONSTRAINT movimiento_Pokemon_FK_id_movimiento FOREIGN KEY(id_movimiento) REFERENCES movimiento(id_movimiento)
;

ALTER TABLE movimiento_pokemon
	ADD CONSTRAINT movimiento_pokemon_FK_id_pokemon FOREIGN KEY(id_pokemon) REFERENCES pokemon(id_pokemon)
;

ALTER TABLE mochila
	ADD CONSTRAINT mochila_FK_id_entrenador FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador)
;

ALTER TABLE mochila
	ADD CONSTRAINT mochila_FK_id_objeto FOREIGN KEY (id_objeto) REFERENCES objeto(id_objeto)
;

ALTER TABLE pokedex
	ADD CONSTRAINT tipo1_ch CHECK(tipo1 IN('acero', 'agua', 'bicho', 'dragon', 'electrico', 'fantasma', 'fuego', 'hada', 'hielo', 'lucha', 'normal', 'planta', 'psiquico', 'roca', 'siniestro', 'tierra', 'veneno', 'volador'))
;



ALTER TABLE pokedex
	ADD CONSTRAINT tipo2_ch CHECK(tipo2 IN('acero', 'agua', 'bicho', 'dragon', 'electrico', 'fantasma', 'fuego', 'hada', 'hielo', 'lucha', 'normal', 'planta', 'psiquico', 'roca', 'siniestro', 'tierra', 'veneno', 'volador'))
;

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_FK_id_entrenador FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador)
;

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_FK_num_pokedex FOREIGN KEY (num_pokedex) REFERENCES pokedex(num_pokedex)
;


ALTER TABLE pokemon
	ADD CONSTRAINT estado_ch CHECK(estado IN('paralizado', 'quemado', 'envenenado', 'gravemente envenenado', 'dormido', 'congelado', 'pokérus', 'confuso', 'enamorado', 'drenado', 'maldito', 'canto mortal', 'atrapado', 'debilitado'))
;

INSERT INTO entrenador (id_entrenador, usuario, pass, pokedolares)
VALUES (1, 'Antonio', '123456', 17260);

INSERT INTO pokemon VALUES (1, 1, 25, 'Pika', 35, 35, 55, 40, 50, 50, 90, 20, 5, 'H', NULL, 1);
INSERT INTO pokemon VALUES (2, 1, 7, 'Tortuguita', 44, 44, 48, 65, 50, 64, 43, 18, 5, 'M', NULL, 2);
INSERT INTO pokemon VALUES (3, 1, 16, 'Pidge', 40, 20, 45, 40, 35, 35, 56, 15, 5, 'H', NULL, 3);
INSERT INTO pokemon VALUES (4, 1, 129, 'Magik', 20, 20, 10, 55, 15, 20, 80, 10, 5, 'X', NULL, NULL);
INSERT INTO pokemon VALUES (5, 1, 43, 'Oddie', 45, 45, 50, 55, 75, 65, 30, 12, 5, 'M', NULL, NULL);
INSERT INTO pokemon VALUES (6, 1, 52, 'Meow', 40, 40, 45, 35, 40, 40, 90, 16, 5, 'H', NULL, NULL);

INSERT INTO entrenador (id_entrenador, usuario, pass, pokedolares)
VALUES (2, 'Pedro', '123456', 1520);

INSERT INTO pokemon VALUES (7, 2, 4, 'Charmy', 39, 39, 52, 43, 60, 50, 65, 17, 5, 'H', NULL, 1);
INSERT INTO pokemon VALUES (8, 2, 10, 'Cater', 45, 45, 30, 35, 20, 20, 45, 8, 5, 'M', NULL, 2);
INSERT INTO pokemon VALUES (9, 2, 19, 'Ratta', 30, 30, 56, 35, 25, 35, 72, 14, 5, 'H', NULL, 3);
INSERT INTO pokemon VALUES (10, 2, 27, 'Sandy', 50, 50, 75, 85, 20, 30, 40, 19, 5, 'M', NULL, NULL);
INSERT INTO pokemon VALUES (11, 2, 41, 'Zubat', 40, 40, 45, 35, 30, 40, 55, 13, 5, 'X', NULL, NULL);
INSERT INTO pokemon VALUES (12, 2, 63, 'Abra', 25, 25, 20, 15, 105, 55, 90, 11, 5, 'H', NULL, NULL);

