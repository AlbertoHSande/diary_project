package com.lucatic.agenda.dao;

import java.util.List;

import com.lucatic.agenda.model.Persona;

public interface IDAOPersona {
	public Persona findById(String key);
	
	public List<Persona> findAll();

	int delete(Persona ov);

	int insert(Persona ov);

	int update(Persona ov);

}
