package poly.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import poly.dao.CategoryDao;
import poly.entity.Category;
@Service
@Qualifier("CategoryService")
public class CategoryServiceImp implements CategoryService{
	@Autowired
	CategoryDao categorydao;
	
	@Override
	public ArrayList<Category> getall() {
		// TODO Auto-generated method stub
		return categorydao.getall();
	}

	@Override
	public boolean delete(Category ca) {
		// TODO Auto-generated method stub
		return categorydao.delete(ca);
	}

	@Override
	public boolean insert(Category ca) {
		// TODO Auto-generated method stub
		return categorydao.insert(ca);
	}

	@Override
	public Category findByID(String id) {
		// TODO Auto-generated method stub
		return categorydao.findByID(id);
	}

	@Override
	public ArrayList<Category> countcategory() {
		// TODO Auto-generated method stub
		return categorydao.countcategory();
	}

	@Override
	public Category update(Category ca) {
		// TODO Auto-generated method stub
		return categorydao.update(ca);
	}

	@Override
	public boolean update1(Category ca) {
		// TODO Auto-generated method stub
		return categorydao.update1(ca);
	}

}
