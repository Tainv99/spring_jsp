package poly.controller;



import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.dao.SpoileDao;
import poly.entity.Category;
import poly.entity.Spoil;
import poly.entity.Users;
import poly.service.CategoryService;



@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;
	@Autowired
	CategoryService categoryservice;
	@Autowired
	SpoileDao spoileDao;
	@RequestMapping("home")
	public String home() {
		return "home";
	}
	@RequestMapping("login")
	public String login(ModelMap model) {
		model.addAttribute("Users", new Users());
		return "login";
	}
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String check(ModelMap model, @ModelAttribute("Users") Users users ,HttpSession httpsession) {
		Session session = factory.getCurrentSession();
		try {
			Users finduser = (Users) session.get(Users.class, users.getUserID());
			if (users.getPass().equals(finduser.getPass())) {
				httpsession.setAttribute("user", finduser);
				httpsession.removeAttribute("btnlogin");
				return "home";
			} else {
				model.addAttribute("message", "Sai mật khẩu !");
				
			}
		} catch (Exception e) {
			model.addAttribute("message", "Tên tài khoản hoặc mật khẩu không đúng !");
		}
		return "login";
	}
	@RequestMapping(value="logout.htm",method=RequestMethod.GET)
	public String loguot(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("logout");
		return "redirect:home.htm";
	}
	@ModelAttribute("category")
	public List<Category> getCategory() {
		List<Category> list = categoryservice.getall();
		return list;
	}
	@ModelAttribute("spoil")
	public List<Spoil> getSpoil() {
		List<Spoil> list1 = spoileDao.getall();
		return list1;
	}
	
}
