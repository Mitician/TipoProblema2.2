package com.everis.everis3.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.everis.everis3.models.Persona;
import com.everis.everis3.services.PersonaService;

@RestController
public class APIController {
	@Autowired
	PersonaService personasService;
	
	@RequestMapping("/api/personas/agregar")
	public Persona personas(@RequestParam(value="rut")String rutBack,
			@RequestParam(value="nombre")String nombreBack,
			@RequestParam(value="apellido")String apellidoBack,
			@RequestParam(value="email")String emailBack,
			@RequestParam(value="sexo")String sexoBack,
			@RequestParam(value="profesion")String profesionBack,
			Model model) {
		
		Persona persona = new Persona();
		persona.setRut(rutBack);
		persona.setNombre(nombreBack);
		persona.setApellido(apellidoBack);
		persona.setEmail(emailBack);
		persona.setSexo(sexoBack);
		persona.setProfesion(profesionBack);
		
		persona = personasService.guardarPersona(persona);
		return persona;
	}
	
	@RequestMapping("/api/personas/mostrar")
	public List<Persona> mostrar() {
		List<Persona> personas_lista = personasService.traerPersonas();
		return personas_lista;
	}
	
	@RequestMapping("/api/personas/eliminar/{id}")
	public String eliminarPersona(@PathVariable("id") Long id) {
		personasService.deleteById(id);
		return "Se ha eliminado";
	}
}
