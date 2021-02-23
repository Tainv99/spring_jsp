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

import poly.entity.Author;
import poly.entity.Category;
import poly.service.AuthorService;
import poly.service.CategoryService;

@Controller
@RequestMapping("/viewauthor")
public class ViewAuthorController {
	@Autowired
	AuthorService authorservice;
	@Autowired
	CategoryService categoryservice;
	@RequestMapping(value="/{id}.htm", method=RequestMethod.GET)
	public String viewauthor(ModelMap model, @PathVariable(value = "id") String id, HttpSession session) {
		Author author = authorservice.findByID(id);
		session.setAttribute("viewauthor", author);
		model.put("author", author);
		model.put("products", author.getProducts());
		return"viewauthor";
	}
	
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
}
