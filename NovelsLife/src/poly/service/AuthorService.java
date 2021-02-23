package poly.service;

import java.util.ArrayList;

import poly.entity.Author;



public interface AuthorService {
	public boolean insert(Author au);
	public boolean delete(Author au);
	 public Author findByID(String id);
	public ArrayList<Author> getall();
	public ArrayList<Author> countauthor();
	public Author update(Author au);
}
