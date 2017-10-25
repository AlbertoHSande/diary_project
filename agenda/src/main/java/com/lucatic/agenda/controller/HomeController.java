package com.lucatic.agenda.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lucatic.agenda.dao.DAOPersona;
import com.lucatic.agenda.model.Persona;
import com.lucatic.agenda.service.IPersonaService;
import com.lucatic.agenda.service.PersonaServiceImp;



@Controller
public class HomeController {
	
	@Autowired
	private IPersonaService PersonaService;
	
	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		//Falta userService
		List<Persona> persona = PersonaService.list();
		ModelAndView model = new ModelAndView("listar");
		model.addObject("persona", persona);
		return model;
	}
	
	
	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView view_Agregar_Persona() {
		//Redirige a nueva persona(no crea)
		ModelAndView model = new ModelAndView("agregar_persona");
		return model;		
	}
	
	@RequestMapping(value = "/busca", method = RequestMethod.GET)
	public ModelAndView view_Buscador() {
		//Redirige a nueva persona(no crea)
		ModelAndView model = new ModelAndView("buscador");
		return model;		
	}
	
	@RequestMapping(value = "/aj", method = RequestMethod.GET)
	public ModelAndView view_Buscador_ajax(){
		//Redirige a nueva persona(no crea)
		ModelAndView model = new ModelAndView("ajax");
		return model;		
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
		//agregamos una nueva persona
	public ModelAndView savePersona(@ModelAttribute Persona persona) {
		PersonaService.saveOrUpdate(persona);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("/edit")
	public ModelAndView editPersona(@RequestParam("id") int id) throws Exception {
		//Falta userService
		Persona persona = PersonaService.get(id);
		ModelAndView model = new ModelAndView("edit");
		model.addObject("persona", persona);
		return model;
	}
	
	@RequestMapping("/detalle")
	public ModelAndView findById(@RequestParam("id") int id) throws Exception {
		//mostramos detalles de una persona
		Persona persona = PersonaService.get(id);
		ModelAndView model = new ModelAndView("detalleUser");
		model.addObject("persona", persona);
		return model;
	}
	
	
	@RequestMapping(value = "/delete")
		//elminamos persona
	public ModelAndView deletePersona(@RequestParam("id") int id) {
		Persona persona = PersonaService.get(id);
		PersonaService.delete(persona);
		return new ModelAndView("redirect:/");
	}
	
//	@Autowired
//	private UserService userService;
/*
	@RequestMapping("/")
	public ModelAndView handleRequest() throws Exception {
		List<User> listUsers = userService.list();
		ModelAndView model = new ModelAndView("UserList");
		model.addObject("userList", listUsers);
		return model;
	}

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public ModelAndView newUser() {
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", new User());
		return model;		
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView editUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		User user = userService.get(userId);
		ModelAndView model = new ModelAndView("UserForm");
		model.addObject("user", user);
		return model;		
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public ModelAndView deleteUser(HttpServletRequest request) {
		int userId = Integer.parseInt(request.getParameter("id"));
		userService.delete(userId);
		return new ModelAndView("redirect:/");		
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute User user) {
		userService.saveOrUpdate(user);
		return new ModelAndView("redirect:/");
	}
	*/
}
