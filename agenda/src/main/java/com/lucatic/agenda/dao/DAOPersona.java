package com.lucatic.agenda.dao;

import java.sql.ResultSet;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lucatic.agenda.model.Persona;

//utilizamos repository para los DAOS
@Repository

public class DAOPersona implements IDAO<Persona,String> {

	//Inyeccion automatica de dependencias
	@Autowired
	//Esta clase contiene métodos para leer, guardar o borrar entidades sobre la base de datos.
	private SessionFactory sessionFactory;

	public DAOPersona (){

	}

	public DAOPersona(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	//poner en las implementaciones de las interfaces
	@Transactional
	public Persona findById(String key) {

		Persona p=null;
		String hq1 ="FROM USER WHERE id="+key;
		Query query = sessionFactory.getCurrentSession().createQuery(hq1);

		///creamos un array y metemos los resultados de la query
		List<Object[]> list = query.list(); 
		
		for (Object[] row : list) {
			p= new Persona();
			p.setIdpersona((Integer) row[0]);
			p.setIdNombre((String) row[1]);
			p.setApellido1((String) row[2]);
			p.setApellido2((String) row[3]);
			p.setDni((String) row[4]);
			p.setFecha((String) row[5]);
			p.seIdempleado((String) row[6]);
			
		}
		//si todo va bien es posible que esto nos devuelva el objeto con toda la info de la tabla
		return p;
	}

	@Override
	@Transactional
	public List<Persona> findAll() {
		
		
		@SuppressWarnings("unchecked")
		List<Persona> listp = (List<Persona>) sessionFactory.getCurrentSession()
		.createCriteria(Persona.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();

		return listp;

	}

	@Override
	@Transactional
	public int delete(Persona ov) {
		//cruzar los dedos para que funcione
		sessionFactory.getCurrentSession().delete(ov.getIdpersonas());
		return 0;
	}

	
	@Override
	@Transactional
	public int insert(Persona ov) {
		
		String hq1 ="INSERT INTO usuario(nombre, apellido1, apellido2, dni, fechaNacimiento) VALUES ('"
				+ ov.getNombre() + "','" + ov.getApellido1() + "','" + ov.getApellido2() + "','" + ov.getDni() + "','"
				+ ov.getFecha() +"')";
		Query query = sessionFactory.getCurrentSession().createQuery(hq1);
		
		
		return query.getMaxResults();
	}

	@Override
	public int update(Persona ov) {
		sessionFactory.getCurrentSession().saveOrUpdate(ov);
		return 0;
	}

}
