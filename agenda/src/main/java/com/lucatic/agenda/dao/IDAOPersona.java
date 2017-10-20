package com.lucatic.agenda.dao;

import java.util.List;

import com.lucatic.agenda.model.Persona;

public interface IDAOPersona {
	public Persona findById(String key);
	
	public List<Persona> findAll();
}
