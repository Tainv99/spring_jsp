package poly.controller;
import java.util.List;

import javax.servlet.ServletContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import poly.entity.Author;
import poly.entity.Category;
import poly.entity.Maxim;
import poly.entity.Product;
import poly.service.AuthorService;
import poly.service.CategoryService;
import poly.service.MaximService;
import poly.service.ProductService;

@Controller
@RequestMapping()
public class ProductController {
	@Autowired
	ProductService productservice;
	@Autowired
	CategoryService categoryservice;
	@Autowired
	AuthorService authorservice;
	@Autowired
	MaximService maximservice;
	@Autowired
	SessionFactory sessionFactory;

	@RequestMapping(value = "product.htm", method = RequestMethod.GET)
	public String product(ModelMap model, Product pd) {
		model.put("products", new Product());
		model.put("product", productservice.getall());
//		List<Category> list = categoryservice.getall();
//		Map<String, String> mapCategory = new HashMap<String, String>();
//		for (Category category : list) {
//			mapCategory.put(category.getCategoryID(), category.getName());
//		}
//		Map<String, String> mapCategory = list.stream().collect(Collectors.toMap(Category::getCategoryID, Category::getName));
//		model.put("category", list);
		return "products";
	}
	@Autowired
	ServletContext context;
	@RequestMapping(value ="product.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute(value = "product") Product pd) {
		productservice.insert(pd);
		model.put("products", new Product());
		model.put("product",productservice.getall());
		return"products";
	}
	@RequestMapping(value ="product.htm",params = "btnDelete", method = RequestMethod.POST)
	public String delete(ModelMap model, @ModelAttribute(value = "product") Product pd) {
		productservice.delete(pd);
		model.put("products", new Product());
		model.put("product",productservice.getall());
		
		return"products";
	}
	@RequestMapping(value ="product.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String updateproduct(ModelMap model, @ModelAttribute(value = "product") Product pd) {
		productservice.update(pd);
		model.put("products", new Product());
		model.put("product",productservice.getall());
		
		return"products";
	}
	@RequestMapping(value="sort.htm",method=RequestMethod.GET)
	public String sort(ModelMap model,Product pd) {
		model.put("products", new Product());
		model.put("product", productservice.sort());
		return "sort";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
	@ModelAttribute("author")
	public List<Author> getAuthor(){
		List<Author> list1=authorservice.getall();
		return list1;
	}
	@ModelAttribute("maxim")
	public List<Maxim> getMaxim(){
		List<Maxim> list2=maximservice.getall();
		return list2;
	}
	
}
