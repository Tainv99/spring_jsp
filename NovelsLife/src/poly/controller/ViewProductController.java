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
import poly.entity.Product;
import poly.service.CategoryService;

import poly.service.ProductService;

@Controller
@RequestMapping("/viewproduct")
public class ViewProductController {
	@Autowired
	ProductService productservice;
	@Autowired
	CategoryService categoryservice;
	
	@RequestMapping(value="/{id}.htm", method=RequestMethod.GET)
	public String viewproduct(ModelMap model, @PathVariable(value = "id") String id, HttpSession session) {
		Product product = productservice.findByID(id);
		int viewCount = product.getViews() == null ? 1 : product.getViews() + 1;
		product.setViews(viewCount);
		productservice.update(product);
		session.setAttribute("viewproduct", product);
		model.put("product", product);
		model.put("productdetails", product.getProductdetail());
		return"viewproduct";
	}
//	@RequestMapping(value="/{id}.htm",params = "btnFavorite", method=RequestMethod.POST)
//	public String insertfavorite(@PathVariable(value = "id") String id) {
//		Product product = productservice.findByID(id);
//		String productid=product.getId();
//		return"viewproduct";
//	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
}
