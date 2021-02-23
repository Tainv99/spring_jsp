package poly.controller;



import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Category;
import poly.entity.Users;
import poly.service.CategoryService;
import poly.service.UserService;



@Controller
@RequestMapping()
public class UserController {
	@Autowired
	UserService userservice;
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	CategoryService categoryservice;
	
	@RequestMapping(value = "user.htm", method = RequestMethod.GET)
	public String getalluser(ModelMap model) {
		model.put("users", new Users());
		model.put("user", userservice.getall());
		return "users";
	}
	@RequestMapping(value ="user.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insertuser(ModelMap model, @ModelAttribute(value = "user") Users us) {
		userservice.insert(us);
		model.put("users", new Users());
		model.put("user",userservice.getall());
		return"users";
	}
	@RequestMapping(value ="user.htm",params = "btnDelete", method = RequestMethod.POST)
	public String deleteuser(ModelMap model, @ModelAttribute(value = "user") Users us) {
		userservice.delete(us);
		model.put("users", new Users());
		model.put("user",userservice.getall());
		return"users";
	}
	@RequestMapping(value ="user.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String updateuser(ModelMap model, @ModelAttribute(value = "user") Users us) {
		userservice.update(us);
		model.put("users", new Users());
		model.put("user",userservice.getall());
		return"users";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
}
