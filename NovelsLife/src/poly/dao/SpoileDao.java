package poly.dao;

import java.util.ArrayList;


import poly.entity.Spoil;

public interface SpoileDao {
	public boolean insert(Spoil sp);
	public ArrayList<Spoil> getall();
}
