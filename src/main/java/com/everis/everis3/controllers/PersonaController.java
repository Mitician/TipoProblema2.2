package com.everis.everis3.controllers;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.everis.everis3.models.Persona;
import com.everis.everis3.services.PersonaService;


@Controller
public class PersonaController {
	@Autowired
	PersonaService personasService;
	
	@RequestMapping("personas/agregar")
	public String personas(@RequestParam(value="rut")String rutBack,
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
		return "redirect:/";
	}
	
	@RequestMapping("personas/eliminar/{id}")
	public String eliminarPersona(@PathVariable("id") Long id) {
		personasService.deleteById(id);
		return "redirect:/";
	}
	
	@RequestMapping("personas/editar/{id}")
	public String editarPersona(@PathVariable("id") Long id, Model model) {
		Optional <Persona> persona = personasService.traerPersonaPorId(id);
		model.addAttribute("persona", persona);
		return "editar.jsp";
	}
	
	@RequestMapping("persona/actualizar/")
	public String actualizarPersona(@Valid @ModelAttribute("persona") Persona persona) {
		personasService.actualizarPersona(persona);
		return "redirect:/";
	}
}
