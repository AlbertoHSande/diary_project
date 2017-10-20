package com.lucatic.agenda.model;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="empleados")
public class Empleado extends Persona implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="idEmpleados")
	private int id;
	
	@Column(name="codempleado")
	private String cod;
	private int salario;
	
	@Column(name="fechaAlta")
	private Timestamp alta;
	
	@Column(name="idDepartamento")
	private int idDep;
	
	@Column(name="idCategoria")
	private int idCateg;

	public Empleado() {
		super();
	}

	public Empleado(int id, String cod) {
		super();
		this.id = id;
		this.cod = cod;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCod() {
		return cod;
	}

	public void setCod(String cod) {
		this.cod = cod;
	}

	public int getSalario() {
		return salario;
	}

	public void setSalario(int salario) {
		this.salario = salario;
	}

	public Timestamp getAlta() {
		return alta;
	}

	public void setAlta(Timestamp alta) {
		this.alta = alta;
	}

	public int getIdDep() {
		return idDep;
	}

	public void setIdDep(int idDep) {
		this.idDep = idDep;
	}

	public int getIdCateg() {
		return idCateg;
	}

	public void setIdCateg(int idCateg) {
		this.idCateg = idCateg;
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
		Empleado other = (Empleado) obj;
		if (id != other.id)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Empleado [id=" + id + ", cod=" + cod + ", salario=" + salario + ", alta=" + alta + ", idDep=" + idDep
				+ ", idCateg=" + idCateg + "]";
	}
	
	
	
}
