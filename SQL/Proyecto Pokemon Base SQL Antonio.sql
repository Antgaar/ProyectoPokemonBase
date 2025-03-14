CREATE TABLE objecto(
	id_objeto INTEGER,
	nom_objeto VARCHAR(50),
	ataque INTEGER,
	at_especial INTEGER,
	defensa INTEGER,
	def_especial INTEGER,
	velocidad INTEGER,
	precio INTEGER,
);

ALTER TABLE objeto 
	ADD CONSTRAINT objecto_pk PRIMARY KEY (id_objeto)  
; 
 

CREATE TABLE mochila(
	id_entrenador INTEGER,
	id_objeto INTEGER,
	cantidad INTEGER NOT NULL,
);

ALTER TABLE objeto 
	ADD CONSTRAINT mochila_pk PRIMARY KEY (id_entrenador)
; 

ALTER TABLE objeto 
	ADD CONSTRAINT mochila_fk FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador)
; 

ALTER TABLE objeto 
	ADD CONSTRAINT mochila_pk PRIMARY KEY (id_objeto)
; 

ALTER TABLE objeto 
	ADD CONSTRAINT mochila_fk FOREIGN KEY (id_objeto) REFERENCES objeto(id_objeto)
; 


CREATE TABLE pokedex(
	num_pokedex INTEGER,
	nom_pokedex VARCHAR(20) NOT NULL,
	img_frontal VARCHAR(100) NOT NULL,
	img_trasera VARCHAR(100) NOT NULL,
	sonido VARCHAR(100) NOT NULL,
	nivel_evolucion INTEGER,
	tipo1 VARCHAR(20) NOT NULL,
	tipo2 VARCHAR(20) CHECK,
);

ALTER TABLE pokemon
	ADD CONSTRAINT pokedex_pk PRIMARY KEY (num_pokedex)
; 

ALTER TABLE pokedex
	ADD CONSTRAINT tipo1_ch CHECK()
;

ALTER TABLE pokedex
	ADD CONSTRAINT tipo2_ch CHECK()
;

CREATE TABLE pokemon(
	id_pokemon INTEGER,
	id_entrenador INTEGER,
	num_pokedex INTEGER,
	mote VARCHAR2(20),
	vitalidad INTEGER NOT NULL,
	ataque INTEGER NOT NULL,
	defensa INTEGER NOT NULL,
	at_especial INTEGER NOT NULL,
	def_especial INTEGER NOT NULL,
	velocidad INTEGER NOT NULL,
	nivel INTEGER NOT NULL,
	fertilidad INTEGER DEFAULT 5,
	SEXO CHAR(1),
	estado VARCHAR(20),
	equipo INTEGER,
);

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_pk PRIMARY KEY (id_pokemon)
; 

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_fk FOREIGN KEY (id_entrenador) REFERENCES entrenador(id_entrenador)
; 

ALTER TABLE pokemon
	ADD CONSTRAINT pokemon_fk FOREIGN KEY (num_pokedex) REFERENCES pokedex(num_pokedex)
;

ALTER TABLE pokemon
	ADD CONSTRAINT sexo_ch CHECK(SEXO IN('H', 'M','X'))
;

ALTER TABLE pokemon
	ADD CONSTRAINT estado_ch CHECK()
;

ALTER TABLE pokemon
	ADD CONSTRAINT equipo_ch CHECK(equipo BETWEEN 1 AND 3)
;


CREATE TABLE entrenador(
	id_entrenador INTEGER,
	usuario VARCHAR(20) NOT NULL UNIQUE,
	pass VARCHAR(20) NOT NULL,
	pokedolares INTEGER DEFAULT 1000,
);
 
 ALTER TABLE entrenador
	ADD CONSTRAINT entrenador_pk PRIMARY KEY (id_entrenador)
; 



