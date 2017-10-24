package com.lucatic.agenda.dao;

import java.util.List;

import com.lucatic.agenda.model.Persona;

public interface IDAOPersona {
	public Persona findById(int key);
	
	public List<Persona> findAll();

	//int insert(Persona ov);

	public void saveOrUpdate(Persona persona);
	
	public void delete(Persona persona);
}
