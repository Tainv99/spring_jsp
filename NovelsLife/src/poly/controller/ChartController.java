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
import poly.entity.Product;
import poly.service.CategoryService;
import poly.service.ProductService;

@Controller
public class ChartController {
	@Autowired
	ProductService productservice;
	@Autowired
	CategoryService categoryservice;
	@Autowired
	SessionFactory sessionFactory;
	
	
	@RequestMapping(value = "/hightchart.htm", method = RequestMethod.GET)
	public String hightchart(ModelMap model,Product pd) {
		model.put("products", new Product());
		model.put("product", productservice.getall());
		return "hightchart";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
}
