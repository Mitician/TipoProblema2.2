package com.everis.everis3.services;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.everis.everis3.models.Persona;
import com.everis.everis3.repositories.PersonaRepository;

@Service
public class PersonaService {
	@Autowired
	PersonaRepository personarepository;
	
	public Persona guardarPersona(Persona persona) {
		return personarepository.save(persona);
	}

	public List<Persona> traerPersonas() {
		return personarepository.findAll();
	}

	public Optional<Persona> traerPersonaPorId(Long id) {
		return personarepository.findById(id);
	}

	public void deleteById(Long id) {
		personarepository.deleteById(id);
	}

	public void actualizarPersona(@Valid Persona persona) {
		personarepository.save(persona);
	}
}
