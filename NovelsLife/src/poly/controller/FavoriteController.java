package poly.controller;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping()
public class FavoriteController {
	@Autowired
	SessionFactory sessionFactory;

	@RequestMapping(value = "favorite.htm", method = RequestMethod.GET)
	public String favorite() {
		return "favorite";
	}
}
