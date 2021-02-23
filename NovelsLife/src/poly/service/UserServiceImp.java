package poly.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import poly.dao.UserDao;
import poly.entity.Users;
@Service
@Qualifier("UserService")
public class UserServiceImp implements UserService{
	@Autowired
	UserDao userdao;
	
	
	@Override
	public ArrayList<Users> getall() {
		// TODO Auto-generated method stub
		return userdao.getall();
	}


	@Override
	public Users findByID(String id) {
		// TODO Auto-generated method stub
		return userdao.findByID(id);
	}


	@Override
	public boolean insert(Users us) {
		// TODO Auto-generated method stub
		return userdao.insert(us);
	}


	@Override
	public boolean delete(Users us) {
		// TODO Auto-generated method stub
		return userdao.delete(us);
	}


	@Override
	public boolean update(Users us) {
		// TODO Auto-generated method stub
		return userdao.update(us);
	}

}
