package com.everis.everis3.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.everis.everis3.models.Persona;
@Repository
public interface PersonaRepository extends CrudRepository<Persona, Long>{
	List<Persona> findAll();
}
