package poly.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.ProductDetail;
import poly.service.ProductDetailService;

@Controller
@RequestMapping("/viewproductdetail")
public class ViewProductDetailController {
	@Autowired
	ProductDetailService productdetailservice;
	@RequestMapping(value="/{id}.htm", method=RequestMethod.GET)
	public String viewproductdetail(ModelMap model, @PathVariable(value = "id") String id, HttpSession session) {
		ProductDetail productdt = productdetailservice.findByID(id);
		session.setAttribute("viewproductdetail", productdt);
		model.put("productdetail", productdt);
		return"viewproductdetail";
	}
}
