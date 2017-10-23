package com.lucatic.agenda.service;

import java.util.List;

import com.lucatic.agenda.model.Persona;

public interface IPersonaService {
	public List<Persona> list();
	
	public Persona get(int i);
}
