package poly.entity;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Comic")
public class Product implements Serializable{
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "comicid")
	private String id;
	@Column(name = "Name")
	private String name;
	@Column(name = "Thumbnail")
	private String thumbnail;
	@Column(name = "Content")
	private String content;
	@Column(name = "views")
	private Integer views;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "AuthorID")
	private Author author;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "CategoryID")
	private Category category;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name = "maximID")
	private Maxim maxim;
	
	@OneToMany(mappedBy = "product", fetch = FetchType.EAGER)
	private Collection<ProductDetail> productdetail;
	
	
	public Product() {
		// TODO Auto-generated constructor stub
	}
	public Product(String id, String name, String thumbnail, String content, Integer views, Author author,
			Category category, Maxim maxim, Collection<ProductDetail> productdetail) {
		super();
		this.id = id;
		this.name = name;
		this.thumbnail = thumbnail;
		this.content = content;
		this.views = views;
		this.author = author;
		this.category = category;
		this.maxim = maxim;
		this.productdetail = productdetail;
		
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Maxim getMaxim() {
		return maxim;
	}
	public void setMaxim(Maxim maxim) {
		this.maxim = maxim;
	}
	public Collection<ProductDetail> getProductdetail() {
		return productdetail;
	}
	public void setProductdetail(Collection<ProductDetail> productdetail) {
		this.productdetail = productdetail;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((author == null) ? 0 : author.hashCode());
		result = prime * result + ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((maxim == null) ? 0 : maxim.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((productdetail == null) ? 0 : productdetail.hashCode());
		result = prime * result + ((thumbnail == null) ? 0 : thumbnail.hashCode());
		result = prime * result + ((views == null) ? 0 : views.hashCode());
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
		Product other = (Product) obj;
		if (author == null) {
			if (other.author != null)
				return false;
		} else if (!author.equals(other.author))
			return false;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (maxim == null) {
			if (other.maxim != null)
				return false;
		} else if (!maxim.equals(other.maxim))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (productdetail == null) {
			if (other.productdetail != null)
				return false;
		} else if (!productdetail.equals(other.productdetail))
			return false;
		if (thumbnail == null) {
			if (other.thumbnail != null)
				return false;
		} else if (!thumbnail.equals(other.thumbnail))
			return false;
		if (views == null) {
			if (other.views != null)
				return false;
		} else if (!views.equals(other.views))
			return false;
		return true;
	}
	
	
}
