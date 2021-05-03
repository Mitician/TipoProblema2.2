package com.everis.everis3.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.everis.everis3.models.Persona;
import com.everis.everis3.services.PersonaService;

public class HomeController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
}
