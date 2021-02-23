package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Category")
public class Category {
	@Id
	@Column(name = "CategoryID")
	private String categoryID;
	@Column(name = "Name")
	private String name;
	@Column(name = "Note")
	private String note;
	@OneToMany(mappedBy = "category", fetch = FetchType.EAGER)
	private Collection<Product> products;
	public Category() {
		// TODO Auto-generated constructor stub
	}
	public Category(String categoryID, String name, String note, Collection<Product> products) {
		super();
		this.categoryID = categoryID;
		this.name = name;
		this.note = note;
		this.products = products;
	}
	public String getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(String categoryID) {
		this.categoryID = categoryID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public Collection<Product> getProducts() {
		return products;
	}
	public void setProducts(Collection<Product> products) {
		this.products = products;
	}
	
	
}
