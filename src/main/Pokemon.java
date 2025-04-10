package main;

import java.util.Random;

public class Pokemon {
	
	
	/*
	 * Pokemon basico
	 * Sexo solo podra ser H, M, X
	 * Estado solo podra ser paralizado, quemado, envenenado, toxico, dormido, congelado, pokerus, confuso, enamorado, drenado, maldito, canto mortal, atrapado, debilitado
	 * Si el mote es "" el pokemon respondera por el nombre de pokedex
	 * Los pokemon en este contructor son considerados "pokemon activos", estos incluyen los pokemon del equipo 1, 2 y del oponente, en la pokedex se utilizan elementos LinkedList<Pokemon> temporales
	 * 
	 * 
	 * 
	 * */
	private String mote;
	private int numeroDePokedex;
	private int vitalidad;
	private int vitalidadRestante;
	private int ataque;
	private int defensa;
	private int ataqueEspecial;
	private int defensaEspecial;
	private int velocidad;
	private byte nivel;
	private byte fertilidad;
	private char sexo;
	private String estado;
	private byte itemEquipado;
	
	//constructor prueva
	public Pokemon() {
		super();
		this.mote = "";
		this.numeroDePokedex = 1;
		this.vitalidad = 1;
		this.vitalidadRestante = 1;
		this.ataque = 1;
		this.defensa = 1;
		this.ataqueEspecial = 1;
		this.defensaEspecial = 1;
		this.velocidad = 1;
		this.nivel = 1;
		this.fertilidad = 1;
		this.sexo = 'X';
		this.estado = "NULL";
		this.itemEquipado = 1;
	}

	//constructor captura
	public Pokemon(String mote, int pokedex, char sexo) {
		super();
		this.mote = mote;
		this.numeroDePokedex = pokedex;
		this.vitalidad = 10;
		this.vitalidadRestante = 10;
		this.ataque = 10;
		this.defensa = 10;
		this.ataqueEspecial = 10;
		this.defensaEspecial = 10;
		this.velocidad = 10;
		this.nivel = 10;
		this.fertilidad = 5;
		this.sexo = sexo;
		this.estado = "NULL";
		this.itemEquipado = 0;
	}

	//constructor descarga
	public Pokemon(String mote, int numeroDePokedex, int vitalidad, int vitalidadRestante, int ataque, int defensa,
			int ataqueEspecial, int defensaEspecial, int velocidad, byte nivel, byte fertilidad, char sexo,
			String estado, byte itemEquipado) {
		this.mote = mote;
		this.numeroDePokedex = numeroDePokedex;
		this.vitalidad = vitalidad;
		this.vitalidadRestante = vitalidadRestante;
		this.ataque = ataque;
		this.defensa = defensa;
		this.ataqueEspecial = ataqueEspecial;
		this.defensaEspecial = defensaEspecial;
		this.velocidad = velocidad;
		this.nivel = nivel;
		this.fertilidad = fertilidad;
		this.sexo = sexo;
		this.estado = estado;
		this.itemEquipado = itemEquipado;
	}

	//constructor copia
	public Pokemon(Pokemon p) {
		this.mote = p.mote;
		this.numeroDePokedex = p.numeroDePokedex;
		this.vitalidad = p.vitalidad;
		this.vitalidadRestante = p.vitalidadRestante;
		this.ataque = p.ataque;
		this.defensa = p.defensa;
		this.ataqueEspecial = p.ataqueEspecial;
		this.defensaEspecial = p.defensaEspecial;
		this.velocidad = p.velocidad;
		this.nivel = p.nivel;
		this.fertilidad = p.fertilidad;
		this.sexo = p.sexo;
		this.estado = p.estado;
		this.itemEquipado = p.itemEquipado;
	}


	public String getMote() {
		return mote;
	}



	public void setMote(String mote) {
		this.mote = mote;
	}



	public int getNumeroDePokedex() {
		return numeroDePokedex;
	}



	public void setNumeroDePokedex(int numeroDePokedex) {
		this.numeroDePokedex = numeroDePokedex;
	}



	public int getVitalidad() {
		return vitalidad;
	}



	public void setVitalidad(int vitalidad) {
		this.vitalidad = vitalidad;
	}



	public int getVitalidadRestante() {
		return vitalidadRestante;
	}



	public void setVitalidadRestante(int vitalidadRestante) {
		this.vitalidadRestante = vitalidadRestante;
	}



	public int getAtaque() {
		return ataque;
	}



	public void setAtaque(int ataque) {
		this.ataque = ataque;
	}



	public int getDefensa() {
		return defensa;
	}



	public void setDefensa(int defensa) {
		this.defensa = defensa;
	}



	public int getAtaqueEspecial() {
		return ataqueEspecial;
	}



	public void setAtaqueEspecial(int ataqueEspecial) {
		this.ataqueEspecial = ataqueEspecial;
	}



	public int getDefensaEspecial() {
		return defensaEspecial;
	}



	public void setDefensaEspecial(int defensaEspecial) {
		this.defensaEspecial = defensaEspecial;
	}



	public int getVelocidad() {
		return velocidad;
	}



	public void setVelocidad(int velocidad) {
		this.velocidad = velocidad;
	}



	public byte getNivel() {
		return nivel;
	}



	public void setNivel(byte nivel) {
		this.nivel = nivel;
	}



	public byte getFertilidad() {
		return fertilidad;
	}



	public void setFertilidad(byte fertilidad) {
		this.fertilidad = fertilidad;
	}



	public char getSexo() {
		return sexo;
	}



	public void setSexo(char sexo) {
		this.sexo = sexo;
	}



	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	public byte getItemEquipado() {
		return itemEquipado;
	}



	public void setItemEquipado(byte itemEquipado) {
		this.itemEquipado = itemEquipado;
	}
	
	
	
	public void suvirDeNivel(Pokemon poke) {
		Random rand = new Random();
		poke.setNivel((byte) (poke.getNivel() + 1));
		poke.setAtaque((poke.getAtaque() + 1 + rand.nextInt(5)));
		poke.setAtaqueEspecial((poke.getAtaqueEspecial() + 1 + rand.nextInt(5)));
		poke.setDefensa((poke.getDefensa() + 1 + rand.nextInt(5)));
		poke.setDefensaEspecial((poke.getDefensaEspecial() + 1 + rand.nextInt(5)));
		byte recuperacion = (byte) (1 + rand.nextInt(5));
		poke.setVitalidad((poke.getVitalidad() + recuperacion));
		poke.setVitalidadRestante((poke.getVitalidadRestante() + recuperacion));
		poke.setVelocidad((poke.getVelocidad() + 1 + rand.nextInt(5)));
	}
}

