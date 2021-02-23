package poly.dao;

import java.util.ArrayList;


import poly.entity.Users;



public interface UserDao {
	public ArrayList<Users> getall();
	public Users findByID(String id);
	public boolean insert(Users us);
	public boolean delete(Users us);
	public boolean update(Users us);
}
