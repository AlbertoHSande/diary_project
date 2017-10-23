package com.lucatic.agenda.dao;

import java.util.List;

import com.lucatic.agenda.model.Persona;

import ch.qos.logback.core.net.SyslogOutputStream;

public interface IDAOPersona {
	public Persona findById(int id);
	
	public List<Persona> findAll();

	int delete(Persona ov);

	int insert(Persona ov);

	int update(Persona ov);

}
