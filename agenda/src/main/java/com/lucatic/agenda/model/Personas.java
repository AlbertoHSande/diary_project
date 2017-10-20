package com.lucatic.agenda.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "PERSONAS")
public class Personas {
private int idpersonas;
private String nombre;
private String apellido1;
private String apellido2;
private String dni;
private String fechaNacimiento;
private int idEmpleado;

@Id
@GeneratedValue
@Column(name = "idpersonas")

public int getIdpersonas() {
	return idpersonas;
}
public void setIdpersonas(int idpersonas) {
	this.idpersonas = idpersonas;
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
public String getFechaNacimiento() {
	return fechaNacimiento;
}
public void setFechaNacimiento(String fechaNacimiento) {
	this.fechaNacimiento = fechaNacimiento;
}
public int getIdEmpleado() {
	return idEmpleado;
}
public void setIdEmpleado(int idEmpleado) {
	this.idEmpleado = idEmpleado;
}
}
