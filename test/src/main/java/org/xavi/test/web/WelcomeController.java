package org.xavi.test.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.xavi.test.classes.Datos;

@Controller
public class WelcomeController {

	@RequestMapping(value = "/")
	public String login() {
		return "index";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home(@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "password", required = false) String password, HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("welcome");
		modelAndView.addObject("username", username);
		modelAndView.addObject("password", password);
		return modelAndView;
	}
	
	@RequestMapping(value = "/paginaChubb", method = RequestMethod.GET)
	public ModelAndView paginaChubb(HttpServletRequest request,
			HttpServletResponse response) {
		ModelAndView modelAndView = new ModelAndView("paginaChubb");
		return modelAndView;
	}

	/**
	 * Send of the form: <br>
	 * contentType = "application/json" <br>
	 * data = JSON.stringify(json object)<br>
	 * Example: JSON.stringify({valor1:"gg",valor2:"hh"})
	 * 
	 */
	@RequestMapping(value = "/execute", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> execute(@RequestBody Map<String, Object> searchCriteria, Model model,
			HttpServletRequest request) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("Val", "jejeje");

		Datos dat = new Datos();

		return map;
	}

	/**
	 * Send of the form: <br>
	 * contentType = "application/x-www-form-urlencoded; charset=UTF-8"(Default) <br>
	 * data = "valor1=rr&valor2=re&valor3=ger ..."
	 */
	@RequestMapping(value = "/execute2", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> execute2(@RequestParam("valor1") String valor1,
			@RequestParam("valor2") String valor2, Model model, HttpServletRequest request) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("Val", "jejeje");

		Datos dat = new Datos();

		return map;
	}
	
	/**
	 * Send of the form: <br>
	 * contentType = "application/x-www-form-urlencoded; charset=UTF-8"(Default) <br>
	 * Data could be from 2 alternatives, Serialized or Json: <br>
	 * 1.- data = "valor1=rr&valor2=re&valor3=ger ..." <br>
	 * 2.- data = {valor1:"gg",valor2:"hh"};
	 */
	@RequestMapping(value = "/execute3", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> execute3(@ModelAttribute("valor1") String valor1, @ModelAttribute("valor2") String valor2, Model model,
			HttpServletRequest request, HttpServletResponse response){

		Map<String, String> map = new HashMap<String, String>();
		map.put("Val", "jejeje");

		Datos dat = new Datos();

		return map;
	}
}
