package poly.service;

import java.util.ArrayList;


import poly.entity.Users;

public interface UserService {
	public ArrayList<Users> getall();
	public Users findByID(String id);
	public boolean insert(Users us);
	public boolean delete(Users us);
	public boolean update(Users us);
}
