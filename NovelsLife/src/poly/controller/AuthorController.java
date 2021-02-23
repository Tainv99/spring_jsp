package poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Author;
import poly.entity.Category;
import poly.entity.Product;
import poly.service.AuthorService;
import poly.service.CategoryService;
import poly.service.ProductService;

@Controller
@RequestMapping()
public class AuthorController {
	@Autowired
	AuthorService authorservice;
	@Autowired
	CategoryService categoryservice;
	@Autowired
	ProductService prouctservice;
	@Autowired
	SessionFactory sessionFactory;

	@RequestMapping(value = "author.htm", method = RequestMethod.GET)
	public String author(ModelMap model,Author au) {
		model.put("authors", new Author());
		model.put("list", au.getName());
		model.put("author", authorservice.getall());
		return "authors";
	}

	@RequestMapping(value ="author.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute(value = "author") Author au) {
		authorservice.insert(au);
		model.put("authors", new Author());
		model.put("author",authorservice.getall());
		return"authors";
	}
	@RequestMapping(value = "editAuthor/{id}.htm", method = RequestMethod.GET)
	public String edit(ModelMap model,HttpSession session ,@PathVariable(value = "id") String id) {
		model.put("authors", authorservice.findByID(id));
		model.put("author",authorservice.getall());
		return"authors";
	}
	@RequestMapping(value ="author.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute(value = "author") Author au) {
		authorservice.update(au);
		model.put("authors", new Author());
		model.put("author",authorservice.getall());
		return"authors";
	}
	@RequestMapping(value ="author.htm",params = "btnDelete", method = RequestMethod.POST)
	public String delete(ModelMap model, @ModelAttribute(value = "author") Author au) {
		authorservice.delete(au);
		model.put("authors", new Author());
		model.put("author",authorservice.getall());
		return"authors";
	}
	
	
	@RequestMapping(value = "count.htm", method = RequestMethod.GET)
	public String countauthor(ModelMap model,Author au) {
		model.put("products", new Product());
		model.put("product", prouctservice.getall());
		model.put("countauthor",authorservice.countauthor());
		model.put("countcategory",categoryservice.countcategory());
		model.put("countproduct",prouctservice.countproduct());
		return "countauthors";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
	@ModelAttribute("products")
	public List<Product> getProduct() {
		List<Product> list1 = prouctservice.getall();
		return list1;
	}
}
