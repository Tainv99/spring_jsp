package poly.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import poly.entity.Users;
import poly.service.UserService;

@Controller
@RequestMapping()
public class RegisterController {
	@Autowired
	UserService userservice;
	
	@RequestMapping(value = "/register.htm", method = RequestMethod.GET)
	public String register(ModelMap model, HttpSession httpsession) {
		model.put("users", new Users());
		httpsession.setAttribute("action", "insert.htm");
		return "register";
	}
	@RequestMapping(value ="/insert.htm",params = "btnInsert", method = RequestMethod.POST)
	public String insertStaff(ModelMap model, @ModelAttribute(value = "users") Users us,BindingResult result) {
		try {
			if(us.getUserID()!=null) {
				result.rejectValue("UserID", "users", "Trùng mã!");
				
			}if(us.getEmail().trim().length()==0){
				result.rejectValue("email", "users", "Vui lòng nhập email!");
			}
			if(us.getUserID().trim().length()==0) {
				result.rejectValue("UserID ", "users", "Vui lòng nhập tên đăng nhập!");
			}
			if(us.getPass().trim().length()==0) {
				result.rejectValue("pass", "users", "Vui lòng nhập password!");
			}
			else {
				userservice.insert(us);
				model.put("users", new Users());
				model.put("user",userservice.getall());	
				model.addAttribute("message", "Đăng ký thành công");
			}
		} catch (Exception e) {
			model.addAttribute("message", "Đăng ký thất bại");
		}
		return "register";
	}
	@RequestMapping(value = "/updateifuser.htm", method = RequestMethod.GET)
	public String updateifuser(ModelMap model, HttpSession httpsession) {
	
		return "updateuser";
	}
	@RequestMapping(value ="updateifuser.htm",params = "btnUpdate", method = RequestMethod.POST)
	public String updateuser(ModelMap model, @ModelAttribute(value = "user") Users us) {
		userservice.update(us);
		model.put("users", new Users());
		return"updateuser";
	}
}
