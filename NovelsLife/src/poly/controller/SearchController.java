package poly.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.dao.SearchDao;
import poly.entity.Category;
import poly.entity.Product;
import poly.service.CategoryService;

@Controller
@RequestMapping
public class SearchController {
	@Autowired
	SearchDao searchdao;
	@Autowired
	CategoryService categoryservice;
	@Autowired
	public SearchDao getSearchdao() {
		return searchdao;
	}
	@Autowired
	public void setSearchdao(SearchDao searchdao) {
		this.searchdao = searchdao;
	}
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping("/search.htm")
	public String searchproduct(@ModelAttribute("product") Product product,ModelMap model,HttpSession httpsession) {
		List<Product> list=searchdao.search(product.getName());
		if(list==null) {
			model.put("errors", "Không tìm thấy kết quả!");
			return "errors";
		}else {
			model.put("listproduct", list);
			return "searchproduct";
		}
		
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
}
