package com.everis.everis3.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.everis.everis3.models.Persona;
import com.everis.everis3.services.PersonaService;
@Controller
public class HomeController {
	@Autowired 
	PersonaService personasService;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Persona> personas_lista = personasService.traerPersonas();
		model.addAttribute("personas", personas_lista);
		return "index.jsp";
	}
}
