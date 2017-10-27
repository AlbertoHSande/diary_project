package com.lucatic.agenda.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "personas")
public class Persona implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "idpersonas")
	private int id;
	
	//private Set<Telefono> telefonos;
	
	private String nombre;
	private String apellido1;
	private String apellido2;
	private String dni;
	private String fechaNacimiento;
	@OneToMany(mappedBy = "personas")
	private List<Telefono> telefonoses = new ArrayList<Telefono>();
	private int idEmpleado;
	
	public Persona() {
		super();
	}

	public Persona(int id, String nombre, String apellido1) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido1 = apellido1;
	}
	
	public Persona(int id, String nombre, String apellido1, List<Telefono> telefonoses) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.telefonoses = telefonoses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idpersonas", unique = true, nullable = false)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	@Column(name = "fechaNacimiento", length = 10)
	public String getFechaNacimiento() {
		return fechaNacimiento;
	}

	public void setFechaNacimiento(String row) {
		this.fechaNacimiento = row;
	}

	public int getIdEmpleado() {
		return idEmpleado;
	}

	public void setIdEmpleado(int idEmpleado) {
		this.idEmpleado = idEmpleado;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "personas")
	public List<Telefono> getTelefonoses() {
		return this.telefonoses;
	}

	public void setTelefonoses(List<Telefono> telefonoses) {
		this.telefonoses = telefonoses;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Persona other = (Persona) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Persona [id=" + id + ", nombre=" + nombre + ", apellido1=" + apellido1 + ", apellido2=" + apellido2
				+ ", dni=" + dni + ", fechaNacimiento=" + fechaNacimiento + ", idEmpleado=" + idEmpleado + ", Telefonoses " + telefonoses.toString() + "]";
	}

	
}
