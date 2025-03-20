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
	nivel_aprendizaje INTEGER CONSTRAINT nivel_aprendizaje_NN NOT NULL,
	pp_max INTEGER,
	tipo VARCHAR(20),
	potencia INTEGER,
	tipo_mov VARCHAR(20),
	estado VARCHAR(20),
	turnos INTEGER,
	mejora VARCHAR(20)
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
	ADD CONSTRAINT entrenador_CK_pokedolares_>_2_MM CHECK(pokedolares BETWEEN 0 AND 2000000000)
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

/* por incluir
ALTER TABLE pokedex
	ADD CONSTRAINT tipo1_ch CHECK()
;
*/

/* por incluir
ALTER TABLE pokedex
	ADD CONSTRAINT tipo2_ch CHECK()
;
*/

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_FK_id_entrenador FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador)
;

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_FK_num_pokedex FOREIGN KEY (num_pokedex) REFERENCES pokedex(num_pokedex)
;

/* por incluir
ALTER TABLE pokemon
	ADD CONSTRAINT estado_ch CHECK()
;
*/
