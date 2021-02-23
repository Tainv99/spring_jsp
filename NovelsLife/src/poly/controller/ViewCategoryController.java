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
import poly.service.CategoryService;

@Controller
@RequestMapping("/viewcategory")
public class ViewCategoryController {
	@Autowired
	CategoryService categoryservice;
	@RequestMapping(value="/{id}.htm", method=RequestMethod.GET)
	public String viewcategorydetail(ModelMap model, @PathVariable(value = "id") String id, HttpSession session) {
		Category category = categoryservice.findByID(id);
		session.setAttribute("viewcategory", category);
		model.put("category", category);
		model.put("products", category.getProducts());
		return"viewcategory";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
	
}
