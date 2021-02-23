package poly.entity;

import java.util.Collection;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Author")
public class Author {
	@Id
	@Column(name = "AuthorID")
	private String authorID;
	@Column(name = "Name")
	private String name;
	@Column(name = "Age")
	private Integer age;
	@Column(name = "Address")
	private String address;
	@Column(name = "AuthorDetail")
	private String authorDetail;
	@OneToMany(mappedBy = "author", fetch = FetchType.EAGER)
	private Collection<Product> products;

	public Author() {
		// TODO Auto-generated constructor stub
	}

	public Author(String authorID, String name, Integer age, String address, String authorDetail,
			Set<Product> products) {
		super();
		this.authorID = authorID;
		this.name = name;
		this.age = age;
		this.address = address;
		this.authorDetail = authorDetail;
		this.products = products;
	}

	public String getAuthorID() {
		return authorID;
	}

	public void setAuthorID(String authorID) {
		this.authorID = authorID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAuthorDetail() {
		return authorDetail;
	}

	public void setAuthorDetail(String authorDetail) {
		this.authorDetail = authorDetail;
	}

	public Collection<Product> getProducts() {
		return products;
	}

	public void setProducts(Collection<Product> products) {
		this.products = products;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((authorID == null) ? 0 : authorID.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Author other = (Author) obj;
		if (authorID == null) {
			if (other.authorID != null)
				return false;
		} else if (!authorID.equals(other.authorID))
			return false;
		return true;
	}

}
