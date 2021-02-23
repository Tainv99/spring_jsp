package poly.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="Maxim")
public class Maxim {
	@Id
	@Column(name = "MaximID")
	private String maximID;
	@Column(name = "Content")
	private String content;
	@OneToMany(mappedBy = "author", fetch = FetchType.EAGER)
	private Collection<Product> products;

	public Maxim() {
	super();
		// TODO Auto-generated constructor stub
	}

	public Maxim(String maximID, String content, Collection<Product> products) {
		super();
		this.maximID = maximID;
		this.content = content;
		this.products = products;
	}

	public String getMaximID() {
		return maximID;
	}

	public void setMaximID(String maximID) {
		this.maximID = maximID;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}



	
	
	
}
