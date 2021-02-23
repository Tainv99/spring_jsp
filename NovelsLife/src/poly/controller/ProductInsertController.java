package poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
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
public class ProductInsertController {
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
	
	@RequestMapping(value = "/insertpd.htm", method = RequestMethod.GET)
	public String register(ModelMap model, HttpSession httpsession) {
		model.put("products", new Product());
		httpsession.setAttribute("action", "insertcm.htm");
		return "insertpd";
	}
	@RequestMapping(value ="/insertcm.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insertStaff(ModelMap model, @ModelAttribute(value = "products") Product pd,BindingResult result) {
		try {
				if(pd.getId()!=null) {
					model.addAttribute("exid", "trung id!");
				}else {
				productservice.insert(pd);
				model.put("product", new Product());
				model.addAttribute("message", "Đăng ký thành công");
				}
		} catch (Exception e) {
			model.addAttribute("message", "Đăng ký thất bại");
		}
		return "insertpd";
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
