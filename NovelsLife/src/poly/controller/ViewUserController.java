package poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Category;
import poly.entity.Users;
import poly.service.CategoryService;
import poly.service.UserService;

@Controller
@RequestMapping("/viewuser")
public class ViewUserController {
	@Autowired
	UserService userservice;
	@Autowired
	CategoryService categoryservice;
	@RequestMapping(value="/{id}.htm", method=RequestMethod.GET)
	public String viewuser(ModelMap model, @PathVariable(value = "id") String id, HttpSession session) {
		Users user = userservice.findByID(id);
		session.setAttribute("viewuser", user);
		model.put("users", user);
		return"viewuser";
	}
	@RequestMapping(value ="/{id}.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String updateuser(ModelMap model,@PathVariable(value = "id") String id, HttpSession session, @ModelAttribute(value = "user") Users us) {
		userservice.update(us);
		model.put("users", new Users());
		model.put("user",userservice.getall());
		return"home";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
	
}
