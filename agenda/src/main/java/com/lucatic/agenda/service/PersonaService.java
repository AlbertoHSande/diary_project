package com.lucatic.agenda.service;

import java.util.List;

import com.lucatic.agenda.model.Personas;

public interface PersonaService {

		public List<Personas> list();
		
		public Personas get(int id);
		
		public void saveOrUpdate(Personas persona);
		
		public void delete(int id);
	
	
	
}
