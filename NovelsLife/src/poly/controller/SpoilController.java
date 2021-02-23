package poly.controller;

import java.util.Date;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dao.SpoileDao;
import poly.entity.Spoil;




@Controller
public class SpoilController {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	SpoileDao spoileDao;
	@RequestMapping(value = "spoil", method = RequestMethod.GET)
	public String spoil(ModelMap model) {
		model.put("spoils", new Spoil());
		model.put("spoil", spoileDao.getall());
		return "spoil";

	}
	@RequestMapping(value = "spoil.htm", params = "bntInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute(value = "spoil") Spoil sp) {
		Date d=sp.getDaytime();
		sp.setDaytime(d);
		spoileDao.insert(sp);
		model.put("spoils", sp);
		model.put("spoil", spoileDao.getall());
		return "home";
	}
}
