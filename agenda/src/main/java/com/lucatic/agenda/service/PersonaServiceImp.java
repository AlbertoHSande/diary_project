package com.lucatic.agenda.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lucatic.agenda.dao.DAOPersona;
import com.lucatic.agenda.model.Personas;

@Service
@Transactional
public class PersonaServiceImp  implements PersonaService{
	@Autowired
	private DAOPersona personaDAO;

	@Override
	public List<Personas> list() {
		// TODO Auto-generated method stub
		return personaDAO.findAll();
	}

	@Override
	public Personas get(int id) {
		// TODO Auto-generated method stub
		return personaDAO.findById(id);
	}

	@Override
	public void saveOrUpdate(Personas persona) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

}
