package poly.controller;




import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
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
@RequestMapping()
public class CategoryController {
	@Autowired
	CategoryService categoryservice;
	@Autowired
	SessionFactory sessionFactory;

	@RequestMapping(value = "category.htm", method = RequestMethod.GET)
	public String category(ModelMap model, Category ca ) {
		model.put("categorys", new Category());
		model.put("category", categoryservice.getall());
		return "categorys";
	}
	@RequestMapping(value ="category.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute(value = "category") Category ca) {
		categoryservice.insert(ca);
		model.put("categorys", new Category());
		model.put("category",categoryservice.getall());
		return"categorys";
	}
	@RequestMapping(value = "editCategory/{id}.htm", method = RequestMethod.GET)
	public String edit(ModelMap model,HttpSession session ,@PathVariable(value = "id") String id) {
		model.put("categorys", categoryservice.findByID(id));
		model.put("category",categoryservice.getall());
		return"categorys";
	}
	@RequestMapping(value ="category.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute(value = "category") Category ca) {
		categoryservice.update1(ca);
		model.put("categorys", new Category());
		model.put("category",categoryservice.getall());
		return"categorys";
	}
	@RequestMapping(value ="category.htm",params = "btnDelete", method = RequestMethod.POST)
	public String delete(ModelMap model, @ModelAttribute(value = "category") Category ca) {
		categoryservice.delete(ca);
		model.put("categorys", new Category());
		model.put("category",categoryservice.getall());
		return"categorys";
	}
	
}
