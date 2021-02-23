package poly.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Maxim;
import poly.service.MaximService;

@Controller
public class MaximController {
	@Autowired
	MaximService maximservice;
	@Autowired
	SessionFactory sessionfactory;

	@RequestMapping(value = "/maxim.htm", method = RequestMethod.GET)
	public String getallmaxim(ModelMap model) {
		model.put("maxims", new Maxim());
		model.put("maxim", maximservice.getall());
		return "maxims";
	}
}
