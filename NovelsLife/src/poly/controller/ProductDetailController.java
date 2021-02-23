package poly.controller;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Product;
import poly.entity.ProductDetail;
import poly.service.ProductDetailService;
import poly.service.ProductService;

@Controller
@RequestMapping()
public class ProductDetailController {
	@Autowired
	ProductDetailService productdetailservice;
	@Autowired
	ProductService productservice;
	@Autowired
	SessionFactory sessionFactory;
	@RequestMapping(value = "productdetail.htm", method = RequestMethod.GET)
	public String productdetail(ModelMap model,ProductDetail pddt) {
		model.put("productdetails", new ProductDetail());
		model.put("productdetail", productdetailservice.getall());
		return "productdetails";
	}
	@RequestMapping(value ="productdetail.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute(value = "productdetail") ProductDetail pddt) {
		productdetailservice.insert(pddt);
		model.put("productdetails", new ProductDetail());
		model.put("productdetail",productdetailservice.getall());
		return"productdetails";
	}
	@RequestMapping(value ="productdetail.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute(value = "productdetail") ProductDetail pddt) {
		productdetailservice.update(pddt);
		model.put("productdetails", new ProductDetail());
		model.put("productdetail",productdetailservice.getall());
		return"productdetails";
	}
	@RequestMapping(value ="productdetail.htm",params = "btnDelete", method = RequestMethod.POST)
	public String delete(ModelMap model, @ModelAttribute(value = "productdetail") ProductDetail pddt) {
		productdetailservice.delete(pddt);
		model.put("productdetails", new ProductDetail());
		model.put("productdetail",productdetailservice.getall());
		return"productdetails";
	}
	
	@ModelAttribute("product")
	public List<Product> getProduct(){
		List<Product> list=productservice.getall();
		return list;
	}
	
}
