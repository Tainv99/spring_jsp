package poly.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import poly.dao.AuthorDao;
import poly.entity.Author;
@Service
@Qualifier("AuthorService")
public class AuthorServiceImp implements AuthorService{
	@Autowired
	AuthorDao authordao;
	@Override
	public ArrayList<Author> getall() {
		// TODO Auto-generated method stub
		return authordao.getall();
	}
	@Override
	public Author findByID(String id) {
		// TODO Auto-generated method stub
		return authordao.findByID(id);
	}
	@Override
	public boolean insert(Author au) {
		// TODO Auto-generated method stub
		return authordao.insert(au);
	}
	@Override
	public boolean delete(Author au) {
		// TODO Auto-generated method stub
		return authordao.delete(au);
	}
	@Override
	public ArrayList<Author> countauthor() {
		// TODO Auto-generated method stub
		return authordao.countauthor();
	}
	@Override
	public Author update(Author au) {
		// TODO Auto-generated method stub
		return authordao.update(au);
	}

}
